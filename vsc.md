# vsc

### 用户代码片段

vsc左下角可以设置代码片段(user snippets)，这样在输入命令的时候可以直接补全想要的代码。

![image-20190702131536862](http://ww1.sinaimg.cn/large/006tNc79ly1g4lf642vgzj304z071q4i.jpg)

```json
{
  "Joey's log": {
    "prefix": "log",
    "body": ["console.log(\"=test=>\", \"${name}\", ${name});"],
    "description": "Log in test filter"
  },
  "Joey's log simply": {
    "prefix": "log",
    "body": ["console.log(\"=test=>\", \"${name}\");"],
    "description": "easily log"
  },
  "var&function": {
    "prefix": "function",
    "body": ["var ${name} = function(${params}){", "\t$0", "}"],
    "description": "var&function"
  }
}
```

