#!/bin/bash

CMD=yum
apt --version 
if [ $? -eq 0 ]
then
  CMD=apt
fi

sudo ${CMD} install git curl aria2c epel-release the_silver_searcher

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/themes/powerlevel10k

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
cd "${HOME}"/.fzf && ./install

cp zshrc_template "${HOME}"/.zshrc

cargo install fd-find


