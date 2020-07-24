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

const getTimeString = (updatedTimestamp) => {
  const dateObj = new Date(updatedTimestamp);

  const year = dateObj.getFullYear();
  let month = dateObj.getMonth() + 1;
  if (month < 10) month = '0' + month;
  let day = dateObj.getDate();
  if (day < 10) day = '0' + day;

  let time = dateObj.getHours() * 3600 + dateObj.getMinutes() * 60 + dateObj.getSeconds();

  if((1000 <= time) && time < 10000) time = '0' + time;
  else if((100 <= time) && time < 1000) time = '00' + time;
  else if((10 <= time) && time < 100) time = '000' + time;
  else if(time < 10) time = '0000' + time;

  const weightValue = `${year}${month}${day}${time}`;
  return parseFloat(weightValue);
}

const getHtmlMetaData = ({
  title,
  updated,
  created
}) => {
  const fontFamily = "font-family: \"Trebuchet MS\", \"Lucida Sans Unicode\", \"Lucida Grande\", \"Lucida Sans\", Arial, sans-serif;'";
  
  return `
  <p id='title' style='font-size: 20; ${fontFamily}>Title: ${title} </p>
  <p id='editedDate' style='font-size: 20; ${fontFamily}'>Last Edited In: ${new Date(updated).toLocaleString()}</p>
  <p id='creationDate' style='font-size: 20; ${fontFamily}'>Created In: ${new Date(created).toLocaleString()}</p>
  <hr style='margin-bottom: 15;' /> 
  `;
}

module.exports = {
  replaceAll,
  handleInput,
  getTimeString,
  decideSearchOrder,
  catchThriftException,
  handleNoteContentRestrictor,
  handleSubtitleRestrictor,
  makeScreenFilterJson,
  getHtmlMetaData
}