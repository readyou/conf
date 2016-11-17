#! /bin/bash

echo '备份IDEA配置文件：~/Library/Preferences/IntelliJIdea2016.2'
cp -r ~/Library/Preferences/IntelliJIdea2016.2 ./

echo '备份vim'
cp -r ~/github/maximum-awesome/vim ./vim/vim
cp ~/.ideavimrc ./vim/
cp -r ~/github/maximum-awesome/vimrc* ./vim/
cp ~/.vimrc.bundles.local ./vim/
cp ~/.vimrc.local ./vim/


