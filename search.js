const OAuth = require('./OAuth.json');
const config = require('./config.json');

if(!OAuth) {
  console.log("oauth file error, please create OAuth.json file referring README.md");
  return;
}

if(!config) {
  console.log("can't find config file");
  return;
}

require('./searchNote');