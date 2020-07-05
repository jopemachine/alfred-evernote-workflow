const alfy = require("alfy");
const api = require("./api");
const config = require("./config.json");
const Evernote = require("evernote");
const OAuth = require("./OAuth.json");
const _ = require("lodash");
const { decideSearchOrder } = require('./utils');

if (!OAuth) {
  console.log(
    "oauth file error, please create OAuth.json file referring README.md"
  );
  return;
}

if (!config) {
  console.log("can't find config file");
  return;
}

// order 0 : ?? (It seems that results are inconsistent)
// order 1 : Created
// order 2 : Updated
// order 3 : ??
// order 4 : Updated
// order 5 : ??
// order 6 : ?? (It seems that results are inconsistent)

let filter = new Evernote.NoteStore.NoteFilter({
  order: decideSearchOrder(config.search_order),
  ascending: false,
  words: alfy.input ? alfy.input : ""
});

var spec = new Evernote.NoteStore.NotesMetadataResultSpec(
  config.search_include_options
);

async function searchNote(notesMetadataList) {
  const searchedNotes = notesMetadataList.notes;

  let result;
  let subtitle = "";

  switch (config.search_subtitle) {
    case "created_time":
      result = _.map(searchedNotes, (note) => {
        const createdTime = new Date(note.created).toLocaleString();
        subtitle = `Created in ${createdTime}`;

        return {
          title: note.title,
          arg: note.title,
          valid: true,
          autocomplete: note.title,
          subtitle,
        };
      });
      break;

    case "last_edited_time":
      result = _.map(searchedNotes, (note) => {
        const updatedTime = new Date(note.updated).toLocaleString();
        subtitle = `Last edited in ${updatedTime}`;

        return {
          title: note.title,
          arg: note.title,
          valid: true,
          autocomplete: note.title,
          subtitle,
        };
      });
      break;

    case "content_length":
      result = _.map(searchedNotes, (note) => {
        const contentLength = note.contentLength;
        subtitle = `Length: ${contentLength}`;

        return {
          title: note.title,
          arg: note.title,
          valid: true,
          autocomplete: note.title,
          subtitle,
        };
      });
      break;

    case "notebook":
      result = await Promise.all(
        _.map(searchedNotes, async (note) => {

          subtitle = await api.getNotebookName(
            searchedNotes.length,
            note.notebookGuid
          );

          return {
            title: note.title,
            arg: note.title,
            valid: true,
            autocomplete: note.title,
            subtitle,
          };
        })
      );
      break;

    case "tags":
      result = await Promise.all(
        _.map(searchedNotes, async (note) => {
          subtitle = await api.getNoteTagNames(searchedNotes.length, note.guid);

          return {
            title: note.title,
            arg: note.title,
            valid: true,
            autocomplete: note.title,
            subtitle,
          };
        })
      );
      break;

    default:
      console.log("config file error, set the proper search_subtitle value");
      break;
  }

  return result;
}

(async function () {
  alfy.output(await api.findNotesMetadata(
    filter,
    config.search_max_count,
    spec,
    {
      callback: searchNote,
    }
  ));
})();