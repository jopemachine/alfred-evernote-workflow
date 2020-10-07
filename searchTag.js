const alfy = require('alfy')
const config = require('./searchConfig.json')
const _ = require('lodash')
const LogManager = require('./logManager')
const isTravis = require('is-travis')
require('./checkApiKey')
!isTravis && require('dotenv').config()
const api = require('./api')(process.env.oauthToken)
require('./checkIsCaching')

const {
  handleInput,
  replaceAll
} = require('./utils')

// eslint-disable-next-line no-unused-vars
let [execPath, alfyInput, option] = process.argv.slice(1)

alfyInput = replaceAll(handleInput(alfyInput), '\\"', '"')

let createFlag = false

switch (option) {
  case '--create':
    createFlag = true
    break
}

const getSubtitle = async (type, tags, selectedTag) => {
  switch (type) {
    case 'none': {
      return ''
    }
    case 'note_count': {
      return await api.findNoteCountsWithTag(tags.length, selectedTag.guid)
    }
    case 'parent_tag': {
      return await api.getTag(tags.length, selectedTag.parentGuid)
    }
    default:
      console.log('config file error, set the proper tag_search_subtitle value')
      break
  }
}

const getResult = async (tags) => {
  return await Promise.all(_.map(tags, async tag => {
    const subtitle = await getSubtitle(config.tag_search_subtitle, tags, tag)

    return {
      title: tag.name,
      arg: createFlag ? `${tag.name}$content:` : `tag:"${tag.name}" `,
      valid: true,
      autocomplete: tag.name,
      subtitle,
      icon: {
        path: './icon/tagIcon.png'
      },
      mods: {
        cmd: {
          valid: true,
          subtitle: `Open Evernote window with "${tag.name}" as tag`
        }
      },
      text: {
        copy: tag.name,
        largetype: tag.name
      }
    }
  }))
}

async function searchTag (tags) {
  let items = tags

  if (alfyInput) {
    items = _.filter(tags, tag => {
      // Need to normalize alfy.input and match the encoding so that users can search normally in Korean
      const tagName = tag.name.toLowerCase()
      const input = alfyInput.normalize().toLowerCase()

      if (!tagName.includes(input)) {
        return false
      }
      return true
    })
  }

  return getResult(_.orderBy(items, ['name'], ['asc']))
}

(async function () {
  alfy.output(await api.listTags(
    {
      callback: searchTag
    }
  ))

  LogManager.write(`ent ${handleInput(alfy.input)}`)
})()
