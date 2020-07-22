# Alfred-evernote-workflow

Evernote workflow for Alfred 4

<p align="center">
<img src="./imgs/demo.gif" width = "75%" height="75%" />
</p>

## Feature

* *View your latest notes*

<p align="center">
<img src="./imgs/ens.png" width = "60%" height="60%" />
</p>

* *Search evernote with keyword*

<p align="center">
<img src="./imgs/ens_Javascript.png" width = "60%" height="60%" />
</p>

* *Search evernote with `Advanced Search Syntax`*

<p align="center">
<img src="./imgs/ens_tagJavascript.png" width = "60%" height="60%" />
</p>

<p align="center">
<img src="./imgs/ens_Java.png" width = "60%" height="60%" />
</p>

* *View your all tags*

<p align="center">
<img src="./imgs/tag.png" width = "60%" height="60%" />
</p>

* *Search your tag*

<p align="center">
<img src="./imgs/tag_Javascript.png" width = "60%" height="60%" />
</p>

* *View and execute your usage log*

<p align="center">
<img src="./imgs/log.png" width = "60%" height="60%" />
</p>

## Prerequisite

* Evernote Client on macOS

* Alfred powerpack

* Node JS

## How to install

1. **Install package**

```
$ npm install --global alfred-evernote-workflow
```

If you have problem with installation with above command,

Please refer [follow issue](https://github.com/jopemachine/alfred-evernote-workflow/issues/8).

And let me know if the problem still remains or if there are other issues.

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

### en

Switch to Evernote App.

### en > authtoken { Argument }

Argument: `Your api key`

This command is required only for the initial authentication process.

Save the token value obtained from gettoken to a file.

### en > gettoken

This command is required only for the initial authentication process.

The command opens Chrome to the Evernote site.

When you log in to the site and press the authentication button, `oauthToken` is printed in json format.

Pass the value as a argument in the authoken command.

### en > help

Open Github link to view README.md

### en > sync

Sync Evernote Client.

### en > savecache

Save html cache from your Evernote client. 

The command is executed automatically when the package is first installed.

If the command is running, you will not be able to run note searches with the `ens` command.

In this case, the `ens` command displays the number of notes that are cached.


### en > clearcache

Clear all your html caches.

### entodo

Search for notes with check boxes.

### encl 

Adds the text from the current clipboard to the Evernote as a new note. 

### enclo

Adds the text from the current clipboard to the Evernote as a new note and Open the note. 

### enc { Argument }

Argument: `note content`

Create note by text.

### enct

Argument: `note title to create`

Search tag name and create note by the selected tag and note content if you want

### enu { Argument }

Argument: `url to search with`

Search Notes by url

### ens { Argument }

Argument: `content to search`

Search the Evernote's notes.

To change the search option, see the topic Options.

### ent { Argument }

Argument: `tag name`

Search Evernote's tag. You can filter notes by entering on that tag.

If you select the tag, the notes with the tag will be searched.

You can search these notes again.

### enr { Argument }

Argument: `content to search`

Search only for notes that have reminder.

### enb { Argument }

Argument: `notebook name`

Search notes by Notebook.

If you select the notebook, the notes in that notebook  will be searched.

You can search these notes again.

### enl

Check your command usage log.

By selecting the corresponding log, you can execute the command.

The maximum number of logs to be stored can be specified in Options.

And this command displays the same command only once.


### __ens { Argument }

Argument: `content to search`

Search your note with applescript. The command is very slow, but does not use api call in sdk, so it can be used even if api call is restricted. Search option does not apply on this command.

## Options

You can change various option, including search options by changing value of `config.json`

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

* **search_order**

| Possible Value | Desc |
|:----:|:----:|
| "created" | Search notes in the order in which they were created. |
| "updated" | Search notes in the order in which they were updated. |
| "relevance" | Search notes in the order in their relevance. |
| "title" | Search notes in the order in their title. |

<hr>

* **tag_search_subtitle**

| Possible Value | Desc |
|:----:|:----:|
| "none" | none |
| "parent_tag" | In the search results subtitle, specify parent's tag of the tag |
| "note_count" |  In the search results subtitle, specify number of notes that the tag has |

In the `ent` search results subtitle, specify which item Alfred show.

<hr>

* **search_include_options**

Specifies the items to include in the `ens` search results.

if you're sure that some attribute is useless in your search, you can optimize your search by excluding the attribute (by setting the value false).

<hr>

* **cliped_note_tag**

Tag notes that you clip with the `encl`, `enclo` command with that name.

<hr>

* **subtitle_restrictor**

To refrain from frequent occurrence of Evernote sdk's api rate, subtitle api calls are restricted above a certain number.


* **cache_save_count**

Determine how many logs you want to save and display in `enl` command.

## License

MIT © [jopemachine](https://github.com/jopemachine/Alfred-evernote-workflow)
