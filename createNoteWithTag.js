const clipboardy = require('clipboardy');
const config = require('./searchConfig.json');

require('@jxa/global-type');
const run = require('@jxa/run').run;

let [ input, option ] = process.argv.slice(2);

const [tag, queryList] = input.split("$content:");

const createNoteByText = (string, createAndOpen, tag) => {

  let callback = (string, createAndOpen, tag) => {
    const Evernote = Application('Evernote');

    const noteContent = string !== '' ? string : ' ';

    const date = new Date().toLocaleString();

    const newNote = Evernote.createNote({ title: date, withText: noteContent, tags: [tag] });

    if(createAndOpen === true) {
      Evernote.openNoteWindow({ with: newNote });
    }
  }

  return run(callback, string, createAndOpen, tag);
}

createNoteByText(queryList, config.create_and_open, tag);