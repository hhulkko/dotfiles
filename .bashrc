OS=`uname` 

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoreboth

if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

if [ -f ~/.private_aliases ]; then
  . ~/.private_aliases
fi

if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

shopt -s checkwinsize
shopt -s histappend
shopt -s dotglob
