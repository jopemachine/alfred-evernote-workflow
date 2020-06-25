const config = require('./config.json');

if(config.search_subtitle === "created_time") {
  require('./searchNoteWithCreatedTime');
} 
else if(config.search_subtitle === "tags") {
  require('./searchNoteWithTags');
}
else {
  console.log("config file error");
}