export ZSH=$HOME/.config/zsh
export PATH=$HOME/.local/bin:/usr/local/bin:/snap/bin:/opt/bin:$PATH

export JAVA_HOME=/usr/lib/jvm/jre

### ---- history config -------------------------------------
export HISTFILE=$ZSH/.zsh_history

# How many commands zsh will load to memory.
export HISTSIZE=10000

# How many commands history will save on file.
export SAVEHIST=10000

# History won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS

# History won't show duplicates on search.
setopt HIST_FIND_NO_DUPS

unsetopt autocd beep
bindkey -e

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey '^[[Z' reverse-menu-complete

export PS1="%n@%m %1~ :: "
eval "$(fzf --zsh)"

source $ZSH/.zsh_aliases
source $ZSH/.zsh_completions
