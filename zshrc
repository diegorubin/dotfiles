export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

# User configuration

export PATH="$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# constants
export DIEGORUBINREPO="$HOME/Repos/diegorubin/"
export SSH_KEY_PATH="$HOME/.ssh"

# aliases
alias repodiegorubin='cd $DIEGORUBINREPO'

# rvm
[[ -s "$HOME/.rvm/scripts/rvm"  ]] && . "$HOME/.rvm/scripts/rvm"

# Applications PATH
export PATH="$PATH:$HOME/Applications/java/bin:$HOME/Applications/maven/bin:$HOME/bin"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Java configuration
export JAVA_HOME="$HOME/Applications/java"
export MAVEN_HOME="$HOME/Applications/maven/bin"
export M2_HOME="$HOME/Applications/maven"

# npm configuration
alias jshint='~/.npm/jshint/2.5.11/package/bin/jshint'

# diegorubin functions
function loadsshkey() {
  ssh-add "$SSH_KEY_PATH/$1"
}

# ciandt functions
source $ZSH/ciandt.zsh

