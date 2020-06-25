const alfy = require('alfy');
const OAuth = require('./OAuth.json');
const Evernote = require("evernote");
const _ = require('lodash');
const config = require('./config.json');

if(!OAuth) {
  return;
}

var authenticatedClient = new Evernote.Client({
  token: OAuth.oauthToken,
  sandbox: false,
  china: false,
});

const noteStore = authenticatedClient.getNoteStore();

var filter = new Evernote.NoteStore.NoteFilter({
  words: alfy.input,
  ascending: true
});

var spec = new Evernote.NoteStore.NotesMetadataResultSpec({
  includeTitle: true,
  includeContentLength: true,
  includeCreated: true,
  includeUpdated: true,
  includeDeleted: true,
  includeUpdateSequenceNum: true,
  includeNotebookGuid: true,
  includeTagGuids: true,
  includeAttributes: true,
  includeLargestResourceMime: true,
  includeLargestResourceSize: true,
});

noteStore.findNotesMetadata(filter, 0, config.search_count, spec).then(notesMetadataList => {

  const searchedNotes = notesMetadataList.notes;

	const result = _.map(searchedNotes, note => {
    const createdTime = new Date(note.created).toLocaleString();

		return {
			title: note.title,
			arg: note.title,
			valid: true,
      autocomplete: note.title,
			subtitle: `created in ${createdTime}`,
		};
	});

  alfy.output(result);

}).catch(err => {
  console.log(err);
});