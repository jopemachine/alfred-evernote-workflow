const config = require('./searchConfig.json')
const clipboardy = require('clipboardy')
require('@jxa/global-type')
const run = require('@jxa/run').run

const input = process.argv.slice(2).join(' ').normalize()

const createNoteByText = (noteTitle, noteContent, createAndOpen) => {
  const callback = (noteTitle, noteContent, createAndOpen) => {
    // eslint-disable-next-line no-undef
    const Evernote = Application('Evernote')

    let newNote
    if (!noteTitle || noteTitle === '') {
      newNote = Evernote.createNote({
        title: new Date().toLocaleString(),
        withText: noteContent
      })
    } else {
      newNote = Evernote.createNote({
        title: noteTitle,
        withText: noteContent
      })
    }

    if (createAndOpen === true) {
      Evernote.openNoteWindow({ with: newNote })
    }
  }

  return run(callback, noteTitle, noteContent, createAndOpen)
}

let noteTitle = ''
let noteContent = input

const inputArgs = input.split(' >> ')

if (inputArgs.length >= 2) {
  noteTitle = inputArgs[0]
  noteContent = inputArgs.slice(1, inputArgs.length).join(' >> ')
}

createNoteByText(noteTitle, noteContent, config.create_and_open)

clipboardy.write(noteContent)
