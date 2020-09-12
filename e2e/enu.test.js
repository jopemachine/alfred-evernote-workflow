import test from 'ava';
import alfyTest from 'alfy-test';

test('"enu" result should contains resource url', async (t) => {
  const testTarget = alfyTest();

  const query = "naver";

  const result = await testTarget(`searchNote.js ${query} --sourceurl`);

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

    t.assert(
      item.mods.fn.subtitle !==
        'Source URL not exist',
      `item fn subtitle: ${item.mods.fn.subtitle}, query: ${query}`
    );

    t.assert(
      item.variables.noteUrl !==
        'Source URL not exist',
      `item fn subtitle: ${item.mods.fn.subtitle}, query: ${query}`
    );
  }

  t.pass();
});