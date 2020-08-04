const config = require('./searchConfig.json');

require('@jxa/global-type');
const run = require('@jxa/run').run;

let [ input, option ] = process.argv.slice(2);

const createNoteByText = (string, createAndOpen) => {

  let callback = (string, createAndOpen) => {
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