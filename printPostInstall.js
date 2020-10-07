const boxen = require('boxen')

const text = `
Alfred-evernote-workflow installed successfully!
Please get your API token that this workflow use.
You can proceed with this process with en > gettoken and en > authtoken <issued_token>.
See README.md for more details.
https://github.com/jopemachine/alfred-evernote-workflow
`

console.log(boxen(text, { padding: 1, margin: 1, borderStyle: 'double' }))
