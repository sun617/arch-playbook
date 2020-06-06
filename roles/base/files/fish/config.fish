if status --is-interactive
  # pacman
  abbr --add --global p     pacman
  abbr --add --global pf    pacman -F
  abbr --add --global pfl   pacman -Fl
  abbr --add --global pq    pacman -Q
  abbr --add --global pql   pacman -Ql
  abbr --add --global pr    pacman -Rs
  abbr --add --global ps    pacman -S
  abbr --add --global psi   pacman -Si
  abbr --add --global psii  pacman -Sii
  abbr --add --global psy   pacman -Sy
  abbr --add --global psyu  pacman -Syu
  abbr --add --global pu    pacman -U
  # systemctl
  abbr --add --global s     systemctl
  abbr --add --global se    systemctl enable
  abbr --add --global ss    systemctl status
  abbr --add --global sS    systemctl start
  abbr --add --global su    systemctl --user
  abbr --add --global sus   systemctl --user status
end
