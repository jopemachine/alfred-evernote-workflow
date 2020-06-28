const clipboardy = require('clipboardy');
const config = require('./config.json');

require('@jxa/global-type');
const run = require('@jxa/run').run;

const createNoteByText = (clipStr, tag) => {

  let callback = (clipStr, tag) => {
    // below is JXA
    const Evernote = Application("Evernote");
    Evernote.createNote({ withText: clipStr });

    if(tag !== "") {
      Evernote.createNote({ withText: clipStr, tags: [tag] });
    } else {
      Evernote.createNote({ withText: clipStr });
    }
  }

  return run(callback, clipStr, tag);
}

clipboardy.read().then(async data => {
  await createNoteByText(data, config.cliped_note_tag);
});