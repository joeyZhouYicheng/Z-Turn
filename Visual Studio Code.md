# Visual Studio Code

## 设置

- Tab size : 2
- Snippet Suggestions： top
  自定义代码片段优先展示
- autosave：onfocuschange
- Code-runner: Clear Previous Output
  true
- Code-runner: Save File Before Run
  True

## 快捷键

- Toggle integrated terminal: cmd + shift + k
- View: show scm : cmd + shift + r
- run code: ctrl + r
  需要安装code runner
- stop code run : cmd + f12
- Unfold all: shift + cmd + =
- fold all: shift + cmd + -

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

## 插件

- Settings Sync
  同步设置到git
- Wrap Console Log Lite
  ![image-20190816155843388](http://ww2.sinaimg.cn/large/006tNc79gy1g61krp2m2hj30vs02kmxi.jpg)

以后只需要把光标放在变量上，摁一下`ctrl + cmd + l`，就能直接生成`console.log`了

