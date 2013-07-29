# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:/sbin:/usr/sbin:/usr/local/share/python:$PATH"
unset USERNAME
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
