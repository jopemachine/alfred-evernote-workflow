const alfy = require('alfy');
const fs = require('fs');

const oauthConfig = {
  oauthToken: alfy.input
};

fs.writeFileSync('OAuth.json', '\ufeff' + JSON.stringify(oauthConfig, null, 2), { encoding: 'utf8' });