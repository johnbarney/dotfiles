# My Dotfiles

## Applications required

* fish shell
* neofetch
* alacritty
* Hack Nerd Font
* FireCoda Nerd Font
* starship prompt
* vim
* neovim
* exa
* bat

## Install instructions

Move to home directory:

`cd`

Clone with:

`git clone --bare https://github.com/johnbarney/dotfiles.git $HOME/.dotfiles`

Create local alias:

`alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`

Check out files:

`config checkout`

Restart prompt and run:

`config-untrack`

