const config = require('./searchConfig.json')
const _ = require('lodash')
const createHtmlElement = require('create-html-element')
const isTravis = require('is-travis')
const fs = require('fs')
const alfy = require('alfy')
!isTravis && require('dotenv').config()

function authenticationNotProgressed () {
  alfy.output([
    {
      valid: false,
      title: 'Authentication has not progressed.',
      subtitle: 'Please get an API token by reference to README.md',
      autocomplete: '',
      arg: 'error'
    }
  ])
  process.exit()
}

function getEnv (object) {
  let result = ''
  for (const key of Object.keys(object)) {
    result += `${key}=${object[key]}
`
  }
  return result
}

function getEnvAsObject (envPath) {
  const result = {}

  const lines = fs.readFileSync(envPath).toString().split('\n')

  for (const lineIndex in lines) {
    if (lines[lineIndex].trim() === '') continue
    const [key, ...value] = lines[lineIndex].split('=')
    result[key] = value.join('=')
  }
  return result
}

function replaceAll (string, search, replace) {
  return string.split(search).join(replace)
}

const handleInput = (str) => {
  const re = /\$\{.*\}/
  const [first, ...query] = str.split(' ')

  if (re.test(first)) {
    return query.join(' ')
  }

  return str
}

async function fetchTagGuid (targetName, tags) {
  let result = -1
  _.transform(tags, (tags, tag) => {
    if (tag.name === targetName) {
      result = tag.guid
      return false
    }
    return true
  })
  return result === -1 ? [] : [result]
}

async function fetchNotebookGuid (targetName, notebooks) {
  let result = -1
  _.transform(notebooks, (notebooks, notebook) => {
    if (notebook.name === targetName) {
      result = notebook.guid
      return false
    }
    return true
  })
  return result === -1 ? undefined : result
}

function ab2str (buf) {
  // _.map() not working
  let result = ''
  for (let i = 0; i < buf.length; i++) {
    const newValue = buf[i] < 16 ? `0${buf[i].toString(16)}` : buf[i].toString(16)
    result += newValue
  }
  return result
}

const insertResource = (htmlStr) => {
  // <en-media hash="{hash}" type="image/png" />
  const imageCheckingRegexp = /(.*)<en-media hash="(\w*)" type="image\/([\w]*)"(.*)/g

  while (imageCheckingRegexp.test(htmlStr)) {
    // 1: pre string of en-media
    // 2: resource hash
    // 3: resource type
    // 4: post string of en-media
    htmlStr = htmlStr.replace(imageCheckingRegexp, '$1<img src="_$2.$3"$4')
  }

  return htmlStr
}

const catchThriftException = func => async (...args) => {
  try {
    return await func(...args)
  } catch (err) {
    if (err) {
      switch (err.errorCode) {
        case 2: {
          const title = 'Not valid oauth token'
          return [
            {
              valid: false,
              title,
              subtitle: 'Please read README.md first',
              arg: 'error',
              text: {
                copy: title,
                largetype: title
              },
              icon: {
                path: './icon/warning.png'
              }
            }
          ]
        }
        case 19: {
          const title = "Evernote sdk's ratelimit has reached its limit."
          return [
            {
              valid: true,
              title,
              subtitle: 'Please try again in an hour.',
              arg: 'error',
              text: {
                copy: title,
                largetype: title
              },
              icon: {
                path: './icon/warning.png'
              }
            }
          ]
        }
      }
    }
  }
}

const handleSubtitleRestrictor = func => async (count, ...args) => {
  if (count <= config.subtitle_restrictor) return await func(...args)
}

const decideSearchOrder = (option) => {
  // 'CREATED': 1,
  // 'UPDATED': 2,
  // 'RELEVANCE': 3,
  // 'UPDATE_SEQUENCE_NUMBER': 4,
  // 'TITLE': 5

  switch (option) {
    case 'created':
      return 1
    case 'updated':
      return 2
    case 'relevance':
      return 3
    case 'title':
      return 5
  }
}

const getTimeString = (updatedTimestamp) => {
  const dateObj = new Date(updatedTimestamp)

  const year = dateObj.getFullYear()
  let month = dateObj.getMonth() + 1
  if (month < 10) month = '0' + month
  let day = dateObj.getDate()
  if (day < 10) day = '0' + day

  let time = dateObj.getHours() * 3600 + dateObj.getMinutes() * 60 + dateObj.getSeconds()

  if ((time >= 1000) && time < 10000) time = '0' + time
  else if ((time >= 100) && time < 1000) time = '00' + time
  else if ((time >= 10) && time < 100) time = '000' + time
  else if (time < 10) time = '0000' + time

  const weightValue = `${year}${month}${day}${time}`
  return parseFloat(weightValue)
}

const getHtmlMetaData = ({ title, updated, created }) => {
  const locale = process.env.systemLocale

  const fontSize = 'font-size: 20;'

  const fontFamily =
    'font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;'

  const marginBottom = 'margin-bottom: 15;'

  const htmlStyle = `
img {
  max-width: 100%;
  height: auto;
}`

  return (
    createHtmlElement({
      name: 'style',
      html: htmlStyle
    }) +
    createHtmlElement({
      name: 'p',
      attributes: {
        id: 'title',
        style: `${fontSize} ${fontFamily}`
      },
      html: `Title: ${title}`
    }) +
    createHtmlElement({
      name: 'p',
      attributes: {
        id: 'editedDate',
        style: `${fontSize} ${fontFamily}`
      },
      html: `Last Edited In: ${getLocaleString(updated, locale)}`
    }) +
    createHtmlElement({
      name: 'p',
      attributes: {
        id: 'creationDate',
        style: `${fontSize} ${fontFamily}`
      },
      html: `Created In: ${getLocaleString(created, locale)}`
    }) +
    createHtmlElement({
      name: 'hr',
      attributes: {
        style: `${marginBottom}`
      }
    })
  )
}

const getLocaleString = (datetime, locale) => {
  const dateObj = new Date(datetime)

  const year = dateObj.getFullYear()
  const month = dateObj.getMonth() + 1
  const day = dateObj.getDate()

  const hour =
      // AM 12
      dateObj.getHours() === 0 ? 12
      // PM 12
        : dateObj.getHours() === 12 ? 12
        // Other times
          : dateObj.getHours() % 12

  const minute =
    dateObj.getMinutes() < 10
      ? `0${dateObj.getMinutes()}`
      : dateObj.getMinutes()
  const seconds =
    dateObj.getSeconds() < 10
      ? `0${dateObj.getSeconds()}`
      : dateObj.getSeconds()

  switch (locale) {
    case 'ko-KR': {
      const koDayOfTheWeek = [
        '일요일',
        '월요일',
        '화요일',
        '수요일',
        '목요일',
        '금요일',
        '토요일'
      ]
      const isPM = dateObj.getHours() >= 12 ? '오후' : '오전'
      const dayOfTheWeek = koDayOfTheWeek[dateObj.getDay() % 7]
      return `${year}년 ${month}월 ${day}일 ${dayOfTheWeek} ${isPM} ${hour}:${minute}:${seconds}`
    }

    default: {
      const enDayOfTheWeek = [
        'Sunday',
        'Monday',
        'Tuesday',
        'Wednesday',
        'Thursday',
        'Friday',
        'Saturday'
      ]
      const enMonthStr = [
        'December',
        'January',
        'Feburary',
        'March',
        'April',
        'May',
        'June',
        'July',
        'August',
        'September',
        'October',
        'November'
      ]

      const isPM = dateObj.getHours() >= 12 ? 'PM' : 'AM'
      const dayOfTheWeek = enDayOfTheWeek[dateObj.getDay() % 7]
      const monthStr = enMonthStr[month % 12]
      return `${dayOfTheWeek}, ${monthStr} ${day}, ${year} ${hour}:${minute}:${seconds} ${isPM}`
    }
  }
}

module.exports = {
  ab2str,
  authenticationNotProgressed,
  getEnv,
  getEnvAsObject,
  fetchTagGuid,
  fetchNotebookGuid,
  replaceAll,
  handleInput,
  getTimeString,
  decideSearchOrder,
  catchThriftException,
  handleSubtitleRestrictor,
  insertResource,
  getHtmlMetaData
}
