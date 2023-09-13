# Config files for BASH, NVIM, VIM and COC Extensions.
<img align="center" src="./img/nvim_image.PNG">
<img align="center" src="./img/nvim_c.PNG">

# How to install Neovim
I make use of neovim, still vim but allow a wider use of more integrated plugins, which you can use to build your ***Custom Development Environment (CDE) or Personal Development Environment (PDE)***. These are the steps to install neovim on your linux(ubuntu) system.
You can install it by using the apt command like this:
###
    sudo apt-get install neovim

**But i recommend to install neovim with an appimage to get latest release version as shown below:**
###
    curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
    chmod u+x nvim.appimage
    mv nvim.appimage nv
    sudo mv nv /usr/bin/
    nv

After this if you want to use neovim, you just have to type in "nv" on your terminal
###
    nv

# Making use of my configuration For NVIM.
- Clone this repository into your terminal.
###
    git clone https://github.com/ConquerorCletus/my_config.git

- Then, run the command below inside the repository directory
###
    mkdir -p ~/.config/nvim
    cp init.vim ~/.config/nvim/

# Some features of my NVIM(my shell text editor i.e VIM).
With my configuration you can do/have the following, not all are mentioned here you might need the help of chatGPT:
- You would be able to use autocompletion in C, Python and your text files.
- You can hve your terminal with the press of F6.
- With ctrl+t you can toggle you file panel/nerdtree.
- You can automatically wrap your codes.i.e autoclosing parenthesis and bracket.
- You can see git changes on your file due to the git integration.
- You have access to Variety of colorschemes and also have number displayed and mouse enabled, you paste by shift+right click.
- You can move lines of code by selecting and pressing alt + j,k,h on your keyboard to move down or up.
- You coding errors would be indicated, there is a syntax/error checker.
- Comments lines of codes or scripts with typing "gc" in nvim command mode

These are some features i can remember, I install plugins and map keys to make it easier for me to use but you would like my Configuration.
I also did a fairly good job commenting what each plugin does, and group block of configuration together for easier understanding. That way you can easily install or uninstall whichever plugins you want to.

# How to install VIM Plug (Very important you have vim-Plug installed!!!)
Run the command below on your terminal:
###
    curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

**This vim plug is necessary because it is the plugin manager of neovim and vim without it you can't install plugins necessary to configure your vim**

**with VIM plug installed for neovim and my config files, You can then use the command below to install the plugins.**
Use this command in neovim command mode.
###
    :PlugInstall

You might have to install nodejs because a plugin like neoclide COC plugin which is used for autocompletion and is connected to LSP would need it. On your terminal run the command below, it would ensure you have the nodejs installed and the necessay version needed for the plugins to work with no error:
###
    sudo apt install nodejs
###
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
    source ~/.bashrc
###
    nvm install v18.15.0

# Additional Notes for Neovim Config.
You can make use of these steps below because you have my configuration file for nvim, if you do not have my config files you might have to make some changes in your init.vim configuration file.

## For C/C++ configuration of COC.
To fully enable C/C++ auto complete on neovim then Clangd must be installed on the terminal
this can be done by using the command.
run this in your terminal:
###
    sudo apt install Clangd
    
Then you can install the COC extension below in your command mode of neovim
###
    :CocInstall coc-c
    :CocInstall coc-snippets
    :CocInstall coc-Clangd

## Python Configuration of COC
###
    :CocInstall coc-python

Run this on your neovim terminal afterwards install jedi module for python with the command below on your terminal. Now i am assuming you have pip3 installed but if you don't then you can install it with this command
###
    sudo apt install python3-pip
###
    pip install jedi
# Installing Your desired Plugin.
I just gave you my plugins and my nvim but what i want may not be what you want/need. So this the step for installing the plugin you need (Assuming you installed vim plug as shown above).
1. Google the Plugin you need. For instance;

<img align="center" src="./img/nvim_google.PNG">

2. Copy the github url/url of plugin.

<img align="center" src="./img/nvim_url.PNG">

3. Add this to your configuration file(~/.config/nvim/init.vim)

<img align="center" src="./img/nvim_plug.PNG">

###
    Plug 'url_of_plugin'

4. Restart vim/nvim and run the command below.

###
    :PlugInstall

Congrats your new plugin has been installed!!!
# uninstalling a plugin.
I installed plugins to suite my needs, which might not be the same with yours, I even installed different sets of plugins that does the same thing, which may be excessive and not needed. Hence, the need to know how to remove such plugins or uninstall them. with vim plug(Your Vim/Neovim plugin manager) installed.

1. You delete the line of plugin from the configuration file(~/.config/nvim/init.vim).

###
    Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview

2. Restart your neovim and run the command below in your neovim command mode.
###
	:PlugClean  
 
with this you are done with uninstalling the plugin, you don't want.

# Neovim like VIM.
Like i said before Neovim is like a mirrowed vim. so if you can use VIM, you can use NVIM.

<img align="center" src="./img/nvim.PNG">

If you don't know how to use vim you can check out the video i made [HERE](https://youtu.be/rfgFHRoyk2M?si=sB9mJMVWdI2HTKaR), an Old video i made but i am sure you would definitely learn something new. I am also going to someday in the future make more videos on VIM/NVIM use.

# Support
If you found this repository helpful and you would like to appreciate me you can do that by 
1. **Subscribing to my Youtube Channel** link is [HERE](https://youtube.com/@ConquerorDevs?si=FnVhOo1Z-EHSWxbQ)
2. You can star this repository, so it can be recommended to others on Github.
3. You can follow my github account and share this repository.


# Author
The Author is yours truly, [MYSELF](https://github.com/ConquerorCletus).
