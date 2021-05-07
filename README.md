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

## Install Required Applications macOS Install (Brew)

`brew install fish neofetch starship vim neovim exa bat`
`brew tap homebrew/cask-fonts`
`brew install --cask alacritty font-fira-code-nerd-font font-hack-nerd-font`

## Dotfiles Install Instructions

Use chsh to change your default shell to fish.

`which fish`

`chsh`

Move to home directory:

`cd`

Clone with:

`git clone --bare https://github.com/johnbarney/dotfiles.git $HOME/.dotfiles`

Create local alias:

`alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`

Check out files:

`config checkout`

You may run into an error if the checkout would overwrite any existing files. Delete or move those files out of the way and run `config checkout` again.

Restart prompt and run:

`config-untrack`

