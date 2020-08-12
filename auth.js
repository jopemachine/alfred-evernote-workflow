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

      try {
        const userId = (await api.getUser()).id.toString();
        const userShardId = (await api.getUser()).shardId.toString();
        const systemLocale = await osLocale();

        oauthConfig.userId = userId;
        oauthConfig.userShardId = userShardId;
        oauthConfig.systemLocale = systemLocale;
        oauthConfig.initialCaching = "false";
  
        fs.writeFileSync(
          "authConfig.json",
          "\ufeff" + JSON.stringify(oauthConfig, null, 2),
          { encoding: "utf8" }
        );

      } catch (err) {
        console.log("error");
      }

    })();
  }
);

