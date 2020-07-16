const commandLog = require("./commandLog.json");
const _ = require("lodash");
const alfy = require("alfy");

const logs = _.uniqBy(_.reverse(_.map(commandLog, (log, date) => {
  const [keyword, ...query] = log.split(" ");

  let argument;
 
  switch (keyword) {
    case "ens":
    case "ensf":
    case "ent":
    case "enu":
    case "enb":
    case "enr":
    case "eni":
      argument = `\${${keyword}} ${query.join(" ")}`;
      break;
    case "ensync":
    case "entodo":
    case "enc":
    case "enct":
    case "encl":
    case "enclo":
      argument = `\${${keyword}}`;
      break;
  }

  return {
    title: log,
    arg: argument,
    valid: true,
    autocomplete: log,
    subtitle: date,
    icon: {
      "path": "./icon/log.png"
    },
    text: {
      "copy": log,
      "largetype": log
    }
  };
})), item => item.title);

alfy.output(logs);
