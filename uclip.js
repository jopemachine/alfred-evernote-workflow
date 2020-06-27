const clipboardy = require('clipboardy');
const axios = require('axios');

require('@jxa/global-type');
const run = require('@jxa/run').run;

const createNoteByHTML = (html) => {

  let callback = (html) => {
    // below is JXA
    const Evernote = Application("Evernote");
    const createdNote = Evernote.createNote({ withHtml: html });
    Evernote.openNoteWindow({ with: createdNote });
  }

  return run(callback, html);
}

clipboardy.read().then(data => {
  axios.get(data).then(resp => {
    createNoteByHTML(resp.data);
  });
});