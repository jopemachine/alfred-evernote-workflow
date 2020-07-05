const clipboardy = require('clipboardy');
const alfy = require('alfy');
const { makeScreenFilterJson } = require('./utils');

clipboardy.read().then(data => {
  const title = alfy.input === "{clip}" ? "Clip" : "Clip and Open";
  const strs = data.split('\n');

  const subtitle = strs.length > 1 ? `${strs[0]} ...` : data;

  alfy.output(makeScreenFilterJson({
    title,
    arg: title,
    valid: true,
    autocomplete: title,
    subtitle: `Clipboard: "${subtitle}"`,
  }));
});