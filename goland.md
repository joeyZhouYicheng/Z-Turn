# goland

## 快捷键

运行：ctrl + shift + r

停止：cmd + f2

文件树：cmd+1

运行栏：cmd+4

整个函数上下移动：cmd + shift + up/down

收缩collaspe代码：cmd + -/+

收缩全部代码：cmd + shift + -/+

黏贴记录：cmd + shift + v



### 设置

- delete：ctrl + d
- Backspace: ctrl + h
- Delete to line end: cmd + k
- delete to line start : cmd + backspace
- add selection for next occurrence : cmd + d
- Terminal : shift + cmd + k
- move line up: option + up
- move line down : option + down
- Commit ：cmd + shift + r
- Split vertically: ctrl + shift + cmd + ➡️
- move right: ctrl + cmd + ➡️
- Unspilt: ctrl + cmd + ⬅️

- Close project: cmd + shift + w



[保存自动格式化](https://www.cnblogs.com/hcy-fly/p/8274336.html)：setting > tools > file watchers ，添加 go fmt，保存即可

## Plugins

### 主题

在`plugins`里面搜索`Material Theme UI `

![image-20190723173151929](http://ww1.sinaimg.cn/large/006tNc79gy1g59wl7mh7fj30n80dojst.jpg)

安装后根据提示一步步操作即可。

可以获得许多主题，来切换。

![image-20190723174113695](/Users/joey/Library/Application Support/typora-user-images/image-20190723174113695.png)

在设置的appearance里面，也可以重新设置一下



### mini map

在goland里面叫code glance

![image-20190726101559831](http://ww4.sinaimg.cn/large/006tNc79gy1g5d0umfpjdj30aa09gaal.jpg)

在代码的右边能看到一个小地图



### Gittoolbox

能看到谁开发的

![image-20190729103941163](http://ww3.sinaimg.cn/large/006tNc79gy1g5gie77fyuj30ab01umx2.jpg)



### rainbow brackets

不同括号的染色



### Auto-align

自动空格对齐



### Key promoter X

提示你操作的快捷键

## live templates

用户可以自定义代码片段。[参考](https://blog.csdn.net/fanrenxiang/article/details/80612588)

#### 加入打印的快捷方式：`pln`。

当我输入`pln`，就有提示能补全为`fmt.Println("",)`。然后字符串和变量同步填写

![image-20190723155658716](http://ww2.sinaimg.cn/large/006tNc79gy1g59tug80x9j31900kitbb.jpg)

具体是在下面这个表格定义的

- `Abbreviation`，是召唤出`Template text`的代码。

- `template`主要的编写规则如下：

`$var$`表明是一个叫`var`的变量。代码补全后，光标会落在此处。

`$end$`可以规定光标最后落在何处。这里没有用到。

- 最下面的`Applicable in`，可以选择这个补全代码在哪些地方有效。

这里选择的是在go语言下，在声明内部有效，其他地方无法召唤补全不出来。



还可以修改默认值

![image-20190729143638760](http://ww3.sinaimg.cn/large/006tNc79gy1g5gp8ptn6cj30we0eatbp.jpg)

默认值一定要加双引号才能使用

效果是这样的：

![image-20190729143708873](http://ww2.sinaimg.cn/large/006tNc79gy1g5gp98fw1xj30hi06kgly.jpg)



#### for循环默认添加Gosched

![image-20190725102632187](http://ww2.sinaimg.cn/large/006tNc79gy1g5bvjaenqwj306f01h3yf.jpg)

在两个for的后面都加了`runtime.Gosched()`

![image-20190725102647239](http://ww3.sinaimg.cn/large/006tNc79gy1g5bvji2fl7j30b903pglp.jpg)

为了不让for进入死循环，然后占死协程，进而占死线程。要给别的协程工作的空间。

