w3mimg () { w3m -o imgdisplay=/usr/lib/w3m/w3mimgdisplay $1}
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export TERM="xterm-256color"
  export ZSH=/home/sentinel/.oh-my-zsh
export VISUAL="vim"
export EDITOR=$VISUAL
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

#ZSH_THEME="bureau"
ZSH_THEME="bira"



plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliaxes, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliaxes can be placed here, though oh-my-zsh
# users are encouraged to define aliaxes within the ZSH_CUSTOM folder.
# For a full list of active aliaxes, run `aliax`.
###############################################################
# Aliaxes
# #############################################################

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
alias eZ="vim ~/.zshrc"
alias eX="vim ~/.Xresources"
alias eV="vim ~/.vimrc"
alias eP="vim ~/.oh-my-zsh/themes/powerlevel9k/powerlevel9k.zsh-theme"
alias xtr="xrdb ~/.Xresources"
alias showeather="curl wttr.in/Adelaide"
alias music="ncmpcpp"
alias sourceZ="source ~/.zshrc"
alias showalias="cat ~/.zshrc | grep alias"
alias clock="tty-clock -c -C 1 -s"
alias cmatrix="cmatrix -C red -u 4"
alias repos='cd ~/repos'
alias updatei3repo='cp ~/.zshrc ~/repos/i3_dotfiles && cp ~/.vimrc ~/repos/i3_dotfiles && cp ~/.Xresources ~/repos/i3_dotfiles && cp ~/.i3/config ~/repos/i3_dotfiles && cp ~/.i3blocks.conf ~/repos/i3_dotfiles'
###############################################################
#bash ~/dotfiles/invaders.sh
echo
echo
