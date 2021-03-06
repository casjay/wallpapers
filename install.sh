#!/usr/bin/env bash
if [ -d ~/.local/theming ]; then
  git -C ~/.local/theming pull
else
  git clone -q https://github.com/casjay/theming.git ~/.local/theming
fi
sudo cp -Rf ~/.local/theming/icons/* /usr/share/icons/
sudo cp -Rf ~/.local/theming/fonts/* /usr/share/fonts/
sudo cp -Rf ~/.local/theming/themes/* /usr/share/themes/
sudo cp -Rf ~/.local/theming/wallpapers /usr/share/backgrounds/casjaysdev
sudo gtk-update-icon-cache
sudo fc-cache -f
