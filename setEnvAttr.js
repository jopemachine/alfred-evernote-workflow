const { getEnv, getEnvAsObject } = require('./utils')
const fs = require('fs')
const envObj = getEnvAsObject('./.env')

// eslint-disable-next-line no-unused-vars
const [execPath, key, value] = process.argv.slice(1)

envObj[key] = value

fs.writeFileSync('.env', '\ufeff' + getEnv(envObj), { encoding: 'utf8' })
