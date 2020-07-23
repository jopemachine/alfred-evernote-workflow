const alfy = require('alfy');
const fs = require('fs');

const oauthConfig = {
  oauthToken: alfy.input
};

fs.writeFile(
  "OAuth.json",
  "\ufeff" + JSON.stringify(oauthConfig, null, 2),
  { encoding: "utf8" },
  () => {
    (async function () {
      const api = require('./api');

      const userId = (await api.getUser()).id;
      const userShardId = (await api.getUser()).shardId;

      oauthConfig.userId = userId;
      oauthConfig.userShardId = userShardId;

      fs.writeFileSync(
        "OAuth.json",
        "\ufeff" + JSON.stringify(oauthConfig, null, 2),
        { encoding: "utf8" }
      );
    })();
  }
);

