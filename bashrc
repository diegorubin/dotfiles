# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export PATH=$PATH:/opt/ruby-enterprise-1.8.7-2010.02/bin/

# RVM
if [[ -s ~/.rvm/scripts/rvm ]]
then
    source ~/.rvm/scripts/rvm
    source ~/.rvm/scripts/completion
    rvm reload
fi

export LD_LIBRARY_PATH+=":/usr/local/lib"

alias qa_exame="ssh exame@qa.exame.abril.com.br -p 5022"
alias dev_exame="ssh exame@dev.exame.abril.com.br -p 5022"

alias stage="ssh exame@dev.exame.abril.com.br -g -p 5022 -L6666:172.16.2.15:80"

# CIT COMMANDS
alias enable_proxy="export http_proxy='http://proxycps2.cit:3128/'"

# RAILS COMMANDS

alias test_app="RAILS_ENV=test rake db:drop db:create db:migrate && autospec"
alias reset_db="rake db:drop db:create db:migrate db:categories db:populate_tags db:seed db:change_home_template db:change_guides_template db:new_links_home db:change:add_default_sources"
