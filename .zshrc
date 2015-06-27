export LANG=ja_JP.UTF-8

## 補完機能の強化
autoload -U compinit
compinit

## 色を使う
setopt prompt_subst
## ビープを鳴らさない
setopt nobeep

## プロンプトの色設定
case ${UID} in
0)
    PROMPT="%B%{[31m%}%/#%{[m%}%b "
    PROMPT2="%B%{[31m%}%_#%{[m%}%b "
    SPROMPT="%B%{[31m%}%r is correct? [n,y,a,e]:%{[m%}%b "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
    ;;
*)
    PROMPT="%{[31m%}%/%%%{[m%} "
    PROMPT2="%{[31m%}%_%%%{[m%} "
    SPROMPT="%{[31m%}%r is correct? [n,y,a,e]:%{[m%} "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
    ;;
esac

## OSごとの設定
case "${OSTYPE}" in
    # Mac(Unix)
    darwin*)
        eval "$(rbenv init - zsh)"
        export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
        alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
        alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
        ;;  
    # Linux
    #   ;;  
esac

