const path = require('path');
const fs = require('fs');

const directoryPath = path.join(__dirname, 'search_content');

const cacheLogTemplate = {
  "-1": -1
};

fs.readdir(directoryPath, function (err, files) {
  if (err) {
    return console.log('Unable to scan directory: ' + err);
  }

  files.forEach(function (file) {
    fs.unlinkSync(`${__dirname}/search_content/${file}`);
  });

  fs.writeFileSync(
    `${directoryPath}/CacheLog.json`,
    "\ufeff" + JSON.stringify(cacheLogTemplate, null, 2),
    { encoding: "utf8" }
  );
});
