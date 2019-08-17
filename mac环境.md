# mac环境

[参考这篇](https://sourabhbajaj.com/mac-setup/)

## 快捷键

- cmd + ctrl + space = 调出表情
- Ctrl + cmd + q = 锁屏

## mac设置

- 辅助功能》鼠标与触控板》触控板选项》启用拖移
- Keyboard > shortcuts > mission control
  Show desktop: false
  Show dashboard: false

- System perference > keyboard > shortcuts > screenshots

![image-20190801100813463](http://ww1.sinaimg.cn/large/006tNc79gy1g5jycdq20nj30no03cq3x.jpg)

截屏默认进入剪切板，而不是变成文件

### word clock

时钟屏保，可惜升级需要花钱。[下载](https://www.simonheys.com/wordclock/)

## 命令行

### [Iterm2](https://www.iterm2.com)下载

[参考](https://www.yuque.com/codingfanlt/note/iterm2)

- pointer > focus follows mouse

跟随鼠标激活命令行

- 修改全屏快捷键

![image-20190810164316058](http://ww3.sinaimg.cn/large/006tNc79gy1g5uoc5qwjpj30di01e0su.jpg)

- Profiles > keys > 右下角

![image-20190813101647849](http://ww3.sinaimg.cn/large/006tNc79gy1g5xu105krxj30g407yjvn.jpg)

这能让iterm用option来单词移动。

不过删除到行首就变成了是ctrl + u了。

- Command + ;  展示最近键入的命令
- cmd + shift + h，展示剪切板历史记录

### homebrew

[官网](https://brew.sh)，下载这个需要[翻墙](https://github.com/getlantern/download)

```shell
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### git

下了xcode自带git，或者：

```shell
brew install git
```

全局配置一下git的信息

```shell
git config --global user.name "joeyZhouYicheng"
git config --global user.email "joey.zhouyicheng@gmail.com"
```

### vim插件

```shell
curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
```

### zsh+美化

[oh my zsh](https://ohmyz.sh)（需要git）

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

[参考这篇文章](https://www.jianshu.com/p/9c3439cc3bdb)，装饰一下环境

[zsh主题汇总](https://birdteam.net/131798)

输入`vim ~/.zshrc`，找到ZSH_THEME来修改主题

我使用的是”**avit**“

![image-20190723112741683](http://ww2.sinaimg.cn/large/006tNc79gy1g59m2z2tncj30as0583yu.jpg)

![image-20190723113020430](/Users/joey/Library/Application Support/typora-user-images/image-20190723113020430.png)

大概是这种感觉。

### zsh插件

```shell
cd ~/.oh-my-zsh/custom/plugins/
```

进入插件的文件夹，然后在里面git clone

```shell
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions
```

第一个是代码高亮，第二个是命令补全

```shell
vi ~/.zshrc
```

打开设置，添加“zsh-autosuggestions”和“zsh-syntax-highlighting”。

![image-20190723113745087](http://ww2.sinaimg.cn/large/006tNc79gy1g59mcpwywwj30bo06ggly.jpg)

在最后一行添加：

source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

![image-20190723114124110](http://ww1.sinaimg.cn/large/006tNc79gy1g59mgj2c0cj30zu036mxh.jpg)



最后source一下，使其生效。

```shell
source ~/.zshrc
```

`:wq`保存并退出。

### autojump

只要去过的文件夹，比如`…/code`，那么输入`j code`就能过去了。[参考](https://www.cnblogs.com/LeeScofiled/p/7860144.html)

```shell
brew install autojump
```

要在 `.zshrc` 中找到 `plugins=`，在后面添加`autojump`

### powerline

```shell
pip install powerline-status --user
```

如果没装pip：

```shell
sudo easy_install pip
```

### mac文件命令

在命令行输入：

```shell
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write com.apple.finder AppleShowAllFiles -bool false
defaults write com.apple.finder AppleShowAllFiles YES
defaults write com.apple.finder AppleShowAllFiles NO
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES
```

其中缘由参考[这篇](https://note.youdao.com/ynoteshare1/index.html?id=e71d38e461e467ab916906d3ce75d5a2&type=note)的“六、命令行”

### alias

命令行的快捷方式，不用每次都输入一大堆。参考[这篇](https://note.youdao.com/ynoteshare1/index.html?id=8b2079aaf67494ac1bc15f61261ae813&type=note)

```shell
vim ~/.bashrc
```

即可编辑alias的快捷键

```shell
vim ~/.zshrc
```

在这个的头部追加

```shell
test -f ~/.bashrc  && source ~/.bashrc
```

这样每次开启都会跑一下bashrc了

### ag

```go
brew install ag
```

### neovim

[参考](https://www.jianshu.com/p/2f0ae9111fec)

```shell
brew install neovim
```

### The Fuck

打错了命令，fuck一下就能正确了

```shell
brew install the fuck
```

### tree

```shell
brew install tree
```

### bat

```shell
brew install bat
```

[介绍](https://juejin.im/post/5b042c31f265da0b80711510)就是一个比cat更好用的文件查看工具。

可以高亮代码。不过只能查看。

## golang环境

- [参考](https://blog.csdn.net/zxy_666/article/details/80182688)

- [参考2](https://www.jianshu.com/p/331692b0c83f)

```shell
brew install go
```

下载[goland](https://www.jetbrains.com/go/)来开发

## 软件

- 印象笔记
- ipic
- typora
  设置》编辑器》图片插入》通过ipic上传图片
- chrome

