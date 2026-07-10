# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

. "$HOME/.local/bin/env"

alias gremain="git checkout main && git pull && git checkout"
alias gkmid="PATH=$PATH:node_modules/.bin gitkraken"

alias gtc="git branch --show-current"

alias ll="ls -alh"

export PATH="$PATH:/home/dshebib/.local/bin:/home/dshebib/.local/share/soar/bin"
export PATH="$HOME/.bun/bin:$PATH"

export KUBECONFIG="./kubeconfig:$KUBECONFIG"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

export TALOSCONFIG="./talosconfig:$TALOSCONFIG"

export CLAUDE_CODE_NO_FLICKER=1
