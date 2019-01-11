## Env
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache
set -x GOPATH $HOME/.go
set -x PATH $HOME/.go/bin $PATH
set -x GHQROOT (ghq root)
set -x PATH $HOME/.local/bin $PATH
set -x PATH $HOME/.nodebrew/current/bin $PATH

if test -e $HOME/anaconda3/bin
  set -x PATH $HOME/anaconda3/bin $PATH
end

## Fish Shell (with bobthefish)
set -g theme_display_git yes
set -g theme_display_git_untracked yes
set -g theme_display_git_ahead_verbose yes
set -g theme_git_worktree_support yes
set -g theme_display_vagrant yes
set -g theme_display_docker_machine yes
set -g theme_display_hg yes
set -g theme_display_virtualenv yes
set -g theme_display_ruby yes
set -g theme_display_user yes
set -g theme_display_vi yes
set -g theme_display_date no
set -g theme_display_cmd_duration no
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes
set -g theme_show_exit_status yes
set -g theme_color_scheme dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_project_dir_length 0
set -g theme_newline_cursor yes

## Peco
function fish_user_key_bindings
  bind \cr peco_select_history
  bind \c] peco_select_ghq_repository
end
