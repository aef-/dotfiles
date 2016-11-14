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
mkdir -p ./vim/swap
chsh -s $(which zsh)
installScript $PWD/zgen ~/.zgen
installScript $PWD/zshrc ~/.zshrc
installScript $PWD/vimrc ~/.vimrc
installScript $PWD/keymap.cson ~/.atom/keymap.cson
installScript $PWD/gitconfig ~/.gitconfig
installScript $PWD/hyper.js ~/.hyper.js
installScript $PWD/prompt_spidergiggle_setup ~/zgen/sorin-ionescu/prezto-master/modules/prompt/functions
