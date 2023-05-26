# Environment Variables.
# You may want to put all your environment variables into a separate file like
# ~/.zshenv, instead of adding them here directly.

if [ -f ~/.zshenv ]; then
    . ~/.zshenv
fi


# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.zsh_aliases, instead of adding them here directly.

if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

# Function definitions.
# You may want to put all your additions into a separate file like
# ~/.zsh_functions, instead of adding them here directly.

if [ -f ~/.zsh_functions ]; then
    . ~/.zsh_functions
fi

# Paths definitions.
# You may want to put all your additions into a separate file like
# ~/.zsh_paths, instead of adding them here directly.

if [ -f ~/.zsh_paths ]; then
    . ~/.zsh_paths
fi

# Download Znap, if it's not there yet.
[[ -r $DOTFILESDIR/zsh/zsh-snap/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git $DOTFILESDIR/zsh/zsh-snap/znap
source $DOTFILESDIR/zsh/zsh-snap/znap/znap.zsh  # Start Znap

# Plugin list.
# You may want to put all your additions into a separate file like
# ~/.zsh_plugins, instead of adding them here directly.

if [ -f ~/.zsh_plugins ]; then
    . ~/.zsh_plugins
fi


tmux source $DOTFILESDIR/tmux/.tmux.conf
setxkbmap us colemak 

znap eval starship 'starship init zsh --print-full-init'
znap prompt

tmux attach -t ${PWD} || tmux new -As ${PWD};

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/home/danial/.bun/_bun" ] && source "/home/danial/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/home/danial/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end