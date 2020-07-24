const clipboardy = require('clipboardy');
const config = require('./searchConfig.json');

require('@jxa/global-type');
const run = require('@jxa/run').run;

const createNoteByText = (clipStr, tag) => {

  let callback = (clipStr, tag) => {
    const Evernote = Application("Evernote");
    const date = new Date().toLocaleString();

    if(tag !== "") {
      Evernote.createNote({ title: date, withText: clipStr, tags: [tag] });
    } else {
      Evernote.createNote({ title: date, withText: clipStr });
    }
  }

  return run(callback, clipStr, tag);
}

clipboardy.read().then(async data => {
  await createNoteByText(data, config.cliped_note_tag);
});