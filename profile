# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

#
# Add framework-specific PATHs
#
export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1
if [ -d "$HOME/.dotnet/tools" ] ; then
    PATH="$HOME/.dotnet/tools:$PATH"
fi

if [ -d "/usr/local/go/bin" ] ; then
    PATH="/usr/local/go/bin:$PATH"
fi
if [ -d "$HOME/go/bin" ] ; then
    PATH="$HOME/go/bin:$PATH"
fi

if [ -f ~/.nvm/nvm.sh ]; then
  . ~/.nvm/nvm.sh
fi

if [ -d "$HOME/.krew/bin" ] ; then
    PATH="$HOME/.krew/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "/usr/lib/ccache" ]; then
    PATH="/usr/lib/ccache:$PATH"
fi
if [ -f ~/.cargo/env ]; then
    . ~/.cargo/env
fi

# Give highest priority to the user's PATH
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

EDITOR=/usr/bin/vim
