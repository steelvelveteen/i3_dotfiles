w3mimg () { w3m -o imgdisplay=/usr/lib/w3m/w3mimgdisplay $1}
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export TERM="xterm-256color"
export ZSH=/home/sentinel/.oh-my-zsh
export VISUAL="vim"
export EDITOR=$VISUAL
export PATH
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.dotnet/tools:$PATH"

# start starship
eval "$(starship init zsh)"
# Blur shit. It works!!!
xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id `xdotool search --class urxvt`

# Font mode for powerlevel9k
#POWERLEVEL9K_MODE="nerdfont-complete"

# Set name of the theme to load.
ZSH_THEME="powerlevel9k/powerlevel9k"


# Prompt settings
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%K{white}%k"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%K{green}%F{black} \uf155 %f%F{green}%k\ue0b0%f "

#######################################################
## The actual prompt ##
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context ram dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time battery)
#######################################################

# Separators
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\ue0b0'
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=$'\ue0b1'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\ue0b2'
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=$'\ue0b7'

# Dir colours
POWERLEVEL9K_DIR_HOME_BACKGROUND='black'
POWERLEVEL9K_DIR_HOME_FOREGROUND='white'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='black'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='white'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='yellow'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

# OS segment
POWERLEVEL9K_OS_ICON_BACKGROUND='black'
POWERLEVEL9K_LINUX_ICON='%F{cyan} \uf303 %F{white} arch %F{cyan}linux%f'

# VCS icons
POWERLEVEL9K_VCS_GIT_ICON=$'\uf1d2 '
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=$'\uf408 ' POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON=$'\uf171 ' POWERLEVEL9K_VCS_BRANCH_ICON=$''
POWERLEVEL9K_VCS_STAGED_ICON=$'\uf055'
POWERLEVEL9K_VCS_UNSTAGED_ICON=$'\uf421'
POWERLEVEL9K_VCS_UNTRACKED_ICON=$'\uf00d'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=$'\uf0ab '
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=$'\uf0aa '

# VCS colours
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='blue'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='green'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'

# VCS CONFIG
POWERLEVEL9K_SHOW_CHANGESET=false

# Status
POWERLEVEL9K_OK_ICON=$'\uf00c'
POWERLEVEL9K_FAIL_ICON=$'\uf165'
POWERLEVEL9K_CARRIAGE_RETURN_ICON=$'\uf810'

# Battery
POWERLEVEL9K_BATTERY_LOW_FOREGROUND='red'
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='blue'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='green'
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='blue'
POWERLEVEL9K_BATTERY_VERBOSE=true

user_with_helmet() {
    #echo -n "\uf1a9 $(whoami)"
    echo -n "\uf1a9 raven"
    #echo -n "\uf1a9" #displays my cool icon
}
POWERLEVEL9K_CUSTOM_USER="user_with_helmet"

# Command auto-correction.
ENABLE_CORRECTION="false"

# Command execution time stamp shown in the history command output.
HIST_STAMPS="mm/dd/yyyy"
plugins=(git colored-man-pages extract sudo virtualenv zsh-autosuggestions)

#Prompt elements
## add icons_test for testing to the left_prompt
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_user dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)

source $ZSH/oh-my-zsh.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"
export PATH="/home/sentinel/.gem/ruby/2.6.0/bin:$PATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

clear
#archey3 -c black
archey3 -c green 

###############################################################
# Aliaxes
# #############################################################

#echo "\t~/.i3/config -> editi3"
#echo "\t~/.config/polybar/config -> editp"
#echo "\t~/.config/compton.conf -> editc"
echo "\t~/.Xresources -> editx"
echo "\t~/.vimrc -> editv"
echo "\t~/.config/nvim/init.vim -> editnv"
echo "\t~/.zshrc ->  editz"
alias archey3="archey3 -c black"
alias vim="nvim"
alias neovim="nvim"
alias mirrorUpdate="sudo reflector --latest 250 --protocol https --sort rate --save /etc/pacman.d/mirrorlist"
alias cat="bat"
alias ls="colorls"
alias editi3="vim ~/.i3/config"
alias editp="vim ~/.config/polybar/config"
alias editc="vim ~/.config/compton.conf"
alias editz="vim ~/.zshrc"
alias editx="vim ~/.Xresources"
alias editv="vim ~/.vimrc"
alias editnv="vim ~/.config/nvim/init.vim"
alias edit9k="vim ~/.oh-my-zsh/themes/powerlevel9k/powerlevel9k.zsh-theme"
alias sourcex="xrdb ~/.Xresources"
alias music="mpd && ncmpcpp"
alias sourcez="source ~/.zshrc"
alias showalias="cat ~/.zshrc | grep ^alias"
alias clock="tty-clock -c -C 1 -s"
alias cmatrix="cmatrix -C  black -u 4"
alias repos='echo "Listing repositories ..." && cd ~/repos && ls'
alias updatei3repo='cp ~/.zshrc ~/repos/i3_dotfiles && cp ~/.vimrc ~/repos/i3_dotfiles/vim && cp ~/.config/nvim/init.vim ~/repos/i3_dotfiles/vim && cp ~/.Xresources ~/repos/i3_dotfiles && cd ~/repos/i3_dotfiles && gst'
alias backupdotfiles='cp ~/.vimrc ~/.vimrc.bak && cp ~/.Xresources ~/.Xresources.bak && cp ~/.zshrc ~/.zshrc.bak'
alias gtypist='gtypist -c 5,0 --silent'
alias removebeep='sudo rmmod pcspkr'
###############################################################
