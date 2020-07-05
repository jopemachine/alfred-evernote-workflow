const axios = require('axios');
const clipboardy = require('clipboardy');
const config = require('./config.json');

require('@jxa/global-type');
const run = require('@jxa/run').run;

const createNoteByHTML = (html, tag) => {

  let callback = (html, tag) => {
    const Evernote = Application("Evernote");

    const date = new Date().toLocaleString();

    let createdNote;

    if(tag !== "") {
      createdNote = Evernote.createNote({ title: date, withHtml: html, tags: [tag] });
    } else {
      createdNote = Evernote.createNote({ title: date, withHtml: html });
    }

    Evernote.openNoteWindow({ with: createdNote });
  }

  return run(callback, html, tag);
}

clipboardy.read().then(url => {
  const isURL = /(https?:\/\/(?:wwuw\.|(?!www))[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|www\.[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9]+\.[^\s]{2,}|www\.[a-zA-Z0-9]+\.[^\s]{2,})/gi;
  const regex = new RegExp(isURL);

  if (url.match(regex)) {
    axios.get(url).then(resp => {
      createNoteByHTML(resp.data, config.cliped_note_tag);
      console.log(" ");
    });
  } else {

  }
});