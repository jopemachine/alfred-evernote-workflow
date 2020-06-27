const alfy = require('alfy');
const Evernote = require("evernote");
const _ = require('lodash');
const OAuth = require('./OAuth.json');
const config = require('./config.json');

var authenticatedClient = new Evernote.Client({
  token: OAuth.oauthToken,
  sandbox: false,
  china: false,
});

const noteStore = authenticatedClient.getNoteStore();

var filter = new Evernote.NoteStore.NoteFilter({
  ascending: false
});

if(alfy.input) {
  filter.words = alfy.input;
} else {
  alfy.input = "";
}

var spec = new Evernote.NoteStore.NotesMetadataResultSpec(config.search_include);

noteStore.findNotesMetadata(filter, 0, config.search_count, spec).then(async notesMetadataList => {
  const searchedNotes = notesMetadataList.notes;

  let result;

  switch(config.search_subtitle) {
    case "created_time":
      result = _.map(searchedNotes, note => {
        const createdTime = new Date(note.created).toLocaleString();

        return {
          title: note.title,
          arg: note.title,
          valid: true,
          autocomplete: note.title,
          subtitle: `Created in ${createdTime}`,
        };
      });
      break;

    case "last_edited_time":
      result = _.map(searchedNotes, note => {
        const updatedTime = new Date(note.updated).toLocaleString();
    
        return {
          title: note.title,
          arg: note.title,
          valid: true,
          autocomplete: note.title,
          subtitle: `Last edited in ${updatedTime}`,
        };
      });
      break;

    case "content_length":
      result = _.map(searchedNotes, note => {
        const contentLength = note.contentLength;

        return {
          title: note.title,
          arg: note.title,
          valid: true,
          autocomplete: note.title,
          subtitle: `Length: ${contentLength}`,
        };
      });
      break;
      
    case "notebook":
      result = await Promise.all(_.map(searchedNotes, async note => {
        let notebookName;

        await noteStore.getNotebook(note.notebookGuid).then(notebook => notebookName = notebook.name);
    
        return {
          title: note.title,
          arg: note.title,
          valid: true,
          autocomplete: note.title,
          subtitle: `Notebook: ${notebookName}`,
        };
      }));
      break;

    case "tags":
      result = await Promise.all(_.map(searchedNotes, async note => {
        let tagNames;
    
        await noteStore.getNoteTagNames(note.guid).then(tagNameList => tagNames = tagNameList);
    
        const tagNameStr = tagNames.join(', ');
    
        return {
          title: note.title,
          arg: note.title,
          valid: true,
          autocomplete: note.title,
          subtitle: tagNameStr === '' ? "None" : `Tags: ${tagNameStr}`,
        };
      }));
      break;
    default:
      console.log("config file error, set the proper search_subtitle value");
      break;
  }
  
  alfy.output(result);

}).catch(err => {
  console.log(err);
});