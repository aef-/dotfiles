#!/bin/bash

function installScript( )
{
  echo "$2"
  if [ -f $2 ] || [ -L $2 ]; then
    read -p "$2 exists, overwrite?  " yn
    case $yn in
      [Yy]* ) 
        echo "Moving $2 to $2.orig"
        mv $2 $2.orig
        ln -s $1 $2 
        break;;
      * )
        echo "Not installing $1"
        break;;
    esac
  else
    echo "Installing new $1"
    ln -s $1 $2 
  fi
}

PWD=`pwd`
mkdir -p ~/.i3
mkdir -p ./vim/swap
git clone https://github.com/gmarik/vundle.git ./vim/bundle/vundle
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
chsh -s $(which zsh)
installScript $PWD/i3config ~/.i3/config
#installScript $PWD/bashrc ~/.bashrc
#installScript $PWD/xinitrc ~/.xinitrc
installScript $PWD/zshrc ~/.zshrc
installScript $PWD/vimrc ~/.vimrc
installScript $PWD/vim ~/.vim
installScript $PWD/Xdefaults ~/.Xdefaults
installScript $PWD/ctags ~/.ctags
installScript $PWD/hgrc ~/.hgrc
installScript $PWD/gitconfig ~/.gitconfig
