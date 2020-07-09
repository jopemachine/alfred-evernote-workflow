const alfy = require("alfy");
const api = require("./api");
const config = require("./config.json");
const OAuth = require("./OAuth.json");
const _ = require("lodash");

if (!OAuth) {
  return;
}

if (!config) {
  console.log("can't find config file");
  return;
}

async function searchTag(tags) {
  let items = tags;
  
  if (alfy.input) {
    items = _.filter(tags, tag => {
      // Need to normalize alfy.input and match the encoding so that users can search normally in Korean
      const tagName = tag.name.toLowerCase();
      const input = alfy.input.normalize().toLowerCase();

      if (!tagName.includes(input)) {
        return false;
      }
      return true;
    });
  } else {
    // To prevent error of alfy
    alfy.input = "";
  }

  let result;
  let subtitle = '';

  items = _.orderBy(items, ['name'], ['asc']);

  switch (config.tag_search_subtitle) {
    case "none":
      result = alfy.inputMatches(items, "name").map(tag => {
        return {
          title: tag.name,
          arg: `${tag.name}\$content:`,
          valid: true,
          autocomplete: tag.name,
          subtitle,
        };
      });
      break;

    case "parent_tag":
      result = await Promise.all(alfy.inputMatches(items, "name").map(async tag => {
        subtitle = await api.getTag(items.length, tag.parentGuid);

        return {
          title: tag.name,
          arg: `${tag.name}\$content:`,
          valid: true,
          autocomplete: tag.name,
          subtitle,
        };
      }));
      break;

    case "note_count":
      result = await Promise.all(alfy.inputMatches(items, "name").map(async tag => {
        subtitle = await api.findNoteCountsWithTag(items.length, tag.guid);

        return {
          title: tag.name,
          arg: `${tag.name}\$content:`,
          valid: true,
          autocomplete: tag.name,
          subtitle,
        };
      }));
      break;
  }

  return result;
}

(async function () {
  alfy.output(await api.listTags(
    {
      callback: searchTag,
    }
  ));
})();