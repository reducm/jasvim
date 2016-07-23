# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="kolo"
#ZSH_THEME="gnzh"
#ZSH_THEME="powerline"
ZSH_THEME="kolo"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rails ruby git go)

source $ZSH/oh-my-zsh.sh
#source ~/.bashrc
alias -g gac="git add . -v && git commit -m "
alias -g gco="git checkout "
alias -g beg='bundle exec guard'
alias -g bec='bundle exec '
alias -g k9="killall -9"
alias -g gvim='gvim -f'
alias -g t='tmux'
alias -g e='exit'
alias redis='redis-server /etc/redis.conf'
alias zr="zeus rspec spec/"
alias sqlmap="python ~/railstest/sqlmap-dev/sqlmap.py"
#PS1="%n: %~%#"
#PS1="%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%~%{$reset_color%} #"
# Customize to your needs...
unsetopt correct_all
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR=vim
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export GVM_ROOT=/Users/jojo/.gvm
. $GVM_ROOT/scripts/gvm-default
export GOPATH=/Users/jojo/gotest
