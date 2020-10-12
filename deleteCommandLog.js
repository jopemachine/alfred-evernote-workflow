const fs = require('fs')

const logPath = `${__dirname}/commandLog.json`

fs.unlinkSync(logPath)

fs.writeFileSync(
  logPath,
  '\ufeff' + JSON.stringify({}, null, 2),
  { encoding: 'utf8' }
)
