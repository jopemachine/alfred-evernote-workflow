JsOsaDAS1.001.00bplist00�Vscript_�// Applescript (Javascript)

function handleInput(str) {
  const re = /\$\{.*\}/;
  const [first, ...query] = str.split(" ");

  if(re.test(first)) {
    return query.join(" ");
  }

  return str;
}


function run(input) {

if (!input) input = "";

var evernote = Application('Evernote');
evernote.activate();

const query = input.length === 1 ? input.toString() : input[1].toString();

var note = evernote.findNote(query);
evernote.openNoteWindow({ with: note });

}                              � jscr  ��ޭ