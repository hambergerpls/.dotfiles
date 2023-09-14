export DOTFILESDIR=$HOME/.dotfiles
export STARSHIP_CONFIG=$DOTFILESDIR/starship/starship.toml
export BUN_INSTALL="$HOME/.bun"
export NVM_DIR="$HOME/.nvm"
export PNPM_HOME="$HOME/.local/share/pnpm"
export GPG_TTY="$( tty )"
export DENO_INSTALL="$HOME/.deno"
export ANDROID_HOME="$HOME/Android/Sdk"
export N_PREFIX="$HOME/.local/.npm-global"
export FLYCTL_INSTALL="$HOME/.fly"
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_TYPE=wayland
ZSH_HIGHLIGHT_HIGHLIGHTERS=( main brackets )
ZSH_AUTOSUGGEST_STRATEGY=( history completion )
. "$HOME/.cargo/env"
