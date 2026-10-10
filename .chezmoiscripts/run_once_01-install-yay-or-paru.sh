#!/usr/bin/env bash

set -e
trap 'error_message "Script failed at line $LINENO"' ERR

install_yay() {
  if command -v yay >/dev/null; then
    echo "yay is installed. Skipping installation"
  else
    echo "yay is not installed. Installing..."
    sleep 1
    sudo pacman -S --needed --noconfirm base-devel
    whereami=$(pwd)
    git clone https://aur.archlinux.org/yay.git ~/Downloads/yay
    cd ~/Downloads/yay
    makepkg -si
    cd $whereami
    rm -rf ~/Downloads/yay
    echo "yay has been installed successfully"
  fi
}

install_rust() {
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
}

install_paru() {
  if command -v paru >/dev/null; then
    echo "paru is installed. Skipping installation"
  else
    echo "paru is not installed. Installing..."
    sleep 1
    sudo pacman -S --needed --noconfirm base-devel
    whereami=$(pwd)
    git clone https://aur.archlinux.org/paru.git ~/Downloads/paru
    cd ~/Downloads/paru
    makepkg -si
    cd $whereami
    rm -rf ~/Downloads/paru
    echo "paru has been installed successfully"
  fi
}

read -p "Do you prefer yay or paru? (or press enter to skip): " aur_tool
aur_tool=${aur_tool:-skip}

if [[ "${aur_tool}" == "paru" ]]; then
  install_rust
  install_paru
elif [[ "${aur_tool}" == "yay" ]]; then
  install_yay
elif [[ "${aur_tool}" == "skip" ]]; then
  echo "Skipping..."
else
  echo "Error, you have probably made a typo!"
fi

