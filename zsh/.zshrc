# Environment Variables.
# You may want to put all your environment variables into a separate file like
# ~/.zshenv, instead of adding them here directly.

if [ -f $ZDOTDIR/.zshenv ]; then
    . $ZDOTDIR/.zshenv
fi


# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.zsh_aliases, instead of adding them here directly.

if [ -f $ZDOTDIR/.zsh_aliases ]; then
    . $ZDOTDIR/.zsh_aliases
fi

# Function definitions.
# You may want to put all your additions into a separate file like
# ~/.zsh_functions, instead of adding them here directly.

if [ -f $ZDOTDIR/.zsh_functions ]; then
    . $ZDOTDIR/.zsh_functions
fi

# Paths definitions.
# You may want to put all your additions into a separate file like
# ~/.zsh_paths, instead of adding them here directly.

if [ -f $ZDOTDIR/.zsh_paths ]; then
    . $ZDOTDIR/.zsh_paths
fi

zstyle ':znap:*' repos-dir $DOTFILESDIR/zsh-snap/zsh
. $DOTFILESDIR/zsh-snap/zsh-snap/znap.zsh

if [[ $TERM != "screen" ]]; then
	tmux attach-session -t wsl || tmux new -s wsl;
fi


tmux source $DOTFILESDIR/tmux/.tmux.conf
setxkbmap us colemak 

eval "$(starship init zsh)"
