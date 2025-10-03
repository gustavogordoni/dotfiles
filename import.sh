#!/usr/bin/env bash

# Criar diretórios necessários
mkdir -p ~/.config/hypr
mkdir -p ~/.config/waybar
mkdir -p ~/.config/walker
mkdir -p ~/.config/alacritty
mkdir -p ~/.config/uwsm
mkdir -p ~/.config/nvim
mkdir -p ~/.config/Code/User
mkdir -p ~/.config/fastfetch
mkdir -p ~/dev/Containers

# home
cp -r ./zsh/.zshrc ~/
cp -r ./powerlevel10k/.p10k.zsh ~/
cp -r ./.XCompose ~/

# Omarchy core
cp -r ./hypr/* ~/.config/hypr/
cp -r ./waybar/* ~/.config/waybar/
cp -r ./walker/* ~/.config/walker/
cp -r ./alacritty/* ~/.config/alacritty/
cp -r ./uwsm/* ~/.config/uwsm/

# Extras
cp -r ./nvim/* ~/.config/nvim/
cp -r ./vscode/settings.json ~/.config/Code/User/
cp -r ./fastfetch/* ~/.config/fastfetch/
cp -r ./containers/* ~/dev/Containers/

echo "Restauração das configurações concluída!"