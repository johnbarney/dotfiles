# Exports
set fish_greeting
set EDITOR "nvim"

# bare git repo alias for dotfiles
alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias config-untrack="config config --local status.showUntrackedFiles no"

# Functions needed for !! and !$
function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function __history_previous_command_arguments
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end

# The bindings for !! and !$
if [ $fish_key_bindings = fish_vi_key_bindings ];
  bind -Minsert ! __history_previous_command
  bind -Minsert '$' __history_previous_command_arguments
else
  bind ! __history_previous_command
  bind '$' __history_previous_command_arguments
end

# Aliases
alias vim='nvim'
alias cat='bat -p'
alias ls='exa --color=always --group-directories-first'
alias ll='ls -al'
alias clear='clear && neofetch'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Display Bling
neofetch

# Use starship
starship init fish | source

