# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# set PATH so it includes user's private bin if it exists
if [ -d "${HOME}/bin" ] ; then
    PATH="${HOME}/bin:${PATH}"
    export PATH
fi

#Start dropbox
#if [ $(pgrep -c dropbox) == 0 ]; then
#	echo "Starting Dropbox."
#	${HOME}/.dropbox-dist/dropboxd &
#else
#	echo "Doing nothing. Dropbox already running on pid $(cat ${HOME}/.dropbox/dropbox.pid)."
#fi

# Start SSH agent
#eval $(ssh-agent -s)

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "${HOME}/.bashrc" ]; then
	. "${HOME}/.bashrc"
    fi
fi

# make sure vim tmp folder exists
if ! [ -d "${HOME}/tmpvim" ] ; then
	mkdir ${HOME}/tmpvim
fi


######### Virtualenv Wrapper ######### 
. /usr/local/bin/virtualenvwrapper.sh
