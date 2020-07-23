const alfy = require("alfy");
const api = require("./api");
const config = require("./config.json");
const Evernote = require("evernote");
const OAuth = require("./OAuth.json");
const fs = require('fs');
const _ = require("lodash");
const cacheLog = require('./search_content/CacheLog.json');
const LogManager = require('./logManager');

const {
  decideSearchOrder,
  handleInput,
  replaceAll,
  getTimeString,
} = require('./utils');

if (fs.existsSync("./Caching")) {
  fs.readdir('./search_content', (error, files) => { 
    alfy.output([{
      title : "Please wait until the caching process is finished...",
      arg: '',
      autocomplete: '',
      subtitle: `Caching note count: ${files.length}`,
    }], { 
      rerunInterval : 1
    });
  });

  return;
}

if (OAuth.oauthToken === -1) {
  alfy.output([{
    title : "OAuth not set up",
    subtitle: 'Please get an API token by reference to readme README.md',
    autocomplete: '',
    arg: '',
  }]);
  return;
}

if (!config) {
  console.log("can't find config file");
  return;
}

let [ execPath, input, option ] = process.argv.slice(1);

input = replaceAll(handleInput(input), "\\\"", "\"");
const execDir = execPath.split("searchNote.js")[0];

let command = 'ens';

switch (option) {
  case "--intitle":
    input = `intitle:* "${input}"`;
    command = 'eni';
    break;
  case "--reminder":
    input = `reminderTime:* -reminderDoneTime:* "${input}"`;
    command = 'enr';
    break;
  case "--sourceurl":
    input = `sourceurl:* "${input}"`;
    command = 'enu';
    break;
  case "--notebook":
    input = `notebook: "${input}"`;
    command = 'enb';
    break;
  case "--todo":
    input = `todo:*`;
    command = 'entodo';
    break;
}

let filter = new Evernote.NoteStore.NoteFilter({
  order: decideSearchOrder(config.search_order),
  ascending: false,
  words: input ? input : ""
});

var spec = new Evernote.NoteStore.NotesMetadataResultSpec(
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
  
  for (const linkedNotebook of linkedNotebooks) {
    shardIdMap.set(linkedNotebook.guid, linkedNotebook.shardId);
  }
  
  const result = await Promise.all(
    _.map(searchedNotes, async (note) => {
      const shardId = shardIdMap.get(note.notebookGuid) ? shardIdMap.get(note.notebookGuid) : OAuth.userShardId;

      const subtitle = await getSubtitle(
        option === "--sourceurl" ? "source_url" : config.search_subtitle,
        searchedNotes,
        note
      );

      const quicklookurl = `${execDir}search_content/${note.guid}.html`;
      const latestUpdated = getTimeString(note.updated);

      const notelink = `evernote:///view/${OAuth.userId}/${shardId}/${note.guid}/${note.guid}/`;

      if(!cacheLog[note.guid] || cacheLog[note.guid] < latestUpdated) {
        updateCacheLogFlag = true;
        cacheLog[note.guid] = latestUpdated;
        const noteContentHTML = await api.getNoteContent(0, note.guid);
        fs.writeFileSync(`search_content/${note.guid}.html`, '\ufeff' + noteContentHTML, { encoding: 'utf8' });
      }

      const sourceUrl = note.attributes.sourceURL ? note.attributes.sourceURL : "Source URL not exist";

      return {
        title: note.title,
        arg: notelink,
        autocomplete: note.title,
        subtitle,
        icon: {
          "path": "./icon/searchIcon.png"
        },
        mods: {
          shift: {
            "subtitle": "Press shift button shortly to preview note",
          },
          fn : {
            "subtitle" : `Source URL: ${sourceUrl}`
          }
        },
        quicklookurl
      };
    })
  );

  if(result.length == 0) {
    result.push({
      title: "No search results found.",
      arg: '',
      autocomplete: "No search results found.",
      subtitle: "There are no notes to display.",
      icon: {
        "path": "./icon/warning.png"
      },
    });
  }
  else {
    result.splice(0, 0, {
      title: `${searchedNotes.length} notes were found.`,
      arg: alfy.input,
      autocomplete: `${searchedNotes.length} notes were found.`,
      subtitle: `Press to open Evernote with that search term.`,
    });
  }

  if(updateCacheLogFlag) {
    fs.writeFileSync(`./search_content/CacheLog.json`, '\ufeff' + JSON.stringify(cacheLog, null, 2), { encoding: 'utf8' });
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