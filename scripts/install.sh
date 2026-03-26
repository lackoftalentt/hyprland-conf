#!/bin/bash

echo "Installing dotfiles..."

# зависимости (пример)
if command -v pacman &> /dev/null; then
    sudo pacman -S --needed hyprland waybar wofi kitty fish fastfetch btop stow
elif command -v apt &> /dev/null; then
    sudo apt install hyprland waybar wofi kitty fish fastfetch btop stow
fi

# линковка
cd ~/dotfiles
stow config

echo "Done!"
