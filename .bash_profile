# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

export PATH="$HOME/bin:$HOME/.cabal/bin:/usr/local/bin:/usr/local/sbin:/sbin:/usr/sbin:$PATH"
unset USERNAME

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export RBENV_ROOT=/usr/local/var/rbenv

# ocaml
export PATH=$HOME/ocamlbrew/ocaml-4.00.1/bin:$PATH
export OPAMROOT=$HOME/ocamlbrew/ocaml-4.00.1/.opam
if which opam > /dev/null; then eval `opam config env`; fi

if [ -f /usr/libexec/java_home ]; then
  export JAVA_HOME=`/usr/libexec/java_home`
fi

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

export EDITOR=vim
export PS1='\[\033[01;34m\]\u@\h\[\033[00m\]:\[\033[01;35m\]\w\[\033[00m\]\$ '
export CLICOLOR=1
