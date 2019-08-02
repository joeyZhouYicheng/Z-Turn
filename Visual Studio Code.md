# Visual Studio Code

## 设置

- Tab size : 2
- Snippet Suggestions： top
  自定义代码片段优先展示
- autosave：onfocuschange
- run code: ctrl + r
  需要安装code runner

## 快捷键

- Toggle integrated terminal: cmd + shift + k
- View: show scm : cmd + shift + r

## 用户代码片段(user snippets)

Javascript:

```JSON
{
	"JSON console": {
		"prefix": "log",
		"body": [
			"console.log(\"$1\", JSON.stringify($1));",
		],
		"description": "JSON console"
	},
  "log with label": {
		"prefix": "log",
		"body": [
			"console.log(\"$1\", $1);",
		],
		"description": "log with label"
	},
}
```

