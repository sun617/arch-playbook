if test (tty) = '/dev/tty1'
  # fcitx5
  # set -x CLUTTER_IM_MODULE xim
  set -x GTK_IM_MODULE fcitx5
  set -x QT_IM_MODULE fcitx5
  set -x XMODIFIERS @im=fcitx5      # for alacritty

  # firefox
  set -x MOZ_ENABLE_WAYLAND 1

  # xdg-desktop-portal-wlr
  set -x XDG_SESSION_TYPE wayland

  # alacritty
  set -x WINIT_UNIX_BACKEND x11

  # qt5
  # set -x QT_QPA_PLATFORMTHEME qt5ct

  # flatpak
  set -x XDG_DATA_DIRS "$HOME/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:/usr/share"

  exec sway
end
