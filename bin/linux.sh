#!/bin/bash
CURR_OS=$(uname)
#TODO check for uname output using if else statement
if [[ "$CURR_OS" != *"Linux"* ]];then
	echo "The username does not equal Linux. Exiting program" >> linuxsetup.log
	exit
fi
mkdir ~/.TRASH

#TODO check if .vimrc exits in home directory and rename it if so
if [ -f "$HOME/.vimrc" ];then
	mv ~/.vimrc .bup_vimrc
	echo "The current vimrc file was changed to .bup_vimrc" >> linuxsetup.log
fi
cp etc/vimrc ~/.vimrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

