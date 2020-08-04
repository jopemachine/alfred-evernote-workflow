const alfy = require('alfy');
const clipboardy = require('clipboardy');

clipboardy.read().then(data => {
  const title = alfy.input === "{clip}" ? "Clip" : "Clip and Open";
  const strs = data.split('\n');

  const subtitle = strs.length > 1 ? `${strs[0]} ...` : data;

  alfy.output([{
    title,
    arg: title,
    valid: true,
    autocomplete: title,
    subtitle: `Clipboard: "${subtitle}"`,
    icon: {
      "path": "./icon/clipIcon.png"
    }
  }]);
});