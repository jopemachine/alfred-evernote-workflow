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

module.exports = {
  makeScreenFilterJson,
  catchThriftException,
  handleSubtitleRestrictor
}