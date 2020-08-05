const config = require('./searchConfig.json');
const AuthConfig = require("./authConfig.json");
const _ = require("lodash");

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

async function fetchTagGuid(targetName, tags) {
  let result = -1;
  _.transform(tags, (tags, tag) => {
    if (tag.name === targetName) {
      result = tag.guid;
      return false;
    }
    return true;
  });
  return result === -1 ? [] : [result];
}

function ab2str(buf) {
  // _.map() not working
  let result = "";
  for (let i = 0; i < buf.length; i++) {
    const newValue = buf[i] < 16 ? `0${buf[i].toString(16)}` : buf[i].toString(16);
    result += newValue;
  }
  return result;
}

const insertResource = (htmlStr) => {
  // <en-media hash="{hash}" type="image/png" />
  const imageCheckingRegexp = /(.*)\<en-media hash=\"(\w*)\" type=\"image\/([\w]*)\"(.*)/g;

  while (imageCheckingRegexp.test(htmlStr)) {
    // 1: pre string of en-media
    // 2: resource hash
    // 3: resource type
    // 4: post string of en-media
    htmlStr = htmlStr.replace(imageCheckingRegexp, `$1\<img src=\"_$2.$3\"$4`);
  }

  return htmlStr;
}

const catchThriftException = func => async (...args) => {
  try {
    return await func(...args);
  } catch (err) {
    if (err) {
      switch (err.errorCode) {
        case 2: {
          const title = "Not valid oauth token";
          return [
            {
              title,
              subtitle: "Please read README.md first",
              arg: "error",
              text: {
                copy: title,
                largetype: title,
              },
              icon: {
                path: "./icon/warning.png",
              },
            },
          ];
        }
        case 19: {
          const title = "Evernote sdk's ratelimit has reached its limit.";
          return [
            {
              title,
              subtitle: "Please try again in an hour.",
              arg: "error",
              text: {
                copy: title,
                largetype: title,
              },
              icon: {
                path: "./icon/warning.png",
              },
            },
          ];
        }
      }
    }
  }
};

const handleSubtitleRestrictor = func => async (count, ...args) => {
  if (count <= config.subtitle_restrictor) return await func(...args);
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

const getHtmlMetaData = ({ title, updated, created }) => {
  const locale = AuthConfig.systemLocale;

  const fontFamily =
    'font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;';

  return `<style>
img {
  max-width: 100%;
  height: auto;
}
</style>
<p id='title' style='font-size: 20; ${fontFamily}'>Title: ${title} </p>
<p id='editedDate' style='font-size: 20; ${fontFamily}'>Last Edited In: ${getLocaleString(
    updated,
    locale
  )}</p>
<p id='creationDate' style='font-size: 20; ${fontFamily}'>Created In: ${getLocaleString(
    created,
    locale
  )}</p>
<hr style='margin-bottom: 15;' /> 
  `;
};

const getLocaleString = (datetime, locale) => {
  const dateObj = new Date(datetime);

  const year = dateObj.getFullYear();
  const month = dateObj.getMonth() + 1;
  const day = dateObj.getDate();

  const hour =
      // AM 12
      dateObj.getHours() === 0 ? 12
      // PM 12
      : dateObj.getHours() === 12 ? 12
      // Other times
      : dateObj.getHours() % 12;

  const minute =
    dateObj.getMinutes() < 10
      ? `0${dateObj.getMinutes()}`
      : dateObj.getMinutes();
  const seconds =
    dateObj.getSeconds() < 10
      ? `0${dateObj.getSeconds()}`
      : dateObj.getSeconds();

  switch (locale) {
    case "ko-KR": {
      const ko_DayOfTheWeek = [
        "일요일",
        "월요일",
        "화요일",
        "수요일",
        "목요일",
        "금요일",
        "토요일",
      ];
      const isPM = dateObj.getHours() >= 12 ? "오후" : "오전";
      const dayOfTheWeek = ko_DayOfTheWeek[dateObj.getDay() % 7];
      return `${year}년 ${month}월 ${day}일 ${dayOfTheWeek} ${isPM} ${hour}:${minute}:${seconds}`;
    }

    default: {
      const en_DayOfTheWeek = [
        "Sunday",
        "Monday",
        "Tuesday",
        "Wednesday",
        "Thursday",
        "Friday",
        "Saturday",
      ];
      const en_MonthStr = [
        "December",
        "January",
        "Feburary",
        "March",
        "April",
        "May",
        "June",
        "July",
        "August",
        "September",
        "October",
        "November",
      ];

      const isPM = dateObj.getHours() >= 12 ? "PM" : "AM";
      const dayOfTheWeek = en_DayOfTheWeek[dateObj.getDay() % 7];
      const monthStr = en_MonthStr[month % 12];
      return `${dayOfTheWeek}, ${monthStr} ${day}, ${year} ${hour}:${minute}:${seconds} ${isPM}`;
    }
  }
}

module.exports = {
  ab2str,
  fetchTagGuid,
  replaceAll,
  handleInput,
  getTimeString,
  decideSearchOrder,
  catchThriftException,
  handleSubtitleRestrictor,
  insertResource,
  getHtmlMetaData
}