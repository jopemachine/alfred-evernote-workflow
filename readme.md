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

In Alfred, type below query, <kbd>Enter</kbd>.

You can use below feature.

| Keyword | Desc |
|:----:|:----:|
| en | Switch to your Evernote App |
| en > login | This command is required only for the initial authentication process. |
| en > auth | This command is required only for the initial authentication process. |
| en > sync | Sync Evernote |
| en > todo | Search for notes with check boxes. |
| clip | Adds the text from the current clipboard to the Evernote as a new note. |
| oclip | Adds the text from the current clipboard to the Evernote as a new note and Open the note. |
| ens | Search the Evernote's notes |
| tag | Search Evernote's tag. You can filter notes by entering on that tag. |
| tagc |  |




## License

MIT © [jopemachine](https://github.com/jopemachine/Alfred-evernote-workflow)
