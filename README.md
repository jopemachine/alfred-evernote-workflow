<h1 align="center">
  <a href="https://www.npmjs.com/package/alfred-evernote-workflow">
		Alfred-evernote-workflow<br>
	  <img src="https://img.shields.io/npm/dt/alfred-evernote-workflow" alt="NPM Release">
	  <img src="https://img.shields.io/github/license/jopemachine/alfred-evernote-workflow.svg" alt="License">
	  <img src="https://api.travis-ci.com/jopemachine/alfred-evernote-workflow.svg" alt="BuildStatus">
  </a>
</h1>

[![NPM](https://nodei.co/npm/alfred-evernote-workflow.png)](https://nodei.co/npm/alfred-evernote-workflow/)

Evernote Legacy version's workflow for Alfred 4

* *Fast search using [Evernote sdk](https://github.com/evernote/evernote-sdk-js)*
* *Preview feature using caching.*
* *Supports thumbnail feature for notes with pictures.*
* *You can change your search details.*

<p align="center">
<img src="./imgs/demo.gif" width = "75%" height="75%" />
</p>

## 📋 Features

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

* *Preview your note in alfred*

<p align="center">
<img src="./imgs/preview.png" width = "60%" height="60%" />
</p>

Alfred-evernote-workflow caches note content and resources from the Evernote client and uses them for previews.

In Preview, you can view the contents and images of your notes.


## 📌 Prerequisite

The prerequisites below are required to use that package.

* Node JS

* [Evernote Legacy Client](https://help.evernote.com/hc/en-us/articles/360052560314) on macOS

* [Alfred powerpack](https://www.alfredapp.com/powerpack/)

Note that your Evernote Client should be legacy version.

(You can use legacy version's evernote with latest version's evernote)

And don't forget to login into Evernote client and sync should be completed.

##  🔨 How to install

1. **Download [Evernote Legacy Client](https://help.evernote.com/hc/en-us/articles/360052560314) and move it to `/Applications` folder and open it.**

2. **Install package by npm**

```
$ npm install --global alfred-evernote-workflow
```

If you have problem with installation with above command,

Please refer [these installaion issues](https://github.com/jopemachine/alfred-evernote-workflow/issues/8).

And let me know if the problem still remains or if there are other issues.

If you want to install this package by not through NPM, you can download workflow file in [Packal](https://www.packal.org/workflow/alfred-evernote-workflow).

3. **`en > gettoken` + <kbd>Enter</kbd>  to get your API key**

Type `en > gettoken` and get your OAuth key.

When you log in to the site and press the authentication button, `oauthToken` is printed in json format.

Pass the value as an argument in the authtoken command.

If your token value is `S=s198:U=161532d:E=17b2ea2ba85:C=173d6f18bc8:P=185:A=jopemachine:V=2:H=2d4cbb615bb4caa3de0159c5ededeab2`, below page appears. 

(Note that this is just for giving an example. This is invalid token and you should issue your own token.)

<p align="center">
<img src="./imgs/gettoken.png" width = "60%" height="60%" />
</p>


4. **`en > authtoken {your issued API key}` + <kbd>Enter</kbd>**

Alfred-evernote-workflow uses your token to authenticate your account.

Please pass the token value as a factor without quotation marks as shown below.

<p align="center">
<img src="./imgs/authtoken.png" width = "60%" height="60%" />
</p>


5. **`en > savecache` + <kbd>Enter</kbd>**

If you want to not use the preview feature, you can skip this phase.

6. **Done!**

## 📗 How to use

In Alfred, type below query and <kbd>Enter</kbd>

You can use the below feature.

### en

Switch to Evernote App.

### en > authtoken { Argument }

Argument: {`Your api key`}

This command is required only for the initial authentication process.

This command save the token value obtained from gettoken to a file.

### en > gettoken

This command is required only for the initial authentication process.

The command opens Chrome to the Evernote site.

When you log in to the site and press the authentication button, `oauthToken` is printed in json format.

Pass the value as a argument in the authoken command.

### en > help

Open Github link to view README.md.

### en > sync

Sync Evernote Client.

### en > savecache

Alfred-evernote-workflow use html cache to enable note preview feature.

This command save html caches of all of notes from your Evernote client. 

When the command is running, you are not able to run note searches with the `ens` command.

In this case, the `ens` command displays the number of notes that are cached to show you progress.

If caching is not done properly for some reason, you can use `en > clearcache` and this command to perform initial caching.

After initial caching, the cache will be updated automatically.

### en > clearcache

Delete all of your html caches.

If you delete all the cache and use the `ens`, you are likely to be caught in the sdk's api call limit.

### en > clearlog

Clean all command logs

### entodo

Search only for notes that have check boxes.

### encl 

Create a note from the text of clipboard.

### enclo

Create a note from the text of clipboard and Open the note.

### enclf

Create a note from the copied files and Open the note.


### enc { Argument }

Argument: {`note title >> note content`} or {`note content`}

Create note by text.

If your form of input is `enc note title >> note content`, your note to create's title will be `note title`, and content will be `note content`,

And your form of input is `enc note content`, your note content's content will be `note content`, and title will be present date's localeString.

### enct

Argument: {`note title >> note content`} or {`note content`}

Search tag name and create note by the selected tag and note content if you want.

If your form of input is `enc note title >> note content`, your note to create's title will be `note title`, and content will be `note content`,

And your form of input is `enc note content`, your note content's content will be `note content`, and title will be present date's localeString.


### enu { Argument }

Argument: {`url to search with`}

If no argument exist, search for all notes with source URL.

Search Notes by url.

### ens { Argument }

Argument: {`content to search`}

Search the Evernote's notes.

If no argument exist, search for the most recent notes (may vary depending on options)

To change the search option, see the topic *Options*.

* #### *Shift key* + <kbd>Enter</kbd>

You can invoke the Quicklook by pressing the shift key for the `ens` search results.

Quicklook displays the note in html format.

* #### *Fn key* + <kbd>Enter</kbd>

You can view the source URL for that note by pressing the Fn key for the search results in theens.

And you can open the source URL by chrome by entering the item.

If the note does not contain a sourceURL, you will receive an error notification.

### enn { Argument }

Argument: {`content to search`}

Search the Evernote's notes in your *Trash bin*.

The enter action for this command is to open the cache of the note in the Chrome browser.

(Not your Evernote client)


### ent { Argument }

Argument: {`tag name`}

Search Evernote's tag. You can filter notes by entering on that tag.

If argument not exist, search for all tags.

If you select the tag, the notes with the tag will be searched.

Then, you can search notes only having selected tag.

* #### *Command key* + <kbd>Enter</kbd>

By pressing the command key and pressing the entry, you can open the window for notes with that tag.

### enr { Argument }

Argument: {`content to search`}

Search only for notes that have reminder.

### enb { Argument }

Argument: {`notebook name`}

Search notes by Notebook.

If you select the notebook, the notes in that notebook will be searched.

If no argument exist, search for all notebooks.

You can search these notes again.

### enf { Argument }

1st Argument: {`file extension`}

2nd Argument: {`content to search`}

Search for notes with attachments of a specific extension.

Example:

```
// Search for pdf files with compiler in file name
enf pdf compiler
```

### enl

Check your command usage log.

By selecting the corresponding log, you can execute the command.

The maximum number of logs to be stored can be specified in Options.

This command displays the same command only once.

enl supported commands : `ens`, `ent`, `enf`, `enr`, `enb`, `enu`, `noteopen`, `en > sync`, `entodo`

### enap { Argument }

Argument: {`content to search`}

Append string to your selected note.

And enter an argument again (Content to append to selected note).

### enx { Argument }

Argument: {`content to search`}

Export the retrieved note to your Desktop path as html.


## 🔖 Search Options

You can change various option by changing value of `searchConfig.json`

<hr>

* **search_max_count**

Type: `number`

Determines how many items you want to search for with `ens` command.

<hr>

* **search_subtitle**

Type: `string (enum)`

| Possible Value | Desc |
|:----:|:----:|
| "tags" |  In the search results subtitle, specify the tags that contain the note. |
| "created_time" | In the search results subtitle, specify the date when the note was created. |
| "last_edited_time" |  In the search results subtitle, specify the date when the note was updated.  |
| "content_length" |  In the search results subtitle, specify the length of the note |
| "notebook" |   In the search results subtitle, specify the notebook name of note |

In the `ens` search results subtitle, specify which item Alfred show.

Note that some items may increase the api call of sdk, resulting in more sdk limit restrictions.

<hr>

* **search_order**

Type: `string (enum)`

| Possible Value | Desc |
|:----:|:----:|
| "created" | Search notes in the order in which they were created. |
| "updated" | Search notes in the order in which they were updated. |
| "relevance" | Search notes in the order in their relevance. |
| "title" | Search notes in the order in their title. |

<hr>

* **search_include_options**

Type: `object`

Specifies the items to include in the `ens` search results.

if you're sure that some attribute is useless in your search, you can optimize your search by excluding the attribute (by setting the value false).

<hr>

* **tag_search_subtitle**

Type: `string (enum)`

| Possible Value | Desc |
|:----:|:----:|
| "none" | none |
| "parent_tag" | In the search results subtitle, specify parent's tag of the tag |
| "note_count" |  In the search results subtitle, specify number of notes that the tag has |

In the `ent` search results subtitle, specify which item Alfred show.

Note that some items may increase the api call of sdk, resulting in more sdk limit restrictions.

<hr>

* **cliped_note_tag**

Type: `string`

Tag notes that you clip with the `encl`, `enclo` command with that name.

<hr>

* **subtitle_restrictor**

Type: `number`

To refrain from frequent occurrence of Evernote sdk's api rate, subtitle api calls are restricted above a certain number.

`tags`,`notebook` are affected by this value.

(Other values always displays subtitle)

<hr>

* **cache_save_count**

Type: `number`

Determine how many logs you want to save and display in `enl` command.

Duplicate commands are displayed only once.

<hr>

* **create_and_open**

Type: `boolean`

When you use the `enc`, `enct` command, you can decide if you want to open the note after creating it.

<hr>

* **using_preview**

Type: `boolean`

You can turn off caching feature by set this value false.

If this value is false, the html cache is not downloaded or updated.

The html cache is stored in search_content path.

Use the `en > clearcache` command to remove the cache already downloaded.

## License

MIT © [jopemachine](https://github.com/jopemachine/alfred-evernote-workflow)
