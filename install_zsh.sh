# A guide of zsh

# -> Instalar temas para la terminal terminal zsh
# https://ohmyz.sh/
# https://www.youtube.com/watch?v=WVDqCzrs9yU
# https://github.com/bhilburn/powerlevel9k

cp zshrc ~
cd ~

# intalar git
sudo apt-get install git

# instalar zsh
sudo apt-get install zsh
chsh -s $(which zsh)

# ingresar contraseña
# cerrar sesión y acceder nuevamente

# instalar fuentes

sudo apt-get install fonts-powerline

# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
#  para desinstalar ./uninstall.sh
# clean-up a bit
cd ..
rm -rf fonts


# modificar linea archivo .zshrc 
# ZSH_THEME="agnoster"
# cambiar fuente de la terminal por Meslo 10pt

# instalar powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# modificar linea archivo .zshrc 
# ZSH_THEME="powerlevel9k/powerlevel9k"
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true

mv zshrc .zshrc
