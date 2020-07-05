const config = require('./config.json');

const makeScreenFilterJson = ({ uid, type, title, subtitle, arg, autocomplete, icon }) => {
  return [
    {
      uid, type, title, subtitle, arg, autocomplete, icon
    }
  ]
}

const catchThriftException = func => async (...args) => {
  try {
    return await func(...args);
  } catch (err) {
    if (err) {
      switch (err.errorCode) {
        case 2:
          return makeScreenFilterJson({ title: "Not valid oauth token, please read README.md first" });
        case 19:
          return makeScreenFilterJson({ title: "Evernote sdk's ratelimit has reached its limit. Please try again in an hour." });
      }
    }
  }
};

const handleSubtitleRestrictor = func => async (count, ...args) => {
  if (count < config.subtitle_restrictor) return await func(...args);
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
  decideSearchOrder,
  catchThriftException,
  handleSubtitleRestrictor,
  makeScreenFilterJson,
}