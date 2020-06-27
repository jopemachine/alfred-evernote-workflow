const alfy = require("alfy");
const OAuth = require("./OAuth.json");
const Evernote = require("evernote");
const _ = require("lodash");
const config = require("./config.json");

if (!OAuth) {
  return;
}

var authenticatedClient = new Evernote.Client({
  token: OAuth.oauthToken,
  sandbox: false,
  china: false,
});

const noteStore = authenticatedClient.getNoteStore();

noteStore.listTags().then(async (tags) => {
  let items = tags;

  if (alfy.input) {
    items = _.filter(tags, (tag) => {
      // alfy.input를 normalize 시켜서 인코딩을 맞춰줘야 한글로도 정상적으로 검색할 수 있다.
      const tagName = tag.name.toLowerCase();
      const input = alfy.input.normalize().toLowerCase();

      if (!tagName.includes(input)) {
        return false;
      }
      return true;
    });
  }

  let result;

  switch (config.tag_search_subtitle) {
    case "none":
      result = alfy.inputMatches(items, "name").map((tag) => {
        return {
          title: tag.name,
          arg: tag.name,
          valid: true,
          autocomplete: tag.name,
          subtitle: ``,
        };
      });
      break;

    case "note_count":
      result = await Promise.all(alfy.inputMatches(items, "name").map(async (tag) => {
        const tagFilter = new Evernote.NoteStore.NoteFilter({
          tagGuids: [tag.guid],
          ascending: true,
        });

        let tagCounts = -1;

        await noteStore
          .findNoteCounts(tagFilter, false)
          .then((taggedNotesCnt) => {
            tagCounts = taggedNotesCnt.tagCounts[tag.guid];
          });

        return {
          title: tag.name,
          arg: tag.name,
          valid: true,
          autocomplete: tag.name,
          subtitle: `Counts: ${tagCounts}`,
        };
      }));
      break;
  }

  alfy.output(result);
});
