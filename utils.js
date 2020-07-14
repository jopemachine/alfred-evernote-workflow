const config = require('./config.json');

function replaceAll(string, search, replace) {
  return string.split(search).join(replace);
}

const handleInput = (str) => {
  const re = /\$\{.*\}/;
  const [first, ...query] = str.split(" ");

  if(re.test(first)) {
    return query.join(" ");
  }

  return str;
}

const getPageOffset = (str) => {
  const re = /\$\{moreSearch_(?<offset>[\d]*)\}/;

  const [first, ...query] = str.split(" ");

  if(re.test(first)) {
    const groups = str.match(re).groups;
    return parseInt(groups.offset);
  }

  return 0;
}

const makeScreenFilterJson = ({ uid, type, title, subtitle, arg, autocomplete, icon, text }) => {
  return [
    {
      uid, type, title, subtitle, arg, autocomplete, icon, text
    }
  ]
}

const catchThriftException = func => async (...args) => {
  try {
    return await func(...args);
  } catch (err) {
    if (err) {
      switch (err.errorCode) {
        case 2: {
          const title = "Not valid oauth token, please read README.md first";
          return makeScreenFilterJson({ 
            title,
            text: {
              "copy": title,
              "largetype": title
            },
            icon: {
              "path": "./icon/warning.png"
            },
          });
        }
        case 19: {
          const title = "Evernote sdk's ratelimit has reached its limit. Please try again in an hour.";
          return makeScreenFilterJson({ 
            title,
            text: {
              "copy": title,
              "largetype": title
            },
            icon: {
              "path": "./icon/warning.png"
            }
          });
        }
      }
    }
  }
};

const handleSubtitleRestrictor = func => async (count, ...args) => {
  if (count <= config.subtitle_restrictor) return await func(...args);
};

const handleNoteContentRestrictor = func => async (count, ...args) => {
  if (count <= config.note_count_restrictor) return await func(...args);
};

const decideSearchOrder = (option) => {
  // 'CREATED': 1,
  // 'UPDATED': 2,
  // 'RELEVANCE': 3,
  // 'UPDATE_SEQUENCE_NUMBER': 4,
  // 'TITLE': 5

  switch(option) {
    case "created":
      return 1;
    case "updated":
      return 2;
    case "relevance":
      return 3;
    case "title":
      return 5;
  }
}

module.exports = {
  replaceAll,
  handleInput,
  getPageOffset,
  decideSearchOrder,
  catchThriftException,
  handleNoteContentRestrictor,
  handleSubtitleRestrictor,
  makeScreenFilterJson,
}