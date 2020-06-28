const clipboardy = require('clipboardy');
const config = require('./config.json');

require('@jxa/global-type');
const run = require('@jxa/run').run;

const createNoteByTextAndOpen = (clipStr, tag) => {

  let callback = (clipStr, tag) => {
    // below is JXA
    const Evernote = Application("Evernote");
    Evernote.activate();

    let createdNote;

    if(tag !== "") {
      createdNote = Evernote.createNote({ withText: clipStr, tags: [tag] });
    } else {
      createdNote = Evernote.createNote({ withText: clipStr });
    }

    Evernote.openNoteWindow({ with: createdNote });
  }

  return run(callback, clipStr, tag);
}

clipboardy.read().then(async data => {
  await createNoteByTextAndOpen(data, config.cliped_note_tag);
});