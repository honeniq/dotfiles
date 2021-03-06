## Env
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache
set -x PATH $HOME/.local/bin $PATH

if test -e $HOME/.nodebrew/current/bin
  set -x PATH $HOME/.nodebrew/current/bin $PATH
end

if test -e $HOME/anaconda3/bin
  set -x PATH $HOME/anaconda3/bin $PATH
end

## Go
if test (uname -s) = "Darwin"
  set -x GOPATH "/usr/local/go/bin/go"
else
  set -x GOPATH $HOME/.go
end

if test -e $HOME/.go/bin
  set -x PATH $HOME/.go/bin $PATH
end

set -x GHQROOT (ghq root)

## configs for shellder
set -g theme_display_user yes
set -g theme_hostname never

## Peco
function fish_user_key_bindings
  bind \cr peco_select_history
  bind \c] peco_select_ghq_repository
end
