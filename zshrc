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
alias -g gcm="git add . -v && git commit -m "
alias -g gco="git checkout "
alias -g beg='bundle exec guard'
alias -g bec='bundle exec '
alias -g k9="killall -9"
alias -g gvim='gvim -f'
alias -g t='tmux'
alias -g e='exit'
alias -g lg='lazygit'
alias -g ka="ps aux | grep await | awk '{print $2}' | xargs kill -9"
alias redis='redis-server /etc/redis.conf'
alias zr="zeus rspec spec/"
alias sqlmap="python ~/railstest/sqlmap-dev/sqlmap.py"
alias betty='/Users/jojo/betty/main.rb'
alias psql='/Applications/Postgres.app/Contents/Versions/9.6/bin/psql'
alias yu='yarn unittest '
alias yui='yarn unittest --inspect-brk '
#PS1="%n: %~%#"
#PS1="%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%~%{$reset_color%} #"
# Customize to your needs...
unsetopt correct_all
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR=vim
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
#export GVM_ROOT=/Users/jojo/.gvm
#. $GVM_ROOT/scripts/gvm-default
export GOROOT=/usr/local/go
export PATH=$PATH:$GOPATH/bin
export GOPATH=$GOPATH:/Users/jojo/yiwu/just-go

test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"


export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"


function proxy_off(){
  unset http_proxy
  unset https_proxy
  unset all_proxy
  echo -e "已关闭代理"

}
function proxy_on() {
  export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
  export http_proxy="http://127.0.0.1:8002"
  export https_proxy=$http_proxy
  export all_proxy=$http_proxy
  echo -e "已开启代理"
}

function proxy_status() {
  echo $http_proxy
  echo $https_proxy
}


#[[ -s "/Users/jojo/.gvm/scripts/gvm" ]] && source "/Users/jojo/.gvm/scripts/gvm"

export GO111MODULE=auto

fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval $(thefuck --alias)

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/jojo/.sdkman"
[[ -s "/Users/jojo/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/jojo/.sdkman/bin/sdkman-init.sh"

[ -s "/Users/jojo/.jabba/jabba.sh" ] && source "/Users/jojo/.jabba/jabba.sh"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

export GOPATH="$HOME/go"; export GOROOT="$HOME/.go"; export PATH="$GOPATH/bin:$PATH"; # g-install: do NOT edit, see https://github.com/stefanmaric/g
alias govm="$GOPATH/bin/g"; # g-install: do NOT edit, see https://github.com/stefanmaric/g
export PATH="/usr/local/opt/ncurses/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

