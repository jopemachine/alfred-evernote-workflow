import fs from 'fs';
import test from 'ava';

test("Template file check", async (t) => {
  t.assert(fs.existsSync("./searchConfig.json"));
  t.assert(fs.existsSync("./search_content/htmlCacheLogTemplate.json"));
  t.assert(fs.existsSync("./search_content/thumbNailPathTemplate.json"));
});

test("Other file check", async (t) => {
  t.assert(fs.existsSync("./icon.png"));
  t.assert(fs.existsSync("./LICENSE"));
  t.assert(fs.existsSync("./envTemplate"));
  t.assert(fs.existsSync("./README.md"));
  t.assert(fs.existsSync("./info.plist"));
  t.assert(fs.existsSync("./PRIVACY_POLICY.md"));
  t.assert(fs.existsSync("./initialCachingDescription.html"));
});