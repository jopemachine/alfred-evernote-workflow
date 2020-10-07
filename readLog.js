const _ = require('lodash')
const alfy = require('alfy')

const commandLog = alfy.input
  ? _.pickBy(require('./commandLog.json'), (logObj, date) => {
    const input = alfy.input.normalize().toLowerCase()
    const logStr = logObj.log.normalize().toLowerCase()
    const logTitle = logObj.options ? logObj.options.title.normalize().toLowerCase() : ''
    const dateStr = date.normalize().toLowerCase()

    if (!logStr.includes(input) && !logTitle.includes(input) && !dateStr.includes(input)) {
      return false
    }
    return true
  })
  : require('./commandLog.json')

const logs = _.uniqBy(_.reverse(_.map(commandLog, (logObj, date) => {
  const log = logObj.log

  const [keyword, ...query] = log.split(' ')

  let title
  let argument

  switch (keyword) {
    case 'ens':
    case 'ent':
    case 'enu':
    case 'enb':
    case 'enr':
    case 'eni':
    case 'enn':
      title = log
      argument = `\${${keyword}} ${query.join(' ')}`
      break
    case 'ensync':
    case 'entodo':
      title = log
      argument = `\${${keyword}}`
      break
    case 'noteopen': {
      const noteTitle = logObj.options.title
      title = `${keyword} ${noteTitle}`
      argument = `\${${keyword}} ${query.join(' ')}`
      break
    }
  }

  return {
    title,
    arg: argument,
    valid: true,
    autocomplete: log,
    subtitle: date,
    icon: {
      path: './icon/log.png'
    },
    text: {
      copy: log,
      largetype: log
    }
  }
})), item => item.title)

if (logs.length === 0) {
  alfy.output([
    {
      title: 'There is no command log to show',
      arg: 'error',
      autocomplete: '',
      subtitle: '',
      icon: {
        path: './icon/warning.png'
      }
    }
  ])
} else {
  alfy.output(logs)
}
