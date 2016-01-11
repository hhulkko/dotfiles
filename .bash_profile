# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

unset USERNAME

if [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]; then
  . $HOME/.nix-profile/etc/profile.d/nix.sh
fi

if [ -f /usr/libexec/java_home ]; then
  export JAVA_HOME=`/usr/libexec/java_home`
fi

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

export EDITOR=vim
export PS1='\[\033[01;34m\]\u@\h\[\033[00m\]:\[\033[01;35m\]\w\[\033[00m\]\$ '
export CLICOLOR=1
export LANG='en_GB.UTF-8'
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=$HOME/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export GOPATH=$HOME/workspace/go/

export PATH="$HOME/bin:$HOME/.cabal/bin:$HOME/.nix-profile/bin:/usr/local/bin:/usr/local/sbin:/sbin:/usr/sbin:$PATH:$GOPATH/bin"

# rbenv
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# pyenv
if which pyenv > /dev/null; then
  eval "$(pyenv init -)";
  pyenv virtualenvwrapper
fi

# OPAM configuration
. $HOME/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
