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

alias go-jum="cd ~/dev/media_sapiens/jum/jum"
alias go-jum-client="cd ~/dev/media_sapiens/jum/jum/jum-client"
alias go-wimoto="cd ~/dev/media_sapiens/wimoto/wimoto"
alias go-fevent="cd ~/dev/media_sapiens/fevent-whitelabel/fevent-whitelabel"
alias go-desktop="cd ~/Desktop"
alias go-eductaion="cd ~/Dropbox/Education"

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

# color-ssh() {
#     if [[ -n "$ITERM_SESSION_ID" ]]; then
#         trap "tab-reset" INT EXIT
#         if [[ "$*" =~ "production|ec2-.*compute-1" ]]; then
#             tab-color 255 0 0
#         else
#             tab-color 0 255 0
#         fi
#     fi
#     ssh $*
# }
# compdef _ssh color-ssh=ssh

# alias ssh=color-ssh

#git aliases

# alias gs="git status"
alias glog='git log --graph --pretty=format:"%C(yellow)%h %C(white)- %ar, %C(cyan)[%an] %C(white normal): %s"'
# alias ga="git add"
# alias ga-all="git add ."
# alias gc-="git commit -m"
# alias gcAll-="git commit -am"
# alias gpullOriginMaster="git pull origin master"
# alias gpushOriginMaster="git push origin master"
# alias gd="git difftool"
# alias gds="git difftool --staged"
# alias gunstageFile-="git reset HEAD"
# alias gundoCommitSoft="git reset --soft HEAD^"
# alias gundoCommitHard="git reset --hard HEAD^"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git python brew osx sublime npm forklift pip fabric django ruby mysql)



# Customize to your needs...
export PATH="/usr/bin:/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/usr/X11/bin:/opt/local/bin:/usr/local/bin/sublime:/usr/local/git/bin:/Users/SD/bin/android-sdk-macosx/tools:/Users/SD/bin/android-sdk-macosx/platform-tools"
# export NODE_PATH="/usr/local/lib/node"
export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules
export PATH="$(brew --prefix josegonzalez/php/php54)/bin:$PATH"
source $ZSH/oh-my-zsh.sh
source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=$HOME/dev/media_sapiens/.virtualenvs
export PROJECT_HOME=$HOME/dev/media_sapiens
export ESPORTS_HOME=$HOME/dev/media_sapiens/wargaming/esports_git
export EDITOR=e
export VAGRANT_DEFAULT_PROVIDER=parallels

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
