#!/bin/bash
sudo apt-get update
sudo apt-get install gcc make automake
sudo apt-get install byobu mosh vim vcsh git htop tree curl python3-pip
sudo dpkg-reconfigure dash
rm -rf ~/.byobu && vcsh clone https://github.com/BenGardiner/byobu-dotfile.git
rm -f ~/.bashrc ~/.bash_profile ~/.profile && vcsh clone https://github.com/BenGardiner/bash-dotfiles.git
vcsh clone https://github.com/BenGardiner/bin-dotfiles.git
vcsh clone https://github.com/BenGardiner/gdb-dotfiles.git
vcsh clone https://github.com/BenGardiner/r2-dotfiles.git
vcsh clone https://github.com/BenGardiner/vim-dotfiles.git
cd ~/.vim/
./get-vundle 
./update-vundle 
cd
mkdir ~/src
cd src/
git clone https://github.com/nojhan/liquidprompt.git
git clone https://github.com/radare/radare2.git
cd radare2/
./sys/install.sh
cd
