
# Required Dependencies.
# You may want to put all your required dependencies into a separate file like
# ~/.zsh_repos, instead of adding them here directly.

if [ -f ~/.zsh_repos ]; then
    . ~/.zsh_repos
fi


if command -v tmux &> /dev/null && [ -n "$PS1" ] &&  [[ ! "$LAUNCHED" == "vscode" ]] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux new -As ${PWD}
fi

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

# Completions.
# You may want to put all your completions into a separate file like
# ~/.zsh_completions, instead of adding them here directly.

if [ -f ~/.zsh_completions ]; then
    . ~/.zsh_completions
fi
 
source ~/.antidote/antidote.zsh

# set omz variables
ZSH=$(antidote path ohmyzsh/ohmyzsh)
ZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/oh-my-zsh"

[[ -d $ZSH_CACHE_DIR ]] || mkdir -p $ZSH_CACHE_DIR && mkdir -p $ZSH_CACHE_DIR/completions

antidote load # Load antidote

# Plugins.
# You may want to put all your additions into a separate file like
# ~/.zsh_plugins.txt, instead of adding them here directly.
# Set the name of the static .zsh plugins file antidote will generate.
zsh_plugins=~/.zsh_plugins.zsh

# Ensure a .zsh_plugins.txt file to add plugins.
[[ -f ${zsh_plugins:r}.txt ]] || touch ${zsh_plugins:r}.txt

# Lazy-load antidote.
fpath+=(~/.antidote)
autoload -Uz $fpath[-1]/antidote


# Generate static file in a subshell when .zsh_plugins.txt is updated.
if [[ ! $zsh_plugins -nt ${zsh_plugins:r}.txt ]]; then
	(envsubst <${zsh_plugins:r}.txt | antidote bundle >|$zsh_plugins)
fi

# Source static plugins file.
source $zsh_plugins

fpath+=$HOME/.cache/oh-my-zsh/completions

# Init completions
autoload -Uz compinit && compinit
ZSH_COMPDUMP=${ZSH_COMPDUMP:-${ZDOTDIR:-~}/.zcompdump}

# Set layout to colemak
setxkbmap us colemak 

# cache .zcompdump for about a day
if [[ $ZSH_COMPDUMP(#qNmh-20) ]]; then
  compinit -C -d "$ZSH_COMPDUMP"
else
  compinit -i -d "$ZSH_COMPDUMP"; touch "$ZSH_COMPDUMP"
fi
{
  # compile .zcompdump
  if [[ -s "$ZSH_COMPDUMP" && (! -s "${ZSH_COMPDUMP}.zwc" || "$ZSH_COMPDUMP" -nt "${ZSH_COMPDUMP}.zwc") ]]; then
    zcompile "$ZSH_COMPDUMP"
  fi
} &!

# Start Starship
eval "$(starship init zsh --print-full-init)"

# bun completions
[ -s "/home/hambergerpls/.bun/_bun" ] && source "/home/hambergerpls/.bun/_bun"
=======
[ -s "/home/danial/.bun/_bun" ] && source "/home/danial/.bun/_bun"

# pyenv
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
