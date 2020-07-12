const path = require('path');
const fs = require('fs');

const directoryPath = path.join(__dirname, 'search_content');

fs.readdir(directoryPath, function (err, files) {
  if (err) {
      return console.log('Unable to scan directory: ' + err);
  }

  files.forEach(function (file) {
    if(file === 'warning.txt') return;
    fs.unlinkSync(`${__dirname}/search_content/${file}`);
  });
});