const fs = require('fs');

function log(key, content) {
  const date = new Date().toDateString();
  const dateTime = new Date().toTimeString();

  const jsonStr = content
    ? JSON.stringify(content, null, 2)
    : JSON.stringify(key, null, 2);

  const result = content
    ? `[${dateTime}]: key: ${key}, \n${jsonStr}\n\n`
    : `[${dateTime}]:, \n${jsonStr}\n\n`;

  fs.appendFileSync("log/" + date, '\ufeff' + result, { encoding: 'utf8' });
}

module.exports = {
  log
};