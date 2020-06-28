if status --is-interactive
  abbr --add --global f   flatpak
  abbr --add --global fi  flatpak info
  abbr --add --global fip flatpak info --show-permissions
  abbr --add --global fI  flatpak install flathub
  abbr --add --global fl  flatpak list
  abbr --add --global fo  flatpak override
  abbr --add --global fs  flatpak search
  abbr --add --global fu  flatpak update
  abbr --add --global fU  flatpak uninstall
end
