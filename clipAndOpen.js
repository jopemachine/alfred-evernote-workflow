const clipboardy = require('clipboardy')
const config = require('./searchConfig.json')
require('@jxa/global-type')
const run = require('@jxa/run').run

const createNoteByTextAndOpen = (clipStr, tag) => {
  const callback = (clipStr, tag) => {
    // eslint-disable-next-line no-undef
    const Evernote = Application('Evernote')
    Evernote.activate()

    let createdNote

    const date = new Date().toLocaleString()

    if (tag !== '') {
      createdNote = Evernote.createNote({ title: date, withText: clipStr, tags: [tag] })
    } else {
      createdNote = Evernote.createNote({ title: date, withText: clipStr })
    }

    Evernote.openNoteWindow({ with: createdNote })
  }

  return run(callback, clipStr, tag)
}

clipboardy.read().then(async data => {
  await createNoteByTextAndOpen(data, config.cliped_note_tag)
})
