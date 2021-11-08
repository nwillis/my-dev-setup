# Development Environment Setup

## Install required packages
*My development environment is fully based on commandline. I use fish + neovim + tmux.*

### Arch Linux(ChromeOS Linux Container)
```bash
sudo pacman -Syu tmux neovim fish exa nodejs-lts-fermium npm github-cli fzf fd bat
chsh -s /usr/bin/fish
exit
```

### MacOSX Terminal
```bash
brew install tmux neovim fish exa gh node@14 npm fzf fd bat
sudo sh -c 'echo /opt/homebrew/bin/fish >> /etc/shells'
chsh -s /opt/homebrew/bin/fish
exit
```

### Common Instructions
```bash
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
npm i -g yarn diagnostic-languageserver
```

## Config files
- Clone this repo to local
- Execute the script in the folder of this repo to copy config files

### Fish
Install fisher and tide, z
```
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install ilancosman/tide
fisher install jethrokuan/z
fisher install PatrickF1/fzf.fish
exit
```

### Tmux
MacOSX(only): [Terminal.app does not support true color](https://discuss.kakoune.com/t/macos-terminal-app-with-tmux-guide/1526), we have to do something before nvim is usable.

```bash
cd
curl -O https://raw.githubusercontent.com/mawww/kakoune/master/contrib/tmux-256color.terminfo
/usr/bin/tic -x $HOME/tmux-256color.terminfo
rm $HOME/tmux-256color.terminfo
```

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
