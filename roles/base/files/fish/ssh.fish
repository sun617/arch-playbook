if status --is-interactive; and test -S "$XDG_RUNTIME_DIR/ssh-agent.socket"
  set -x SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"
  if not ssh-add -l > /dev/null
    for private_key in (ls ~/.ssh/id_rsa* | grep -v .pub\$)
      ssh-add $private_key
    end
  end
end
