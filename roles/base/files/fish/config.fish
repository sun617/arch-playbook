if status --is-interactive
  # pacman
  abbr --add --global pm    pacman
  # systemctl
  abbr --add --global sl    systemctl list-dependencies
  abbr --add --global sp    systemctl poweroff
  abbr --add --global sr    systemctl reboot
  abbr --add --global ss    systemctl suspend
  abbr --add --global st    systemctl status
  abbr --add --global sul   systemctl --user list-dependencies
  abbr --add --global sut   systemctl --user status
end
