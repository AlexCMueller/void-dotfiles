# The following lines were added by compinstall
zstyle :compinstall filename '/home/zachary/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

typeset -U path
path+=($HOME/.cabal/bin)
path+=($HOME/.local/bin)

export EDITOR="nvim"

alias ls="ls --color=auto"

if [ $TERM = "rxvt-unicode-256color" ]
    then
    powerline-daemon -q
    . $HOME/.local/lib/python3.4/site-packages/powerline/bindings/zsh/powerline.zsh
fi
