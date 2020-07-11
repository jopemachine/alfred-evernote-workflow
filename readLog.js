const commandLog = require("./commandLog.json");
const _ = require("lodash");
const alfy = require("alfy");

const logs = _.map(commandLog, (log, date) => {
  const [keyword, ...query] = log.split(" ");

  let argument;
 
  switch (keyword) {
    case "ens":
      argument = `\${ens} ${query.join(" ")}`;
      break;
    case "ent":
      argument = `\${ent} ${query.join(" ")}`;
      break;
    case "enu":
      argument = `\${enu} ${query.join(" ")}`;
      break;
    case "enb":
      argument = `\${enb} ${query.join(" ")}`;
      break;
    case "enr":
      argument = `\${enr} ${query.join(" ")}`;
      break;
    case "eni":
      argument = `\${eni} ${query.join(" ")}`;
      break;
    case "ensync":
      argument = `\${ensync}`;
      break;
    case "entodo":
      argument = `\${entodo}`;
      break;
  }

  return {
    title: log,
    arg: argument,
    valid: true,
    autocomplete: log,
    subtitle: date,
  };
});

alfy.output(_.reverse(logs));
