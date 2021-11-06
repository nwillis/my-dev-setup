# Development Environment Setup

## Install required packages
*My development environment is fully based on commandline. I use fish + neovim + tmux.*

**Arch Linux(ChromeOS Linux Container)**
```bash
sudo pacman -Syu tmux neovim fish exa nodejs-lts-fermium npm github-cli
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
npm i -g diagnostic-languageserver
chsh -s /usr/bin/fish
exit
```

## Config files
- Clone this repo to local
- Execute the install.sh in the folder of this repo

**Fish**
Install fisher and tide, z
```
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install ilancosman/tide
fisher install jethrokuan/z
exit
```

**Tmux**
*MacOSX Terminal.app does not support true color, we need to add some operations, no need for linux*


**Neovim**
Install vim-plug
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Open nvim execute:
```
:PlugInstall
```
