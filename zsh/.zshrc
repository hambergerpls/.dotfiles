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


tmux source $DOTFILESDIR/tmux/.tmux.conf
setxkbmap us colemak 

znap eval starship 'starship init zsh --print-full-init'
znap prompt

##
# Load your plugins with `znap source`.
#
znap source marlonrichert/zsh-autocomplete
znap source ohmyzsh/ohmyzsh oh-my-zsh.sh \
	plugins/{git,poetry,pip,python,flutter,npm} \
	lib/{git,completion,directories,compfix,clipboard}

ZSH_AUTOSUGGEST_STRATEGY=( history completion )
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-completions

ZSH_HIGHLIGHT_HIGHLIGHTERS=( main brackets )
znap source zsh-users/zsh-syntax-highlighting

tmux attach -t ${PWD} || tmux new -As ${PWD};
