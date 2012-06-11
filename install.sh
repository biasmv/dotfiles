#!/bin/bash

SRC_DIR=$(cd `dirname "$0"` ; pwd)
echo $SRC_DIR
echo "Installing dotfiles"

ln -sf $SRC_DIR/vimrc ~/.vimrc
if [ ! -d "$HOME/.vim/bundle" ] ; then
  mkdir -p "$HOME/.vim/bundle"
fi

if [ ! -d "$HOME/.vim/bundle/vundle" ] ; then
  git clone https://github.com/gmarik/vundle.git "$HOME/.vim/bundle/vundle"
fi

vim +BundleInstall +qall

