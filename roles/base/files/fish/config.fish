if status --is-interactive
  # gpg
  set -x GPG_TTY (tty)
  # pacman
  abbr --add --global p     pacman
  # systemctl
  abbr --add --global s     systemctl
  abbr --add --global sc    systemctl cat
  abbr --add --global se    systemctl enable
  abbr --add --global sl    systemctl list-dependencies
  abbr --add --global ss    systemctl status
  abbr --add --global su    systemctl --user
  abbr --add --global suc   systemctl --user cat
  abbr --add --global sue   systemctl --user enable
  abbr --add --global sul   systemctl --user list-dependencies
  abbr --add --global sus   systemctl --user status
end
