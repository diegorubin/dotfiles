export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

# User configuration

export PATH="$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# aliases

# Applications PATH
export PATH="$PATH:$HOME/Applications/java/bin:$HOME/Applications/maven/bin:$HOME/bin"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export JAVA_HOME="$HOME/Applications/java"
export MAVEN_HOME="$HOME/Applications/maven/bin"
export M2_HOME="$HOME/Applications/maven"

# ciandt functions
source $ZSH/ciandt.zsh

[[ -s "$HOME/.rvm/scripts/rvm"  ]] && . "$HOME/.rvm/scripts/rvm"

