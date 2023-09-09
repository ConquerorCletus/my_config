# Config files for BASH, NVIM, VIM and COC Extensions.
<img align="center" src="./nvim_image.PNG">



# How to install Neovim
These are the steps to install neovim in your system.
###
    curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
    chmod u+x nvim.appimage
    mv nvim.appimage nv
    sudo mv nv /usr/bin/
    nv

After this if you want to use neovim, you just have to type in "nv" on your terminal

# How to install VIM Plug
###
    curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

This vim plug is necessary because it is the plugin manager of neovim and vim without it you can't install plugins necessary to configure your vim

To also use some plugin configuration like in COC, you might have to install nodejs on your terminal and you can do that by:
###
    sudo apt install nodejs
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
    nvm install v18.15.0

# Additional Notes for Neovim Config.
## For C/C++ configuration of COC.
To fully enable C/C++ auto complete on neovim then Clangd must be installed on the terminal
this can be done by using the command.
###
    sudo apt install Clangd
## Python Configuration of COC
while for python the jedi package must be available. which can be done by getting it on the terminal
by using the command.

###
    :CocInstall coc-python

Run this on your neovim terminal afterwards install jedi module for python with the command below on your terminal.

###
    pip install jedi
