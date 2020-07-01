#!/usr/bin/env bash
if [ -d "$HOME/.vim/bundle/" ];then
    echo "the vundle exist!"
else
    echo "cant find the vundle! fetch it on github now!"
    git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
    rm -f $HOME/.vimrc
    rm -f $HOME/.ideavimrc
    rm -f $HOME/.editorconfig
    ln -s $PWD/vimrc $HOME/.vimrc
    ln -s $PWD/ideavimrc $HOME/.ideavimrc
    ln -s $PWD/editorconfig $HOME/.editorconfig
    echo "From JAS!!!: already create symoble link to vimrc, you need to opren vim and run :BundleInstall first, if you write go lang by vim like me, run :GoInstallBinaries, then go back to run this shell again!"
    exit 1
fi

echo "create the vimrc softlink now..."
rm -f $HOME/.vimrc
rm -f $HOME/.editorconfig
ln -s $PWD/vimrc $HOME/.vimrc
ln -s $PWD/editorconfig $HOME/.editorconfig

echo "create success! now copy the snippets to your $HOME/.vim"

cp -rf $PWD/snippets $HOME/.vim/bundle/snipmate.vim/

echo "remember to rebuild helptags in vim ( :helptags ~/.vim/doc/ )"

#YoucompleteMe
#brew install cmake
#C# support: install Mono with Homebrew or by downloading the Mono Mac package and add --omnisharp-completer when calling ./install.py.
#Go support: install Go and add --gocode-completer when calling ./install.py.
#TypeScript support: install Node.js and npm then install the TypeScript SDK with npm install -g typescript.
#JavaScript support: install Node.js and npm and add --tern-completer when calling ./install.py.
#Rust support: install Rust and add --racer-completer when calling ./install.py.
