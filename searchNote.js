const alfy = require("alfy");
const api = require("./api");
const config = require("./searchConfig.json");
const Evernote = require("evernote");
const AuthConfig = require("./authConfig.json");
const fs = require('fs');
const _ = require("lodash");
const LogManager = require('./logManager');

const {
  ab2str,
  decideSearchOrder,
  fetchTagGuid,
  handleInput,
  replaceAll,
  getTimeString,
  getHtmlMetaData,
  insertResource,
} = require('./utils');

if (fs.existsSync("./Caching")) {
  alfy.output([
    {
      title: "Please wait until the caching process is finished...",
      arg: "error",
      autocomplete: "",
      subtitle: `This work could take several minutes.`,
    },
  ]);

  return;
}

const htmlCacheLog = require('./search_content/htmlCacheLog.json');

if (AuthConfig.oauthToken === -1) {
  alfy.output([{
    title : "Authentication has not progressed.",
    subtitle: 'Please get an API token by reference to README.md',
    autocomplete: '',
    arg: 'error',
  }]);
  return;
}

if (!config) {
  console.log("Can't find config file");
  return;
}

let [ execPath, input, option ] = process.argv.slice(1);
input = replaceAll(handleInput(input), "\\\"", "\"").normalize().trim();

let command = 'ens';
let trashBinFlag = false,
  tagSearchFlag = false,
  reminderFlag = false;

switch (option) {
  case "--intitle":
    input = `intitle:* "${input}"`;
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
}

const isTagSearching = /tag:\"(?<tagName>.*)\" (?<query>.*)/;

let tagGuids = [];

if (isTagSearching.test(input)) {
  tagSearchFlag = true;

  const tagName = input.match(isTagSearching).groups.tagName;
  input = input.match(isTagSearching).groups.query;

  tagGuids = await api.listTags({
    callback: _.partial(fetchTagGuid, tagName)
  });
}

const filter = new Evernote.NoteStore.NoteFilter({
  order: decideSearchOrder(config.search_order),
  ascending: false,
  words: !input ? "" : input,
  inactive: trashBinFlag,
  tagGuids,
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
        : AuthConfig.userShardId;

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

      const quicklookurl = AuthConfig.initialCaching === "true"
        ? `${execDir}search_content/${note.guid}.html`
        : `${execDir}initialCachingDescription.html`;

      const latestUpdated = getTimeString(note.updated);

      const notelink = `evernote:///view/${AuthConfig.userId}/${shardId}/${note.guid}/${note.guid}/`;

      if(config.using_preview && AuthConfig.initialCaching === "true") {
        if (!htmlCacheLog[note.guid] || htmlCacheLog[note.guid] < latestUpdated) {
          updateCacheLogFlag = true;
          htmlCacheLog[note.guid] = latestUpdated;

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

            fs.appendFileSync(
              `search_content/_${resourceHash}.${ext}`,
              Buffer.from(resourceData)
            );
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

      return {
        title: note.title,
        arg: trashBinFlag ? quicklookurl : notelink + " " + note.title,
        autocomplete: note.title,
        subtitle,
        icon: {
          path: "./icon/searchIcon.png",
        },
        mods: {
          shift: {
            subtitle: "Press shift button shortly to preview note",
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
      };
    })
  );

  if(result.length === 0) {
    result.push({
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
      title: `${searchedNotes.length} notes were found.`,
      arg: alfy.input,
      autocomplete: `${searchedNotes.length} notes were found.`,
      subtitle: `Press Enter on this item to open Evernote with "${alfy.input}"`,
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