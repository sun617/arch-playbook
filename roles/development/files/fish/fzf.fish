if status --is-interactive
  set -x FZF_TMUX 1
  set -x FZF_DEFAULT_COMMAND 'rg --files --no-ignore --hidden --follow --no-messages --glob "!.git/*"'
  set -x FZF_DEFAULT_OPTS '--height 40% --reverse --border'
  set -x FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
end
