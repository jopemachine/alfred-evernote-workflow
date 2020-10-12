const fs = require('fs')
const commandLog = require('./commandLog.json')
const config = require('./searchConfig.json')
const {
  replaceAll
} = require('./utils')

function write (command, options = undefined) {
  const keys = Object.keys(commandLog)
  if (config.cache_save_count <= keys.length) {
    // delete oldest log
    delete commandLog[keys[0]]
  }

  commandLog[new Date().toUTCString()] = {
    log: replaceAll(command, '\\"', '"'),
    options
  }

  fs.writeFileSync(
    'commandLog.json',
    '\ufeff' + JSON.stringify(commandLog, null, 2),
    { encoding: 'utf8' }
  )
}

module.exports = {
  write
}
