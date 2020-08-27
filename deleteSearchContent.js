const path = require('path');
const fs = require('fs');
const AuthConfig = require('./authConfig.json');

const directoryPath = path.join(__dirname, 'search_content');

const jsonTemplate = {
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
    } else if (
      file === "htmlCacheLogTemplate.json" ||
      file === "thumbNailPathTemplate.json"
    ) {
      // continue
    } else fs.unlinkSync(fileOrDirName);
  });

  fs.writeFileSync(
    `${directoryPath}/htmlCacheLog.json`,
    "\ufeff" + JSON.stringify(jsonTemplate, null, 2),
    { encoding: "utf8" }
  );

  fs.writeFileSync(
    `${directoryPath}/thumbNailPath.json`,
    "\ufeff" + JSON.stringify(jsonTemplate, null, 2),
    { encoding: "utf8" }
  );
});

AuthConfig.initialCaching = "false";

fs.writeFileSync(
  `${__dirname}/authConfig.json`,
  "\ufeff" + JSON.stringify(AuthConfig, null, 2),
  { encoding: "utf8" }
);

if(fs.existsSync(`${__dirname}/Caching`)) fs.rmdirSync(`${__dirname}/Caching`);