# vsnotes

## ファイルパスとファイル名の設定

1. コマンドパレットから以下選択

```
open user settings (json)
```

2. 以下ペーストして保存

```json
{
    "vsnotes.defaultNotePath": "~/Dropbox/documents/vscode/memo/note/",
    "vsnotes.defaultNoteName": "note",
    "vsnotes.tokens": [

        {
            "type": "datetime",
            "token": "{dt}",
            "format": "YYYY-MM-DD",
            "description": "Insert formatted datetime."
        },
        {
            "type": "title",
            "token": "{title}",
            "description": "Insert note title from input box.",
            "format": "Untitled"
        },
        {
            "type": "extension",
            "token": "{ext}",
            "description": "Insert file vsnotes.",
            "format": "md"
        }
    ],
    "vsnotes.defaultSnippet": {
        "langId": "markdown",
        "name": "vsnotes"
    }
}
```

## テンプレートの設定

1. コマンドパレットから以下選択

```
configure user snippet > markdown
```

2. 以下ペーストして保存

```json
{
	"vsnote_template_note": {
	  "suffix": "_note",
	  "body": [
		"## todo\n",
		"## doing\n",
		"## done\n",
		"## next\n",
		"## learned\n"
	  ]
	}
}
```

3. user settings に以下を追加

```json
    "vsnotes.templates": [
        "note"
    ]
```

