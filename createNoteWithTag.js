const config = require('./searchConfig.json')
const clipboardy = require('clipboardy')
require('@jxa/global-type')
const run = require('@jxa/run').run

const input = process.argv.slice(2).join(' ').normalize()

const [tag, queryList] = input.split('\\$content:')

const createNoteByText = (noteTitle, noteContent, createAndOpen, tag) => {
  const callback = (noteTitle, noteContent, createAndOpen, tag) => {
    // eslint-disable-next-line no-undef
    const Evernote = Application('Evernote')

    const localNoteContent = noteContent !== '' ? noteContent : ' '

    let newNote

    if (!noteTitle || noteTitle === '') {
      newNote = Evernote.createNote({
        title: new Date().toLocaleString(),
        withText: localNoteContent,
        tags: [tag]
      })
    } else {
      newNote = Evernote.createNote({
        title: noteTitle,
        withText: localNoteContent,
        tags: [tag]
      })
    }

    if (createAndOpen === true) {
      Evernote.openNoteWindow({ with: newNote })
    }
  }

  return run(callback, noteTitle, noteContent, createAndOpen, tag)
}

let noteTitle = ''
let noteContent = queryList

const inputArgs = queryList.split(' >> ')
if (inputArgs.length >= 2) {
  noteTitle = inputArgs[0]
  noteContent = inputArgs.slice(1, inputArgs.length).join(' >> ')
}

createNoteByText(noteTitle, noteContent, config.create_and_open, tag)

clipboardy.write(noteContent)
