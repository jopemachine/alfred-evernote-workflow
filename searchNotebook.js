const alfy = require("alfy");
const api = require("./api");
const config = require("./config.json");
const Evernote = require("evernote");
const OAuth = require("./OAuth.json");
const _ = require("lodash");

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

async function searchNotebook(listNotebooks) {
  let items = listNotebooks;
  
  if (alfy.input) {
    items = _.filter(listNotebooks, notebook => {
      // Need to normalize alfy.input and match the encoding so that users can search normally in Korean
      const notebookName = notebook.name.toLowerCase();
      const input = alfy.input.normalize().toLowerCase();

      if (!notebookName.includes(input)) {
        return false;
      }
      return true;
    });
  } else {
    // To prevent error of alfy
    alfy.input = "";
  }

  items = _.orderBy(items, ['name'], ['asc']);

  let result;

  result = _.map(listNotebooks, (notebook) => {
    return {
      title: notebook.name,
      arg: notebook.name,
      valid: true,
      autocomplete: notebook.name,
      subtitle: notebook.serviceCreated,
      icon: {
        "path": "./icon/searchIcon.png"
      }
    };
  });

  return result;
}

(async function () {
  alfy.output(await api.listNotebooks(
    {
      callback: searchNotebook,
    }
  ));
})();