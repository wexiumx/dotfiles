#!/usr/bin/env bash
 
FISH_PATH=$(grep -m1 '/fish$' /etc/shells)



read -p "do you want to apply fish shell? (Y/n): " fish_choice 
fish_choice=${aur_tool:-Y}

if [[ fish_choice == "Y" || fish_choice == "y" || fish_choice == "yes" ]]; then
  
  if [[ -z "$FISH_PATH" ]]; then
    echo "fish not found in /etc/shells, skipping shell change" >&2
    exit 0
  fi

  if [[ "$SHELL" != "$FISH_PATH" ]]; then
    chsh -s "$FISH_PATH"
  fi

fi

sudo echo "session    optional     pam_gnome_keyring.so auto_start" >> /etc/pam.d/greetd
