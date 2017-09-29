#!/bin/sh
# Install the configuration

# Install vim
if [ -z $HOME  ]
then
	echo "Please tell me where you live";
	exit ;
fi

if [ ! -d "$HOME/.vim" ]
then
	echo "create ~/.vim folder";
	mkdir ~/.vim
fi
cp -r bundle ~/.vim/ 
cp .vimrc ~/.vim
echo "source ~/.vim/.vimrc" >> ~/.vimrc

vim +PluginInstall
