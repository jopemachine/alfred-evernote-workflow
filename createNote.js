const config = require('./searchConfig.json');
const clipboardy = require('clipboardy');

require('@jxa/global-type');
const run = require('@jxa/run').run;

const input = process.argv.slice(2).join(" ");

const createNoteByText = (string, createAndOpen) => {

  const callback = (string, createAndOpen) => {
    const Evernote = Application("Evernote");
    const date = new Date().toLocaleString();

    const newNote = Evernote.createNote({ title: date, withText: string });

    if(createAndOpen === true) {
      Evernote.openNoteWindow({ with: newNote });
    }
  }

  return run(callback, string, createAndOpen);
}

createNoteByText(input, config.create_and_open);

clipboardy.write(input);