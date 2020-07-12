const alfy = require("alfy");
const api = require("./api");
const config = require("./config.json");
const OAuth = require("./OAuth.json");
const _ = require("lodash");
const { 
  handleInput,
  replaceAll
} = require('./utils');

if (!OAuth) {
  console.log(
    "oauth file error, please create OAuth.json file referring README.md"
  );
  return;
}

if (!config) {
  console.log("can't find config file");
  return;
}

let alfyInput = replaceAll(handleInput(alfy.input), "\\", "");

async function searchNotebook(listNotebooks) {
  let items = listNotebooks;
  
  if (alfyInput) {
    items = _.filter(listNotebooks, notebook => {
      // Need to normalize alfy.input and match the encoding so that users can search normally in Korean
      const notebookName = notebook.name.toLowerCase();
      const input = alfyInput.normalize().toLowerCase();

      if (!notebookName.includes(input)) {
        return false;
      }
      return true;
    });
  } 

  items = _.orderBy(items, ['name'], ['asc']);

  return _.map(listNotebooks, (notebook) => {
    return {
      title: notebook.name,
      arg: `notebook:"${notebook.name}" `,
      valid: true,
      autocomplete: notebook.name,
      subtitle: `Created time: ${new Date(notebook.serviceCreated).toUTCString()}`,
      icon: {
        "path": "./icon/searchIcon.png"
      }
    };
  });
}

(async function () {
  alfy.output(await api.listNotebooks(
    {
      callback: searchNotebook,
    }
  ));
})();