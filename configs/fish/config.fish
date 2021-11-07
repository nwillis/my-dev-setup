set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "exa -F"
alias la "ls -a"
alias ll "exa -l -g --icons"
alias lla "ll -a"
alias l lla
alias g git
alias t tmux
alias vi nvim

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH
set -gx PATH ~/.npm-global/bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

switch (uname)
  case Darwin
    source (dirname (status --current-filename))/config-osx.fish
  case Linux
    # Do nothing
  case '*'
    source (dirname (status --current-filename))/config-windows.fish
end
