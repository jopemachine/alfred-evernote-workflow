const alfy = require('alfy');
const fs = require('fs');
const osLocale = require('os-locale');

const oauthConfig = {
  oauthToken: alfy.input
};

fs.writeFile(
  "authConfig.json",
  "\ufeff" + JSON.stringify(oauthConfig, null, 2),
  { encoding: "utf8" },
  () => {
    (async function () {
      const api = require('./api');

      const userId = (await api.getUser()).id;
      const userShardId = (await api.getUser()).shardId;
      const systemLocale = await osLocale();

      oauthConfig.userId = userId;
      oauthConfig.userShardId = userShardId;
      oauthConfig.systemLocale = systemLocale;

      fs.writeFileSync(
        "authConfig.json",
        "\ufeff" + JSON.stringify(oauthConfig, null, 2),
        { encoding: "utf8" }
      );
    })();
  }
);

