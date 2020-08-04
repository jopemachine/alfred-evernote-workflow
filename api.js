const Evernote = require("evernote");
const AuthConfig = require("./authConfig.json");
const {
  catchThriftException,
  handleSubtitleRestrictor,
} = require('./utils');

if (AuthConfig.oauthToken === -1) return;

const authenticatedClient = new Evernote.Client({
  token: AuthConfig.oauthToken,
  sandbox: false,
  china: false,
});

const noteStore = authenticatedClient.getNoteStore();
const userStore = authenticatedClient.getUserStore();

// ---------------------------------------------------------------------------------
// Note store API

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

  return taggedNotesCnt ? `Note counts: ${taggedNotesCnt}` : `Note counts: 0`;
}

async function findNotesMetadata(filter, offset, search_max_count, spec, { callback }) {
  return callback(
    await noteStore.findNotesMetadata(filter, offset, search_max_count, spec)
  );
}

async function listTags({ callback }) {
  return callback(await noteStore.listTags());
}

async function listNotebooks({ callback }) {
  return callback(await noteStore.listNotebooks());
}

async function getNoteContent(noteGuid) {
  return await noteStore.getNoteContent(noteGuid);
}

async function listLinkedNotebooks() {
  return await noteStore.listLinkedNotebooks();
}

async function getNoteWithResultSpec(noteGuid, resultSpec) {
  return await noteStore.getNoteWithResultSpec(noteGuid, resultSpec);
}

// ---------------------------------------------------------------------------------
// User store API

async function getUser() {
  return await userStore.getUser();
}

// ---------------------------------------------------------------------------------

module.exports = {
  getNotebookName:
    catchThriftException(handleSubtitleRestrictor(getNotebookName)),
  getNoteTagNames:
    catchThriftException(handleSubtitleRestrictor(getNoteTagNames)),
  getTag:
    catchThriftException(handleSubtitleRestrictor(getTag)),
  findNoteCountsWithTag:
    catchThriftException(handleSubtitleRestrictor(findNoteCountsWithTag)),
  getNoteContent:
    catchThriftException(getNoteContent),
  findNotesMetadata:
    catchThriftException(findNotesMetadata),
  listTags:
    catchThriftException(listTags),
  listNotebooks:
    catchThriftException(listNotebooks),
  getUser:
    getUser,
  getNoteWithResultSpec:
    getNoteWithResultSpec,
  listLinkedNotebooks: 
    catchThriftException(listLinkedNotebooks),
};
