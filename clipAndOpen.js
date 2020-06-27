const clipboardy = require('clipboardy');

require('@jxa/global-type');
const run = require('@jxa/run').run;

const createNoteByTextAndOpen = (clipStr) => {

  let callback = (clipStr) => {
    // below is JXA
    const Evernote = Application("Evernote");
    Evernote.activate();
    const createdNote = Evernote.createNote({ withText: clipStr });
    Evernote.openNoteWindow({ with: createdNote });
  }

  return run(callback, clipStr);
}

clipboardy.read().then(async data => {
  await createNoteByTextAndOpen(data);
});