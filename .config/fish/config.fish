## Env
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache
set -x PATH $HOME/.local/bin $PATH

if test -e $HOME/.nodebrew/current/bin
  set -x PATH $HOME/.nodebrew/current/bin $PATH
end

# ================
# PATHs
# ================
## anaconda
if test -e $HOME/anaconda3/bin
  set -x PATH $HOME/anaconda3/bin $PATH
end

## Go
if test (uname -s) = "Darwin"
  set -x GOPATH "/usr/local/go/bin/go"
  set -x PATH /usr/local/go/bin $PATH
else
  set -x GOPATH $HOME/.go
  set -x PATH $HOME/.go/bin $PATH
end
set -x GHQROOT (ghq root)

## Rust
if test -e $HOME/.cargo/bin
  set -x PATH $HOME/.cargo/bin $PATH
end


# ================
# Commands
# ================
## Peco
function fish_user_key_bindings
  bind \cr peco_select_history
  bind \c] peco_select_ghq_repository
end

## AWS CLI
## if 'aws' command not exists, use docker container
if test -e /usr/local/bin/aws
else
  alias aws='docker run --rm -it -v ~/.aws:/root/.aws amazon/aws-cli'
end

## GCP CLI(gcloud)
## if 'gcloud' command not exists, use docker container
if test -e ~/google-cloud-sdk/bin/gcloud
else
  alias gcloud='docker run --rm  --volumes-from gcloud-config gcr.io/google.com/cloudsdktool/cloud-sdk:latest gcloud'
end
