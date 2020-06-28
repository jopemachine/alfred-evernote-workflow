const OAuth = require('./OAuth.json');
const config = require('./config.json');
const Evernote = require('evernote');

var authenticatedClient = new Evernote.Client({
  token: OAuth.oauthToken,
  sandbox: false,
  china: false,
});

const noteStore = authenticatedClient.getNoteStore();

// ---------------------------------------------------------------------------------
// ------------------------------- Util function -----------------------------------
// ---------------------------------------------------------------------------------

const catchThriftException = func => async (...args) => {
  try {
    return await func(...args);
  } catch (err) {
    // To do : Need to distinguish ThriftException here
    if (err) {
      console.log(err);
    }
  }
}

const handleSubtitleRestrictor = func => async (count, ...args) => {
  if (count < config.subtitle_restrictor) return await func(...args);
};

// ---------------------------------------------------------------------------------

async function getNotebookName(notebookGuid) {
  let result;
  await noteStore.getNotebook(notebookGuid).then(notebook => {
    result = `Notebook: ${notebook.name}`
  });
  return result;
}

async function getNoteTagNames(noteGuid) {
  let result;
  await noteStore.getNoteTagNames(noteGuid).then(tagNameList => {
    const tagNameStr = tagNameList.join(', ');
    result = tagNameStr === '' ? "None" : `Tags: ${tagNameStr}`
  });
  return result;
}

async function getTag(parentTagGuid) {
  let result;
  if(parentTagGuid) {
    await noteStore.getTag(parentTagGuid).then(parentTag => {
      result = `Parent Tag: ${parentTag.name}`;
    });
  } else {
    result = 'none';
  }
  return result;
}

async function findNoteCountsWithTag(tagGuid) {
  let result;

  const tagFilter = new Evernote.NoteStore.NoteFilter({
    tagGuids: [tagGuid],
    ascending: false,
  });

  await noteStore
    .findNoteCounts(tagFilter, false)
    .then(taggedNotesCnt => {
      result = `Counts: ${taggedNotesCnt.tagCounts[tagGuid]}`
  });

  return result;
}

async function findNotesMetadata(filter, search_count, spec, { callback }) {
  let result;
  await noteStore.findNotesMetadata(filter, 0, search_count, spec).then(async notesMetadataList => {
    result = callback(notesMetadataList);
  })
  return result;
}

async function listTags({ callback }) {
  let result;
  await noteStore.listTags().then(async tags => {
    result = callback(tags);
  });
  return result;
}

module.exports = {
  getNotebookName:          catchThriftException(handleSubtitleRestrictor(getNotebookName)),
  getNoteTagNames:          catchThriftException(handleSubtitleRestrictor(getNoteTagNames)),
  getTag:                   catchThriftException(handleSubtitleRestrictor(getTag)),
  findNoteCountsWithTag:    catchThriftException(handleSubtitleRestrictor(findNoteCountsWithTag)),
  findNotesMetadata:        catchThriftException(findNotesMetadata),
  listTags:                 catchThriftException(listTags)
}