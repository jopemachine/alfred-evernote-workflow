import test from 'ava';
import alfyTest from 'alfy-test';
import api from '../api';
import { fetchNotebookGuid } from '../utils';
import _ from 'lodash';

test('"enb"\'s note count should be same with actual note count', async (t) => {
  const testTarget = alfyTest();

  const targetNotebook = 'Project';
  const query = `'notebook:"${targetNotebook}" '`;
  const result = await testTarget(`searchNote.js ${query}`);

  if (!result[0].valid) {
    t.fail("Auth failed!");
    return;
  }

  console.log("Query count: " + result.length);

  const targetNotebookGuid = await api().listNotebooks({
    callback: _.partial(fetchNotebookGuid, targetNotebook)
  });

  const actualNotesCount = await api().findNoteCountsWithNotebookGuid(
    targetNotebookGuid
  );

  t.assert(
    result.length - 1 === actualNotesCount,
    `Result length: ${result.length - 1}, Actual note count: ${actualNotesCount}`
  );

  t.pass();
});