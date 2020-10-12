const isTravis = require('is-travis')

const {
  authenticationNotProgressed
} = require('./utils')

if (!isTravis) {
  require('dotenv').config()
}

if (process.env.oauthToken === '-1') {
  authenticationNotProgressed()
}
