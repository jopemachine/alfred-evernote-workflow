const clipboardy = require('clipboardy');

require('@jxa/global-type');
const run = require('@jxa/run').run;

const turnOnEvernote = (clipStr) => {

  let callback = (clipStr) => {
    // below is JXA
    const Evernote = Application("Evernote");
    Evernote.createNote({ withText: clipStr });
  }
  
  return run(callback, clipStr);
}

clipboardy.read().then(async data => {
  await turnOnEvernote(data);
});