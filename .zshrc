# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh/zshist
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# Curl aliases for easy information
alias weather="curl https://wttr.in; echo"
alias myip="curl https://ipecho.net/plain; echo"
alias crypto="curl https://cad.rate.sx"
# OpenRGB
alias openrgb="sudo ./git/openrgb/OpenRGB"
# apt aliases
alias full-upgrade="sudo apt full-upgrade"
alias apt-update="sudo apt upgrade"
#replace ls with exa
alias ls="exa -al --color=always --git --group-directories-first"
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
# bpytop alias into htop
alias htop="bpytop"
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
#Prompt
PROMPT="%(!.#.<) %F{cyan}%*%f | %F{yellow}%n%f@ %U%F{97}%2~%f%u %(!.#.>) "
RPROMPT="%(?.√.X:%?)"
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/madsci/.zshrc'

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

### End of Zinit's installer chunk
