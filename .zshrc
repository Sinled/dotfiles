# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

DEFAULT_USER="SD"

# stop bailing on the command when it fails to match a glob pattern
setopt NO_NOMATCH

# prevent npm form crushing with "to many open files"
ulimit -n 10000

# alias for editor
alias editor=subl3
alias e=editor

# lock
alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# npm
alias npmu="npm-check-updates -u && npm install"

# Example aliases
alias zshconfig="editor ~/.zshrc"
alias zshreloadconf="source ~/.zshrc "
alias ohmyzsh="editor ~/.oh-my-zsh"
alias gitconfig="editor ~/.gitconfig"
alias gitexclude="editor .git/info/exclude"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# simple server
alias server="python -m SimpleHTTPServer 8081"
alias run-mysql-server="mysql.server start"


# iterm tab color
# usage >> tab-color 255 0 0
tab-color() {
    echo -ne "\033]6;1;bg;red;brightness;$1\a"
    echo -ne "\033]6;1;bg;green;brightness;$2\a"
    echo -ne "\033]6;1;bg;blue;brightness;$3\a"
}

tab-reset() {
    echo -ne "\033]6;1;bg;*;default\a"
}


#git aliases

alias glog='git log --graph --pretty=format:"%C(yellow)%h %C(white)- %ar, %C(cyan)[%an] %C(white normal): %s"'


# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git python brew osx sublime npm forklift pip fabric django ruby mysql)

# Customize to your needs...
export PATH="/Users/SD/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
source $ZSH/oh-my-zsh.sh
# source /usr/local/bin/virtualenvwrapper.sh
# export WORKON_HOME=$HOME/dev/Projects/.virtualenvs
export PROJECT_HOME=$HOME/dev/Projects
export ESPORTS_HOME=$HOME/dev/Projects/wargaming/esports_git
export EDITOR=e
export VAGRANT_DEFAULT_PROVIDER=parallels

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
