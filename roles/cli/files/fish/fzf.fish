if status --is-interactive
  set -x FZF_TMUX 1
  set -x FZF_DEFAULT_COMMAND 'fd --type f'
  set -x FZF_DEFAULT_OPTS '--height 40% --reverse --border'
end
