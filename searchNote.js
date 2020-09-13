const alfy = require("alfy");
const config = require("./searchConfig.json");
const Evernote = require("evernote");
const LogManager = require("./logManager");
const fs = require("fs");
const _ = require("lodash");
const isTravis = require('is-travis');
require('./checkApiKey');
!isTravis && require('dotenv').config()
const api = require("./api")(process.env.oauthToken);

const {
  ab2str,
  decideSearchOrder,
  fetchTagGuid,
  fetchNotebookGuid,
  handleInput,
  replaceAll,
  getTimeString,
  getHtmlMetaData,
  insertResource,
} = require('./utils');

require('./checkIsCaching');

const htmlCacheLog = require('./search_content/htmlCacheLog.json');
const thumbNailImageFilePathes = require('./search_content/thumbNailPath.json');

let [ execPath, input, option ] = process.argv.slice(1);
input = replaceAll(handleInput(input), "\\\"", "\"").normalize().trim();

let command = 'ens';
let trashBinFlag = false,
  reminderFlag = false,
  appendNoteFlag = false;

switch (option) {
  case "--intitle":
    input = `intitle:"${input}"`;
    command = "eni";
    break;

  case "--reminder":
    input = `reminderTime:* -reminderDoneTime:*"${input}"`;
    reminderFlag = true;
    command = "enr";
    break;

  case "--sourceurl":
    input = `sourceurl:* "${input}"`;
    command = "enu";
    break;

  case "--notebook":
    input = `notebook: "${input}"`;
    command = "enb";
    break;

  case "--fileExtension":
    const [ext, ...query] = input.split(" ");
    input = `*.${ext} ${query.join(" ")}`;
    command = "enf";
    break;

  case "--todo":
    input = `todo:*"${input}"`;
    command = "entodo";
    break;

  case "--trash":
    trashBinFlag = true;
    command = "enn";
    break;

  case "--append":
    appendNoteFlag = true;
    break;
}

const isTagSearching = /tag:\"(?<tagName>.*)\"( )?(?<query>.*)/;

const isNotebookSearching = /notebook:\"(?<notebookName>.*)\"( )?(?<query>.*)/;

let tagGuids = [];
let notebookGuid;

if (isTagSearching.test(input)) {
  const tagName = input.match(isTagSearching).groups.tagName;
  input = input.match(isTagSearching).groups.query || "";

  tagGuids = await api.listTags({
    callback: _.partial(fetchTagGuid, tagName)
  });
}

else if (isNotebookSearching.test(input)) {
  const notebookName = input.match(isNotebookSearching).groups.notebookName;
  input = input.match(isNotebookSearching).groups.query || "";

  notebookGuid = await api.listNotebooks({
    callback: _.partial(fetchNotebookGuid, notebookName)
  });
}

const filter = new Evernote.NoteStore.NoteFilter({
  order: decideSearchOrder(config.search_order),
  ascending: false,
  words: !input ? "" : input,
  inactive: trashBinFlag,
  tagGuids,
  notebookGuid,
});

const spec = new Evernote.NoteStore.NotesMetadataResultSpec(
  config.search_include_options
);

const getSubtitle = async (type, searchedNotes, selectedNote) => {
  switch (type) {
    case "source_url": {
      const url = selectedNote.attributes.sourceURL;
      return url;
    }
    case "created_time": {
      const createdTime = new Date(selectedNote.created).toLocaleString();
      return `Created in ${createdTime}`;
    }
    case "last_edited_time":{
      const updatedTime = new Date(selectedNote.updated).toLocaleString();
      return `Last edited in ${updatedTime}`;
    }
    case "tags": {
      return await api.getNoteTagNames(searchedNotes.length, selectedNote.guid);
    }
    case "content_length": {
      const contentLength = selectedNote.contentLength;
      return `Length: ${contentLength}`;
    }
    case "notebook": {
      return await api.getNotebookName(
        searchedNotes.length,
        selectedNote.notebookGuid
      );
    }
    default:
      console.log("config file error, set the proper search_subtitle value");
      break;
  }
}

let updateCacheLogFlag = false;

const getResult = async (searchedNotes) => {
  const linkedNotebooks = await api.listLinkedNotebooks();
  const shardIdMap = new Map;
  const execDir = execPath.split("searchNote.js")[0];

  for (const linkedNotebook of linkedNotebooks) {
    shardIdMap.set(linkedNotebook.guid, linkedNotebook.shardId);
  }

  const result = await Promise.all(
    _.map(searchedNotes, async (note) => {
      const shardId = shardIdMap.get(note.notebookGuid)
        ? shardIdMap.get(note.notebookGuid)
        : process.env.userShardId;

      let subtitle;

      if (reminderFlag) {
        subtitle = `Reminder Date: ${new Date(
          note.attributes.reminderTime
        ).toLocaleString()}`;
      } else {
        subtitle = await getSubtitle(
          option === "--sourceurl" ? "source_url" : config.search_subtitle,
          searchedNotes,
          note
        );
      }

      const quicklookurl = process.env.initialCaching === "true"
        ? `${execDir}search_content/${note.guid}.html`
        : `${execDir}initialCachingDescription.html`;

      const latestUpdated = getTimeString(note.updated);

      const notelink = `evernote:///view/${process.env.userId}/${shardId}/${note.guid}/${note.guid}/`;

      if (config.using_preview && process.env.initialCaching === "true") {
        if (
          !htmlCacheLog[note.guid] ||
          htmlCacheLog[note.guid] < latestUpdated.toString()
        ) {

          updateCacheLogFlag = true;
          htmlCacheLog[note.guid] = latestUpdated.toString();

          const noteData = await api.getNoteWithResultSpec(note.guid, {
            includeContent: true,
            includeResourcesData: true,
            includeResourcesRecognition: true,
            includeResourcesAlternateData: true,
            includeSharedNotes: true,
            includeNoteAppDataValues: true,
            includeResourceAppDataValues: true,
            includeAccountLimits: true,
          });

          const noteResources = noteData.resources;

          _.map(noteResources, (resource) => {
            const resourceHash = ab2str(resource.data.bodyHash);
            // const resourceGuid = resource.guid;
            const resourceData = resource.data.body;
            const ext = resource.mime.split("/")[1];
            const resourcePath = `search_content/_${resourceHash}.${ext}`;

            switch (ext) {
              case "jpeg":
              case "jpg":
              case "png":
                thumbNailImageFilePathes[note.guid] = resourcePath;
                break;
            }

            fs.appendFileSync(resourcePath, Buffer.from(resourceData));
          });

          const noteContentHTML =
            getHtmlMetaData(note) + insertResource(noteData.content);

          fs.writeFileSync(
            `search_content/${note.guid}.html`,
            "\ufeff" + noteContentHTML,
            { encoding: "utf8" }
          );
        }
      }

      const sourceUrl = note.attributes.sourceURL
        ? note.attributes.sourceURL
        : "Source URL not exist";

      let arg = notelink;

      if (trashBinFlag) arg = quicklookurl;

      return {
        title: note.title,
        arg,
        autocomplete: note.title,
        subtitle,
        icon: {
          path: thumbNailImageFilePathes[note.guid]
            ? thumbNailImageFilePathes[note.guid]
            : "./icon/searchIcon.png",
        },
        mods: {
          shift: {
            subtitle: "Press shift button short to preview note",
          },
          fn: {
            subtitle: `Source URL: ${sourceUrl}`,
          },
        },
        quicklookurl,
        text: {
          copy: note.title,
          largetype: note.title,
        },
        variables: {
          notelink,
          noteTitle: note.title,
          noteUrl: sourceUrl,
        },
      };
    })
  );

  if(result.length === 0) {
    result.push({
      valid: true,
      title: "No search results found.",
      arg: "error",
      autocomplete: "No search results found.",
      subtitle: "There are no notes to display.",
      icon: {
        path: "./icon/warning.png",
      },
      text: {
        copy: "No search results found.",
        largetype: "No search results found.",
      },
    });
  }
  
  else {
    result.splice(0, 0, {
      valid: true,
      title: `${searchedNotes.length} notes were found.`,
      arg: input,
      autocomplete: `${searchedNotes.length} notes were found.`,
      subtitle: `Press Enter on this item to open Evernote with "${input}"`,
      text: {
        copy: `${searchedNotes.length} notes were found.`,
        largetype: `${searchedNotes.length} notes were found.`,
      },
    });
  }

  if(updateCacheLogFlag) {
    fs.writeFileSync(
      `./search_content/htmlCacheLog.json`,
      "\ufeff" + JSON.stringify(htmlCacheLog, null, 2),
      { encoding: "utf8" }
    );

    fs.writeFileSync(
      `./search_content/thumbNailPath.json`,
      "\ufeff" + JSON.stringify(thumbNailImageFilePathes, null, 2),
      { encoding: "utf8" }
    );
  }

  return result;
}

async function searchNote(notesMetadataList) {
  return await getResult(notesMetadataList.notes);
}

(async function () {
  alfy.output(await api.findNotesMetadata(
    filter,
    0,
    config.search_max_count,
    spec,
    {
      callback: searchNote,
    }
  ));

  LogManager.write(`${command} ${handleInput(alfy.input)}`);
})();