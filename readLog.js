const commandLog = require("./commandLog.json");
const _ = require("lodash");
const alfy = require("alfy");

const logs = _.uniqBy(_.reverse(_.map(commandLog, (logObj, date) => {
  const log = logObj.log;

  const [keyword, ...query] = log.split(" ");

  let title;
  let argument;

  switch (keyword) {
    case "ens":
    case "ent":
    case "enu":
    case "enb":
    case "enr":
    case "eni":
    case "enn":
      title = log;
      argument = `\${${keyword}} ${query.join(" ")}`;
      break;
    case "ensync":
    case "entodo":
      title = log;
      argument = `\${${keyword}}`;
      break;
    case "noteopen": {
      const noteTitle = logObj.options.title;
      title = `${keyword} ${noteTitle}`;
      argument = `\${${keyword}} ${query.join(" ")}`;
      break;
    }
  }

  return {
    title,
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

if (logs.length === 0) {
  alfy.output([
    {
      title: "There is no command log to show",
      arg: "error",
      autocomplete: "",
      subtitle: ``,
      icon: {
        "path": "./icon/warning.png"
      },
    },
  ]);
  return;
}

alfy.output(logs);
