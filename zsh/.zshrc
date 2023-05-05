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

# Download Znap, if it's not there yet.
[[ -r $DOTFILESDIR/zsh/zsh-snap/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git $DOTFILESDIR/zsh/zsh-snap/znap
source $DOTFILESDIR/zsh/zsh-snap/znap/znap.zsh  # Start Znap


tmux source $DOTFILESDIR/tmux/.tmux.conf
setxkbmap us colemak 

znap eval starship 'starship init zsh --print-full-init'
znap prompt

##
# Load your plugins with `znap source`.
#
znap source marlonrichert/zsh-autocomplete
znap source marlonrichert/zsh-edit
znap source marlonrichert/zsh-hist

ZSH_AUTOSUGGEST_STRATEGY=( history )
znap source zsh-users/zsh-autosuggestions

ZSH_HIGHLIGHT_HIGHLIGHTERS=( main brackets )
znap source zsh-users/zsh-syntax-highlighting

tmux attach -t ${PWD} || tmux new -As ${PWD};
