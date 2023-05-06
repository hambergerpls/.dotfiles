export ZDOTDIR=$HOME
export DOTFILESDIR=$HOME/.dotfiles
export DOTFILES=$HOME/.dotfiles
export STARSHIP_CONFIG=$DOTFILESDIR/starship/starship.toml
export TMUX_PLUGIN_MANAGER_PATH=$DOTFILESDIR/tmux/plugins
export XDG_CONFIG_DIRS[1]=$DOTFILESDIR
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
