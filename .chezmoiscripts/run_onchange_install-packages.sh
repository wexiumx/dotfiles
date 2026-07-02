#!/bin/sh

set -e
trap 'error_message "Script failed at line $LINENO"' ERR

packages=(
  "bat"
  "eza"
  "fd"
  "ripgrep"
  "lazygit"
  "yazi"
  "btop"
  "stow"
  "fastfetch"
  "ghostty"
  "fish"
  "starship"
  "zoxide"
  "fzf"
  "neovim"
  "noctalia-shell"
  "sddm-astronaut-theme"
  "apple-fonts"
  "nautilus"
)

personal_programs=(
  "vesktop"
  "spotify"
  "spicetify"
  "steam"
  "zed"
  "zen-browser"
  "qbittorrent"
)

read -p "Do you prefer yay or paru? (or press enter to choose paru by default): " aur_tool
aur_tool=${aur_tool:-paru}

for pkg in "${packages[@]}"; do
  echo "Installing: ${pkg}"
  sleep .1
  "${aur_tool}" -S --needed --noconfirm --answerclean All --answerdiff None "${pkg}"
  clear
done

for pkg in "${personal_programs[@]}"; do
  echo "Installing: ${pkg}"
  sleep .1
  "${aur_tool}" -S --needed --noconfirm --answerclean All --answerdiff None "${pkg}"
  clear
done

