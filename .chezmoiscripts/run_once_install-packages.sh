#!/bin/sh


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
  "noctalia"
  "nautilus"
  "bibata-cursor-theme"
)

personal_programs=(
  "vesktop"
  "spotify"
  "spicetify"
  "steam"
  "zed"
  "zen-browser-bin"
  "qbittorrent"
)

read -p "Do you prefer yay or paru? (or press enter to choose paru by default): " aur_tool
aur_tool=${aur_tool:-paru}

if [[ "${aur_tool}" == "paru" ]]; then
  for pkg in "${packages[@]}"; do
    echo "Installing: ${pkg}"
    sleep .1
    "${aur_tool}" -S --needed "${pkg}"
    clear
  done

  for pkg in "${personal_programs[@]}"; do
    echo "Installing: ${pkg}"
    sleep .1
    "${aur_tool}" -S --needed "${pkg}"
    clear
  done
fi


if [[ "${aur_tool}" == "yay" ]]; then
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
fi

