const alfy = require('alfy');
const OAuth = require('./OAuth.json');
const Evernote = require("evernote");
const _ = require('lodash');

if(!OAuth) {
  return;
}

var authenticatedClient = new Evernote.Client({
  token: OAuth.oauthToken,
  sandbox: false,
  china: false,
});

const noteStore = authenticatedClient.getNoteStore();

noteStore.listTags().then((tags) => {
	let items = _.filter(tags, (tag) => {
		// alfy.input를 normalize 시켜서 인코딩을 맞춰줘야 한글로도 정상적으로 검색할 수 있다.
		const tagName = tag.name.toLowerCase();
		const input = alfy.input.normalize().toLowerCase();

		if (tagName.search(input) == -1) {
			return false;
		}
		return true;
	});

	const result = alfy.inputMatches(items, "name").map((tag) => ({
		title: tag.name,
		arg: tag.name,
		valid: true,
		autocomplete: tag.name,
		subtitle: `태그 이름 중 ${tag.name} 검색`,
	}));

	alfy.output(result);
});