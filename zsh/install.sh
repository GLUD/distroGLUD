#!/bin/bash
# A guide of zsh

# -> Instalar temas para la terminal terminal zsh
# https://ohmyz.sh/
# https://www.youtube.com/watch?v=WVDqCzrs9yU
# https://github.com/bhilburn/powerlevel9k

# instalar git
sudo apt-get install git

# instalar zsh
sudo apt-get install zsh
chsh -s $(which zsh)
mv zsh/zshrc ~/.zshrc
mv zsh/zsh_history ~/.zsh_history
mv zsh/zcompdump ~/.zcompdump

# instalar oh-my-zsh y powerlevel9k
mv zsh/oh-my-zsh.tar.gz ~/oh-my-zsh.tar.gz
tar -xzvf ~/oh-my-zsh.tar.gz
rm ~/oh-my-zsh.tar.gz

# ingresar contraseña
# cerrar sesión y acceder nuevamente

# instalar fuentes
sudo apt-get install fonts-powerline

cd ~

# clone
git clone https://github.com/powerline/fonts.git --depth=1
# instalar
cd fonts
./install.sh
# para desinstalar ./uninstall.sh
# clean-up a bit
cd ..
rm -rf fonts
