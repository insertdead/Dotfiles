source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/profile"
bindkey -v


#### ALIASES ####
#
#
# Suffix aliases
## Code
alias -s {py,ts,js,c,cpp,hs}=nvim
## Markup
alias -s {tex,md,rst,txt}=nvim
alias -s html=librewolf
alias -s org=emacs
## Data
alias -s {yaml,yml,json,toml}=nvim

### Added by Zinit's installer
if [[ ! -f $ZINIT[BIN_DIR]/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "${XDG_DATA_HOME:-$HOME/.local/share}/zinit" && command chmod g-rwX "${XDG_DATA_HOME:-$HOME/.local/share}/zinit"
    command git clone https://github.com/zdharma/zinit "$ZINIT[BIN_DIR]" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$ZINIT[BIN_DIR]/zinit.zsh"
autoload -Uz _zinit

# Ignore case for completion
autoload -U bashcompinit; bashcompinit
autoload -U compinit; compinit
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' '+m:{A-Z}={a-z}'

#Zinit plugins
zinit light kazhala/dotbare
zinit light zdharma/fast-syntax-highlighting
zinit light denysdovhan/spaceship-prompt
zinit ice wait lucid atload '_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

# Prompt (spaceship) configuration
SPACESHIP_VI_MODE_SHOW=false

# Enable and disbale sections for the prompt (By default all are enabled)
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  # package     # Package version
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  # xcode       # Xcode section
  # swift       # Swift section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  # julia       # Julia section
  docker        # Docker section
  # aws         # Amazon Web Services section
  # gcloud      # Google Cloud Platform section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  # dotnet      # .NET section
  ember         # Ember.js section
  kubectl       # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  # vi_mode     # Vi-mode indicator (Disabled)
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

export PATH="$HOME/.poetry/bin:$PATH"

export PATH="$HOME/.local/share/poetry/bin:$PATH"
