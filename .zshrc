# antigen need Git
export GIT_HOME=/c/regis/apps/PortableGit
export PATH=$PATH:$GIT_HOME/bin

source ~/.shell/antigen.zsh

autoload -U colors && colors

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

ZSH_THEME_TERM_TITLE_IDLE="%3d"

# for 8 colors term
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=black,bold'
# https://github.com/zsh-users/zsh-syntax-highlighting/issues/513
ZSH_HIGHLIGHT_MAXLENGTH=60
# ecommended value is 20. This can be useful when pasting large amount of text in the terminal, to avoid triggering autosuggestion for too long strings.
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

source ~/.shell/init.sh
