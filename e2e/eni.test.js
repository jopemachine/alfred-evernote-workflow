import test from 'ava';
import alfyTest from 'alfy-test';

test('"eni" result should contains input keyword', async (t) => {
  const testTarget = alfyTest();

  const query = "alfred";

  const result = await testTarget(`searchNote.js '${query}' --intitle`);

  let first = true;

  if (!result[0].valid) {
    t.fail("Auth failed!");
    return;
  }

  console.log("Query count: " + result.length);

  for (let item of result) {
    // first record shows log meaning No notes found or log showing note count
    if (first) {
      first = false;
      continue;
    }

    t.assert(item.title.toLowerCase().includes(query.toLowerCase()) === true);
  }

  t.pass();
});
