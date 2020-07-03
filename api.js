const OAuth = require("./OAuth.json");
const config = require("./config.json");
const Evernote = require("evernote");

var authenticatedClient = new Evernote.Client({
  token: OAuth.oauthToken,
  sandbox: false,
  china: false,
});

const noteStore = authenticatedClient.getNoteStore();

// ---------------------------------------------------------------------------------
// ------------------------------- Util function -----------------------------------
// ---------------------------------------------------------------------------------

const makeScreenFilterJson = ({ uid, type, title, subtitle, arg, autocomplete, icon }) => {
  return [
    {
      uid, type, title, subtitle, arg, autocomplete, icon
    }
  ]
}

const catchThriftException = func => async (...args) => {
  try {
    return await func(...args);
  } catch (err) {
    if (err) {
      switch (err.errorCode) {
        case 2:
          return makeScreenFilterJson({ title: "Not valid oauth token, please read README.md first" });
        case 19:
          return makeScreenFilterJson({ title: "Evernote sdk's ratelimit has reached its limit. Please try again in an hour." });
      }
    }
  }
};

const handleSubtitleRestrictor = func => async (count, ...args) => {
  if (count < config.subtitle_restrictor) return await func(...args);
};

// ---------------------------------------------------------------------------------

async function getNotebookName(notebookGuid) {
  const notebook = await noteStore.getNotebook(notebookGuid);
  return `Notebook: ${notebook.name}`;
}

async function getNoteTagNames(noteGuid) {
  const tagNameList = await noteStore.getNoteTagNames(noteGuid);
  const tagNameStr = tagNameList.join(", ");

  return tagNameStr === "" ? "None" : `Tags: ${tagNameStr}`;
}

async function getTag(parentTagGuid) {
  let result;
  if (parentTagGuid) {
    const parentTag = await noteStore.getTag(parentTagGuid);
    result = `Parent Tag: ${parentTag.name}`;
  } else {
    result = "none";
  }
  return result;
}

async function findNoteCountsWithTag(tagGuid) {
  const tagFilter = new Evernote.NoteStore.NoteFilter({
    tagGuids: [tagGuid],
    ascending: false,
  });

  const taggedNotesCnt = (await noteStore.findNoteCounts(tagFilter, false))
    .tagCounts[tagGuid];

  return taggedNotesCnt ? `Counts: ${taggedNotesCnt}` : `Counts: 0`;
}

async function findNotesMetadata(filter, search_max_count, spec, { callback }) {
  return callback(
    await noteStore.findNotesMetadata(filter, 0, search_max_count, spec)
  );
}

async function listTags({ callback }) {
  return callback(await noteStore.listTags());
}

module.exports = {
  makeScreenFilterJson,
  getNotebookName:
    catchThriftException(handleSubtitleRestrictor(getNotebookName)),
  getNoteTagNames:
    catchThriftException(handleSubtitleRestrictor(getNoteTagNames)),
  getTag:
    catchThriftException(handleSubtitleRestrictor(getTag)),
  findNoteCountsWithTag:
    catchThriftException(handleSubtitleRestrictor(findNoteCountsWithTag)),
  findNotesMetadata:
    catchThriftException(findNotesMetadata),
  listTags:
    catchThriftException(listTags),
};
