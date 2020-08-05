const config = require('./searchConfig.json');
const clipboardy = require('clipboardy');

require('@jxa/global-type');
const run = require('@jxa/run').run;

const input = process.argv.slice(2).join(" ");
const [tag, queryList] = input.split("$content:");

const createNoteByText = (string, createAndOpen, tag) => {

  const callback = (string, createAndOpen, tag) => {
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

clipboardy.write(input);