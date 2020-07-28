const path = require('path');
const fs = require('fs');

const directoryPath = path.join(__dirname, 'search_content');

const htmlCacheLogTemplate = {
  "-1": -1
};

fs.readdir(directoryPath, function (err, files) {
  if (err) {
    return console.log('Unable to scan directory: ' + err);
  }

  files.forEach(function (file) {
    const fileOrDirName = `${__dirname}/search_content/${file}`;

    if (fs.lstatSync(fileOrDirName).isDirectory()) {
      fs.rmdirSync(fileOrDirName, { recursive: true });
    }

    else fs.unlinkSync(fileOrDirName);
  });

  fs.writeFileSync(
    `${directoryPath}/htmlCacheLog.json`,
    "\ufeff" + JSON.stringify(htmlCacheLogTemplate, null, 2),
    { encoding: "utf8" }
  );
});
