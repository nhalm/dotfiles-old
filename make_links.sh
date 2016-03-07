#!/bin/bash


echo "making the necesary symlinks"
echo 
echo
echo "making .vim symlink"
ln -s $(pwd)/vim $HOME/.vim

echo
echo "making .vimrc symlink"
ln -s $(pwd)/vimrc $HOME/.vimrc

echo
echo "making .tmux.conf symlink"
ln -s $(pwd)/tmux.conf $HOME/.tmux.conf
