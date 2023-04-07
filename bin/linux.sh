# shebang

#!/bin/bash

#if then statement that appends an error message to the setup log if the system is not linux
if [ uname != Linux ]
then
	echo "error not linux" >> linuxsetup.log
fi

#this makes a trash file in the home directory if a trash file does not already exist
mkdir -p ~/.TRASH
#this checks if the .vimrc is in the hoem directory and then renames it if it does
mv -n ~/.vimrc ~/.bup_vimrc
echo "renamed home directories .vimrc to .bup_vimrc" >> linuxsetup.log

#this copies the vimrc file in the dotfiles to one in the home directory
cp ~/.dotfiles/etc/vimrc ~/.vimrc
# adds a statement to the .bashrc in the home directory
echo "source ∼/.dotfiles/etc/bashrc_custom" >> ~/.bashrc


