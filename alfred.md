# alfred

alfred完成了哪些功能？

- 扩展了Spotlight，不仅能搜文件、打开应用、做计算题，也能直接搜谷歌
- 快捷键。用手敲快捷键很累，尤其为了避免冲突，要一口气摁四个键的时候。
  alfred相当于能通过输入命令，来运行快捷键的功能。
- workflow，mac自带workflow，不过要用applescript来写，而alfred不仅能调用AppleScript，还能调用node或python脚本，来完成更加厉害的事情。
- 剪切板历史，还能拼接剪切板上的字段

## 设置

### general

- Startup，当然要开机启动
- Hotkey，因为一直敲option+space，左手大拇指很累也很不方便。所以我改成双击ctrl了，这样就改用小指了。（ctrl和大写锁定已换）



### features

#### default results

- Search scope里面加上了一些常用的路径，这样搜索的时候就能在里面了

#### File search

- Navigation ，用来`open`找文件的时候导航。
  我把两个shortcuts都点了，这样能通过方向键来进入文件夹，`option+⬆️`能暂存文件批量操作。

#### web search

把一些不用的给disable了

#### Web bookmarks

点了也调不出来。。就禁了

#### Clipboard history

- history

非常有用的功能，能召唤出剪切板的历史记录，第一排就全点了。

- merging

如果复制的时候摁了`cmd +c+c`，就能把当前复制的内容，贴到最新一个剪切板的后面。感觉很酷（虽然没用到过）

#### snippets

苹果自带，就没开。

#### system

screen saver经常要用，就改成了sss

#### terminal

alfred的神技能，`>`就能直接使用命令行。

不过默认是自带的terminal，改成召唤iterm2，需要把`application`改成`custom`，然后贴上`applescript`，见下文唤醒iterm2



### workflows

这也是神功能，能直接调python或js或bash或applescript的脚本，很酷。

我就在网上下了一些脚本。

- fixum
  脚本有问题，能通过这个更新一下
- Open in terminal
  搜索到的文件夹，能直接在iterm2中打开，很刺激。
- packal search
  workflows都在上面了，下一个方便搜索
- search Evernote
  大象玩家必备，直接搜印象笔记
- terminal finder
  finder中打开的文件夹，能直接在iterm2当中进入这个路径，很刺激
- 自定义了许多webpage，因为bookmarks不好用，就手写了一些常用网站，直接键入打开。



### appearance

macos的就不错，我把颜色调深了一点，对比度就没那么高，看起来顺眼了一点



### advanced

- force keyboard: ABC
  打开默认输入英文，免去切换输入法的困扰



### 唤醒iterm2

```aps
on alfred_script(q)
    if application "iTerm2" is running or application "iTerm" is running then
        run script "
            on run {q}
                tell application \"iTerm\"
                    activate
                    try
                        select first window
                        set onlywindow to true
                    on error
                        create window with default profile
                        select first window
                        set onlywindow to true
                    end try
                    tell the first window
                        if onlywindow is false then
                            create tab with default profile
                        end if
                        tell current session to write text q
                    end tell
                end tell
            end run
        " with parameters {q}
    else
        run script "
            on run {q}
                tell application \"iTerm\"
                    activate
                    try
                        select first window
                    on error
                        create window with default profile
                        select first window
                    end try
                    tell the first window
                        tell current session to write text q
                    end tell
                end tell
            end run
        " with parameters {q}
    end if
end alfred_script
```

