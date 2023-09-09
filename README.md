# Config files for BASH, NVIM, VIM and COC Extensions.

# How to install Neovim
These are the steps to install neovim in your system.
###
    curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
    chmod u+x nvim.appimage
    ./nvim.appimage

# How to install VIM Plug
` curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Additional Notes for Neovim Config.
To fully enable C/C++ auto complete on neovim then Clangd must be installed on the terminal
this can be done by using the command.

` sudo apt install Clangd

while for python the jedi package must be available. which can be done by getting it on the terminal
by using the command

` pip install jedi
