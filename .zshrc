# Setup prompt

autoload -U promptinit; promptinit
prompt pure

# Filesystem aliases

alias ls='ls -G'
alias ll='ls -lG'
alias duh='du -csh'

# Git aliases

alias gs='git status'
alias gc='git commit'
alias gp='git pull --rebase'
alias gcam='git commit -am'
alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'

# Bundle aliases

alias be='bundle exec'

# Turn on Git autocomplete.

brew_prefix=`brew --prefix`
if [ -f $brew_prefix/etc/bash_completion ]; then
  . $brew_prefix/etc/bash_completion
fi

# Disable cowsay in Ansible.

export ANSIBLE_NOCOWS=1