const config = require('./searchConfig.json')
require('@jxa/global-type')
const run = require('@jxa/run').run

const rawInput = process.argv.slice(2).join(' ').normalize()

const [notelink, ...inputs] = rawInput.split(' ')
const input = '\n' + inputs.join(' ')

const appendNote = (notelink, input, createAndOpen) => {
  const callback = (notelink, input, createAndOpen) => {
    // eslint-disable-next-line no-undef
    const Evernote = Application('Evernote')

    const targetNote = Evernote.findNote(notelink)

    Evernote.append(targetNote, { text: input })

    if (createAndOpen === true) {
      Evernote.openNoteWindow({ with: targetNote })
    }
  }

  return run(callback, notelink, input, createAndOpen)
}

appendNote(notelink, input, config.create_and_open)
