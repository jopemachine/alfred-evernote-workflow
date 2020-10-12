/* eslint-disable standard/no-callback-literal */
const Evernote = require('evernote')
const isTravis = require('is-travis')
const { catchThriftException, handleSubtitleRestrictor } = require('./utils')

module.exports = (options) => {
  const api = (tokenValue) => {
    if (!isTravis) {
      require('dotenv').config()
    }

    const authenticatedClient = new Evernote.Client({
      token: tokenValue,
      sandbox: false,
      china: false
    })

    const noteStore = authenticatedClient.getNoteStore()
    const userStore = authenticatedClient.getUserStore()

    // ---------------------------------------------------------------------------------
    // Note store API

    async function getNotebookName (notebookGuid) {
      const notebook = await noteStore.getNotebook(notebookGuid)
      return `Notebook: ${notebook.name}`
    }

    async function getNoteTagNames (noteGuid) {
      const tagNameList = await noteStore.getNoteTagNames(noteGuid)
      const tagNameStr = tagNameList.join(', ')

      return tagNameStr === '' ? 'None' : `Tags: ${tagNameStr}`
    }

    async function getTag (parentTagGuid) {
      let result
      if (parentTagGuid) {
        const parentTag = await noteStore.getTag(parentTagGuid)
        result = `Parent Tag: ${parentTag.name}`
      } else {
        result = 'none'
      }
      return result
    }

    async function findNoteCountsWithNotebookGuid (notebookGuid) {
      const filter = new Evernote.NoteStore.NoteFilter({
        notebookGuid: notebookGuid,
        ascending: false
      })

      const notesCnt = (await noteStore.findNoteCounts(filter, false))
        .notebookCounts[notebookGuid]

      return notesCnt
    }

    async function findNoteCountsWithTag (tagGuid) {
      const tagFilter = new Evernote.NoteStore.NoteFilter({
        tagGuids: [tagGuid],
        ascending: false
      })

      const taggedNotesCnt = (await noteStore.findNoteCounts(tagFilter, false))
        .tagCounts[tagGuid]

      return taggedNotesCnt
        ? `Note counts: ${taggedNotesCnt}`
        : 'Note counts: 0'
    }

    async function findNotesMetadata (
      filter,
      offset,
      // eslint-disable-next-line camelcase
      search_max_count,
      spec,
      { callback }
    ) {
      return callback(
        await noteStore.findNotesMetadata(
          filter,
          offset,
          search_max_count,
          spec
        )
      )
    }

    async function listTags ({ callback }) {
      return callback(await noteStore.listTags())
    }

    async function listNotebooks ({ callback }) {
      return callback(await noteStore.listNotebooks())
    }

    async function getNoteContent (noteGuid) {
      return await noteStore.getNoteContent(noteGuid)
    }

    async function listLinkedNotebooks () {
      return await noteStore.listLinkedNotebooks()
    }

    async function getNoteWithResultSpec (noteGuid, resultSpec) {
      return await noteStore.getNoteWithResultSpec(noteGuid, resultSpec)
    }

    // ---------------------------------------------------------------------------------
    // User store API

    async function getUser () {
      return await userStore.getUser()
    }

    // ---------------------------------------------------------------------------------

    const functions = {
      getNotebookName: catchThriftException(
        handleSubtitleRestrictor(getNotebookName)
      ),
      getNoteTagNames: catchThriftException(
        handleSubtitleRestrictor(getNoteTagNames)
      ),
      getTag: catchThriftException(handleSubtitleRestrictor(getTag)),
      findNoteCountsWithTag: catchThriftException(
        handleSubtitleRestrictor(findNoteCountsWithTag)
      ),
      findNoteCountsWithNotebookGuid: catchThriftException(
        findNoteCountsWithNotebookGuid
      ),
      getNoteContent: catchThriftException(getNoteContent),
      findNotesMetadata: catchThriftException(findNotesMetadata),
      listTags: catchThriftException(listTags),
      listNotebooks: catchThriftException(listNotebooks),
      getUser: getUser,
      getNoteWithResultSpec: getNoteWithResultSpec,
      listLinkedNotebooks: catchThriftException(listLinkedNotebooks)
    }

    return functions
  }

  return options ? api(options) : api(process.env.oauthToken)
}
