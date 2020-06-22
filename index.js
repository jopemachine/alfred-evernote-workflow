#!/usr/bin/env node
const alfy = require('alfy');

const data = await alfy.fetch('https://jsonplaceholder.typicode.com/posts');

let items = alfy
  .inputMatches(data, 'title')
  .map(element => ({
    title: element.title,
    subtitle: element.body,
    arg: element.id
  }));

items = {
  title: "element.title,",
  subtitle: "element.body",
  arg: "element.id"
}


alfy.output(items);
