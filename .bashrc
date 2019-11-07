#### gopath
export GOPATH=$HOME/Work/go
export FLUTTERPATH=~/flutter/flutter/bin
export PATH=~/DB/mongodb-3.6.3/bin:$PATH:$GOPATH/bin:$FLUTTERPATH
export CDNROOT=~/workspace/ezstatic
export UATROOT=~/workspace/localezstatic
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
alias szsh='source ~/.zshrc'
alias al='alias'

## mtr
alias mtr='PATH=/usr/local/sbin:$PATH sudo mtr'
#export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
## git
alias cl="clear"
alias gis='git summary'
alias gl='gup'
alias gll='git pull'
alias gie='git effort'
alias gic='git count'
alias gbrd='git push origin :'
# 清除远在在本地存在，而远程已经删除的分支
alias grpo='git remote prune origin'
# 自动提交git的脚本
alias bg='bash git.sh'
alias ng='node git.js'
### 删除各种refs
alias gurd='git update-ref -d'
## brew
alias brs='brew services start'
alias bre='brew services stop'
alias brr='brew services restart'
alias brl='brew services list'
alias bri='brew install'
alias bres='brew search'
## node
alias ni='yarn'
alias ns='npm start '
alias nr='npm run '
alias nrf='npm run format '
alias nid='npm i -D'
alias nis='npm i -S'
alias nig='npm i -g'
alias nrm='npm remove'
alias ya='yarn'
alias yas='yarn add'
alias yad='yarn add --dev'
alias yag='yarn global add'
alias yrm='yarn remove'
## wx
alias wcl='/Applications/wechatwebdevtools.app/Contents/MacOS/cli'
## anyproxy
alias ap='anyproxy'
alias apm='anyproxy --rule /Users/ezbuy/anyproxy/miner.js'
alias apms='anyproxy --intercept --rule /Users/ezbuy/anyproxy/miner.js'

alias api='anyproxy --intercept' #启动AnyProxy，并解析所有https请求
alias app='anyproxy --port '
alias aps='anyproxy -i --ignore-unauthorized-ssl' ##忽略所有的证书认证的错误。
## proxy
alias pon='export http_proxy=127.0.0.1:1087;export https_proxy=$http_proxy'
alias poff='unset http_proxy;unset https_proxy'
# function proxy_off(){
#     unset http_proxy
#     unset https_proxy
#     echo -e "已关闭代理"
# }
# function proxy_on() {
#     export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
#     export http_proxy="http://127.0.0.1:1087"
#     export https_proxy=$http_proxy
#     echo -e "已开启代理"
# }
## python
# alias python='python3'
alias pi='pip install'
## ssh
alias ssh1root='ssh root@120.77.49.211'
alias ssh1='ssh www@120.77.49.211'
alias ssh2='ssh www@118.178.133.253'
alias ssh2root='ssh root@118.178.133.253'
alias sshhk='ssh www@47.90.101.213'
alias sshhkroot='ssh root@47.90.101.213'
alias sshgdg='ssh root@103.29.71.71'
alias js='ssh ops'
## ide
alias tree2='tree -L 2'
alias gol='open -a GoLand '
alias ochr='open -a "google chrome" -n '
alias al='alias | grep'
alias vsc='open -a "visual studio code" '
alias leet='/Users/joey/Study/leetcode/code'
alias xiao='~/Work/go/src/xiao'
alias msq='mycli -u root -p 12345678'
alias ui="/Users/joey/Library/Android/sdk/tools/bin/uiautomatorviewer"
## make
alias mp='make publish'
alias mpl="make publishLast"
## docker
alias dor='docker'
alias dom='docker image'
alias domp='docker image pull'
alias doc='docker container'
alias docl='doc ls '
alias docla='doc ls  --all'
alias docr='doc run'
alias dock='doc kill'
## tmux 命令
alias tm='tmux '
alias tsh='tmux attach' #打开隐藏的tmux命令``
## node
alias bn='babel-node'
alias tn="ts-node -O '{\"module\": \"commonjs\"}'"
alias mc='musicbox'
alias nc='node code.js'
## go
alias gor='go run'
alias goc="go run code.go"
alias gt='go test'
## xiao test
alias xt='go test -short $(go list ./...) | grep -v "no test"'
## other
alias pts='protoc --plugin=protoc-gen-json-ts=./node_modules/protoc-gen-json-ts/bin/protoc-gen-json-ts --json-ts_out=:src/api -I apidoc/proto  '
alias psg='ps -a | grep'
alias agg='alias | grep'
alias bsh='cat ~/.bashrc'
alias j='z'
alias vim='nvim'
alias vi='nvim'
alias vzsh='nvim ~/.zshrc'
alias vbsh='nvim  ~/.bashrc'
alias sbsh='source ~/.bashrc' ### 重新编译bash
alias vvrc='nvim ~/.vimrc'
# eval $(thefuck --alias)
alias ez='cd ~/workspace/ && ls'
alias ezt='cd ~/workspace/'
alias wz='cd ~/work/ && ls'
alias wzt='cd ~/work/'
alias ll='ls -l'
alias la='ls -a'
alias javac="javac -j-dfile.encoding=utf8"
alias grep="grep --color=auto"
alias f='find . -name '
alias -s html=nvim   # 在命令行直接输入后缀为 html 的文件名，会在 textmate 中打开
alias -s rb=nvim     # 在命令行直接输入 ruby 文件，会在 textmate 中打开
alias -s py=python3       # 在命令行直接输入 python 文件，会直接运行
alias -s js=node
alias -s go='go run'
alias -s json=nvim
alias -s c=nvim
alias -s java=nvim
alias -s txt=nvim
alias -s ts=vsc
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
# trash
alias rm="trash"
alias cp="cp -i"
# eval "$(pyenv init -)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

