const alfy = require('alfy')
const _ = require('lodash')
const {
  handleInput,
  replaceAll
} = require('./utils')
const LogManager = require('./logManager')
const isTravis = require('is-travis')
require('./checkApiKey')
!isTravis && require('dotenv').config()
const api = require('./api')(process.env.oauthToken)
require('./checkIsCaching')

const alfyInput = replaceAll(handleInput(alfy.input), '\\', '')

async function searchNotebook (listNotebooks) {
  let items = listNotebooks

  if (alfyInput) {
    items = _.filter(listNotebooks, notebook => {
      // Need to normalize alfy.input and match the encoding so that users can search normally in Korean
      const notebookName = notebook.name.toLowerCase()
      const input = alfyInput.normalize().toLowerCase()

      if (!notebookName.includes(input)) {
        return false
      }
      return true
    })
  }

  items = _.orderBy(items, ['name'], ['asc'])

  return _.map(items, (notebook) => {
    return {
      title: notebook.name,
      arg: `notebook:"${notebook.name}" `,
      valid: true,
      autocomplete: notebook.name,
      subtitle: `Created time: ${new Date(notebook.serviceCreated).toUTCString()}`,
      icon: {
        path: './icon/searchIcon.png'
      },
      text: {
        copy: notebook.name,
        largetype: notebook.name
      },
      variables: {
        notebookGuid: notebook.guid
      }
    }
  })
}

(async function () {
  alfy.output(await api.listNotebooks(
    {
      callback: searchNotebook
    }
  ))

  LogManager.write(`enb ${handleInput(alfy.input)}`)
})()
