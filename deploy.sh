#!/usr/bin/env bash
if [ -d "$HOME/.vim/bundle/" ];then
    echo "the vundle exist!"
else
    echo "cant find the vundle! fetch it on github now!"
    git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
    rm -f $HOME/.vimrc
    ln -s $PWD/vimrc $HOME/.vimrc
    echo "already create symoble link to vimrc, you need to opren vim and run :BundleInstall first, then go back to run this shell again!"
    exit 1
fi

echo "create the vimrc softlink now..."
rm -f $HOME/.vimrc
ln -s $PWD/vimrc $HOME/.vimrc
echo "create success! now copy the snippets to your $HOME/.vim"

cp -rf $PWD/snippets $HOME/.vim/bundle/snipmate.vim/
