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
cp zsh/zshrc ~/.zshrc
cp zsh/zsh_history ~/.zsh_history
cp zsh/zcompdump ~/.zcompdump

# instalar oh-my-zsh y powerlevel9k
sudo cp zsh/oh-my-zsh.tar.gz /usr/share/zsh/oh-my-zsh.tar.gz
cd /usr/share/zsh/
sudo tar -xzvf oh-my-zsh.tar.gz
sudo rm oh-my-zsh.tar.gz

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

cd distroGLUD
