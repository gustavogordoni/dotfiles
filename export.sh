#!/usr/bin/env bash

# Criar diretórios de destino
mkdir -p ./hypr
mkdir -p ./waybar
mkdir -p ./walker
mkdir -p ./alacritty
mkdir -p ./uwsm
mkdir -p ./omarchy/branding
mkdir -p ./zsh
mkdir -p ./powerlevel10k
mkdir -p ./nvim
mkdir -p ./vscode
mkdir -p ./fastfetch
mkdir -p ./containers/ngrok

# home
cp -r ~/.zshrc ./zsh/
cp -r ~/.oh-my-zsh/custom/aliases.zsh ./zsh/aliases.zsh
cp -r ~/.p10k.zsh ./powerlevel10k/
cp -r ~/.XCompose ./

# Omarchy core
cp -r ~/.config/hypr/* ./hypr/
cp -r ~/.config/waybar/* ./waybar/
cp -r ~/.config/walker/* ./walker/
cp -r ~/.config/alacritty/* ./alacritty/
cp -r ~/.config/uwsm/* ./uwsm/
cp -r ~/.config/omarchy/branding/* ./omarchy/branding/

# Extras
cp -r ~/.config/nvim/* ./nvim/
cp -r ~/.config/Code/User/settings.json ./vscode/
cp -r ~/.config/fastfetch/* ./fastfetch/
cp ~/.config/omarchy/branding/about.txt ./fastfetch/

# Containers
cp -r ~/dev/Containers/*.yml ./containers/
cp -r ~/dev/Containers/ngrok/*.yml ./containers/ngrok
cp -r ~/dev/Containers/ngrok/.env.example ./containers/ngrok/

echo "Cópia das configurações realizada com sucesso!"