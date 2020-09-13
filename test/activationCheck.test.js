const plist = require('plist');
const fs = require('fs');
import test from 'ava';

test('info.plist must be enabled', async (t) => {
    const myPlist = plist.parse(fs.readFileSync('./info.plist', 'utf8'));
    t.assert(!myPlist['disabled']);
});