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
    esac
  else
    echo "Installing new $1"
    ln -s $1 $2
  fi
}

PWD=`pwd`
git submodule update --init --recursive
installScript $PWD/gitconfig ~/.gitconfig
chsh -s $(which fish)
