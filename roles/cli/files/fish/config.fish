if status --is-interactive
  # gpg
  set -x GPG_TTY (tty)
  # pacman
  abbr --add --global p     pacman
  abbr --add --global pi    sudo pacman -S
  abbr --add --global pr    sudo pacman -Rs
  abbr --add --global pu    sudo pacman -Syu
  abbr --add --global psi   pacman -Si
  abbr --add --global pss   pacman -Ss
  abbr --add --global pq    pacman -Q
  abbr --add --global pqi   pacman -Qi
  abbr --add --global pqs   pacman -Qs
  abbr --add --global pf    pacman -F
  abbr --add --global pfl   pacman -Fl
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
