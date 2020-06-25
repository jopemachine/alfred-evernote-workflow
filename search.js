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

if(config.search_subtitle === "created_time") {
  require('./searchNoteWithCreatedTime');
} 
else if(config.search_subtitle === "tags") {
  require('./searchNoteWithTags');
}
else {
  console.log("config file error, set the proper search_subtitle value");
}