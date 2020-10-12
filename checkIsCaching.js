const fs = require('fs')
const alfy = require('alfy')

if (fs.existsSync('./Caching')) {
  alfy.output([
    {
      valid: true,
      title: 'Please wait until the caching process is finished...',
      arg: 'error',
      autocomplete: '',
      subtitle: 'This work could take several minutes.'
    }
  ])

  process.exit()
}
