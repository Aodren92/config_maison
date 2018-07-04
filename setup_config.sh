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
##
# Create backup folder for vim
##
mkdir ~/.vim/.backup ~/.vim/.swp ~/.vim/.undo
cp -r bundle ~/.vim/ 
cp .vimrc ~/.vim
#cp .gitconfig ~
#cp .gitignore_global ~
echo "source ~/.vim/.vimrc" >> ~/.vimrc

vim +PluginInstall
