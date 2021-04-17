# antigen need Git
#export GIT_HOME=/c/regis/apps/PortableGit
#export PATH=$PATH:$GIT_HOME/bin

# https://gist.github.com/magicdude4eva/2d4748f8ef3e6bf7b1591964c201c1ab
### Fix slowness of pastes with zsh-syntax-highlighting.zsh
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish
### Fix slowness of pastes

source ~/.shell/antigen.zsh
# antigen-init command doesn't look into bundle configuration changes, thus you'll need to use antigen-reset to reload plugins.
antigen init ~/.shell/.antigenrc

autoload -U colors && colors

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C
  
bindkey \^U backward-kill-line

fpath=(~/.shell $fpath)

ZSH_THEME_TERM_TITLE_IDLE="%3d"

# for 8 colors term
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=black,bold'
# https://github.com/zsh-users/zsh-syntax-highlighting/issues/513
ZSH_HIGHLIGHT_MAXLENGTH=60
# recommended value is 20. This can be useful when pasting large amount of text in the terminal, to avoid triggering autosuggestion for too long strings.
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

source ~/.shell/init.sh
