# Alfred-evernote-workflow

Evernote workflow for Alfred 4

## How to install

1. **Install package**
```
$ npm install --global alfred-evernote-flow
```

*You need to [Node.js](https://nodejs.org) 4+ and the Alfred [Powerpack](https://www.alfredapp.com/powerpack/) to use this package*

2. **Type `en > login`  to get your API key**

Type `en > login` and get your OAuth key.
(Evernote use OAuth 1.0)

*You need to your Evernote account to proceed with the above*.

3. **Type `en > auth 'your issued API key'`**

Alfred-evernote-workflow use your token to authenticate your account.


4. **Done!**

## How to use

In Alfred, type below query and <kbd>Enter</kbd>

You can use below feature.

|  Keyword  | Argument |   Desc   |
|:----:|:----:|:----:|
|  `en`  | No argument |   Switch to your Evernote App   |
|  `en > login`  |  No argument  |    This command is required only for the initial authentication process.    |
|  `en > auth`  | { your api key } |    This command is required only for the initial authentication process.    |
|  `sync`  |   No argument   |    Sync Evernote    |
|  `todo`  |   No argument   |    Search for notes with check boxes.    |
|  `clip`  |   No argument   |    Adds the text from the current clipboard to the Evernote as a new note.    |
|  `oclip`  |   No argument   |    Adds the text from the current clipboard to the Evernote as a new note and Open the note.    |
|  `ens`  | { content to search } |    Search the Evernote's notes    |
|  `tag`  | { tag name } |    Search Evernote's tag. You can filter notes by entering on that tag.    |
|  `tagc`  | { note title to create } |  |

## Options

You can change various option, including search options by changing value of `config.json`

<br>

<hr>

* **search_max_count**

| Possible Value | Desc |
|:----:|:----:|
| "search_max_count" | {number} |

Determines how many items you want to search for in the `ens` command.

<hr>

* **search_subtitle**

| Possible Value | Desc |
|:----:|:----:|
| "tags" |  In the search results subtitle, specify the tags that contain the note. |
| "created_time" | In the search results subtitle, specify the date when the note was created. |
| "last_edited_time" |  In the search results subtitle, specify the date when the note was updated.  |
| "content_length" |  In the search results subtitle, specify the length of the note |
| "notebook" |   In the search results subtitle, specify the notebook name of note |

In the `ens` search results subtitle, specify which item Alfred show.

<hr>

* **search_include_options**

Specifies the items to include in the `ens` search results.

<hr>

* **tag_search_subtitle**

| Possible Value | Desc |
|:----:|:----:|
| "none" | none |
| "parent_tag" | In the search results subtitle, specify parent's tag of the tag |
| "note_count" |  In the search results subtitle, specify number of notes that the tag has |

In the `tag` search results subtitle, specify which item Alfred show.

<hr>

* **cliped_note_tag**

Tag notes that you clip with the `clip`, `uclip`, `oclip` command with that name

<hr>

* **subtitle_restrictor**

To refrain from frequent occurrence of api rate, it was made to make subtitle api calls only less than below a certain number

## License

MIT © [jopemachine](https://github.com/jopemachine/Alfred-evernote-workflow)
