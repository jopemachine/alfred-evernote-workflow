const LogManager = require('./logManager')
const alfy = require('alfy')

if (alfy.input.startsWith('noteopen')) {
  const [command, noteguid, ...noteTitle] = alfy.input.split(' ')
  const title = noteTitle.join(' ')
  LogManager.write(`${command} ${noteguid}`, { title })
} else {
  LogManager.write(alfy.input)
}
