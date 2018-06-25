source ~/.shell/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
# antigen bundle git
antigen bundle docker

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

antigen bundle zsh-users/zsh-autosuggestions

antigen bundle history-substring-search

antigen bundle rupa/z z.sh

# Load the theme.
# antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply

fpath=(~/.shell $fpath)

PROMPT='%{$fg[green]%}%n@%m%{$reset_color%} %{$fg[yellow]%}%~%{$fg[cyan]%}$(__git_ps1)%{$reset_color%}'$'\n'"$ "

# for 8 colors term
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=black,bold'
# https://github.com/zsh-users/zsh-syntax-highlighting/issues/513
ZSH_HIGHLIGHT_MAXLENGTH=120

source ~/.shell/init.sh
