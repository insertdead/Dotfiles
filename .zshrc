# Lines configured by zsh-newuser-install
HISTFILE=$HOME/.zshist
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# read colors
#(cat $HOME/.cache/wal/sequences)
# set emacs config directory
export PATH="$HOME/.emacs.d/bin:$HOME/.local/bin:$HOME/.cargo/bin:$HOME/.bin:$HOME/.ghcup/bin:$HOME/.cabal/bin:$PATH"
export EDITOR="emacsclient -nc --socket-name=madsci-emacsd"
#export SPOTIPY_CLIENT_ID='54fc8d9b85854311a0b6be629d1c47bf'
#export SPOTIPY_CLIENT_SECRET='f1b71e21c9254a7db6ed3b2ce2bdb7a5'
#export SPOTIPY_REDIRECT_URI=https://spotifydl.sathyabh.at/
#export YOUTUBE_DEV_KEY='AIzaSyAZve5s9BK8hx-WvGeNth5sM-BXa3EA9jI'
# Curl aliases for easy information
alias weather="curl https://wttr.in; echo"
alias myip="curl https://ipecho.net/plain; echo"
alias crypto="curl https://cad.rate.sx"
# OpenRGB
alias openrgb="sudo ./git/openrgb/OpenRGB"
# apt aliases
alias full-upgrade="sudo pacman -Syyu"
alias pac-update="sudo pacman -Syu"
#replace ls with exa
alias ls="exa -l --color=always --git --group-directories-first"
alias l.="exa -a --colour=always --git -u | egrep '^\.'"
#grep w/ color
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
#add flags for safety
alias cp="cp -i"
#shorten youtube-dl command
alias ytdl="youtube-dl"
# Git aliases
alias gtc="git clone"
alias gch="git checkout"
alias gtpl="git pull"
## Shorten Dotbare command length
alias dots="dotbare"
#commandline emacs
alias em="emacsclient --socket-name=madsci-emacsd"
# SC-im alias
alias scim="sc-im"
# Directory control
alias ..="cd .."
alias ...="cd ../.."
alias .4="cd ../../.."
#mpv aliases
alias mpv-doom="mpv --shuffle ~/Music/Game\ OSTs/Doom-EternalOST"
#Power control
alias reboot="sudo reboot"
alias poweroff="sudo poweroff"
alias shutdown="sudo shutdown"
#Logout alias for X
alias logout="kill -15 -1"
#nvim alias
alias vim="nvim"
#Battery alias
alias charge="upower -i /org/freedesktop/UPower/devices/battery_CMB0"
# Backlight change
alias brightness="brightnessctl"
# tlmgr alias for tllocalmgr
alias tlmgr="tllocalmgr"
# Connect to home wifi
alias wifi-connect="connmanctl connect wifi_f8ac65dadce8_66726f67726f736269665f76657232_managed_psk"
#Prompt
PROMPT="%(!.#.<) %F{cyan}%*%f | %F{yellow}%n%f@ %U%F{97}%2~%f%u %(!.#.>) "
RPROMPT="%(?.√.X:%?)"
# Shell startup commands
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/madsci/.zshrc'
# Enable features for vterm in emacs
vterm_printf(){
    if [ -n "$TMUX" ]; then
        # Tell tmux to pass the escape sequences through
        # (Source: http://permalink.gmane.org/gmane.comp.terminal-emulators.tmux.user/1324)
        printf "\ePtmux;\e\e]%s\007\e\\" "$1"
    elif [ "${TERM%%-*}" = "screen" ]; then
        # GNU screen (screen, screen-256color, screen-256color-bce)
        printf "\eP\e]%s\007\e\\" "$1"
    else
        printf "\e]%s\e\\" "$1"
    fi
}
autoload -Uz compinit
compinit

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

#Zinit plugins
zinit light kazhala/dotbare
zinit light zdharma/fast-syntax-highlighting
zinit ice wait lucid atload '_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node
[ -f "/home/madsci/.ghcup/env" ] && source "/home/madsci/.ghcup/env" # ghcup-env
alias android-connect="mtpfs -o allow_other /media/GalaxyNexus"
alias android-disconnect="fusermount -u /media/GalaxyNexus"
