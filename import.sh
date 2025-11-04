#!/bin/bash

import_zsh() {
  echo "Importando ZSH..."
  mkdir -p ~/.oh-my-zsh/custom/
  cp -r ./zsh/.zshrc ~/
  cp -r ./zsh/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
  cp -r ./powerlevel10k/.p10k.zsh ~/
  echo "ZSH importado!"
}

import_hypr() {
  echo "Importando Hyprland..."
  mkdir -p ~/.config/hypr
  cp -r ./hypr/* ~/.config/hypr/
  echo "Hypr importado!"
}

import_waybar() {
  echo "Importando Waybar..."
  mkdir -p ~/.config/waybar
  cp -r ./waybar/* ~/.config/waybar/
  echo "Waybar importado!"
}

import_walker() {
  echo "Importando Walker..."
  mkdir -p ~/.config/walker
  cp -r ./walker/* ~/.config/walker/
  echo "Walker importado!"
}

import_alacritty() {
  echo "Importando Alacritty..."
  mkdir -p ~/.config/alacritty
  cp -r ./alacritty/* ~/.config/alacritty/
  echo "Alacritty importado!"
}

import_uwsm() {
  echo "Importando UWSM..."
  mkdir -p ~/.config/uwsm
  cp -r ./uwsm/* ~/.config/uwsm/
  echo "UWSM importado!"
}

import_omarchy() {
  echo "Importando Omarchy Branding..."
  mkdir -p ~/.config/omarchy/branding
  cp -r ./omarchy/branding/* ~/.config/omarchy/branding/
  echo "Omarchy importado!"
}

import_nvim() {
  echo "Importando Neovim..."
  mkdir -p ~/.config/nvim
  cp -r ./nvim/* ~/.config/nvim/
  echo "Neovim importado!"
}

import_vscode() {
  echo "Importando VSCode..."
  mkdir -p ~/.config/Code/User
  cp -r ./vscode/settings.json ~/.config/Code/User/
  echo "VSCode importado!"
}

import_fastfetch() {
  echo "Importando Fastfetch..."
  mkdir -p ~/.config/fastfetch
  cp -r ./fastfetch/* ~/.config/fastfetch/
  echo "Fastfetch importado!"
}

import_containers() {
  echo "Importando Containers..."
  mkdir -p ~/dev/Containers
  cp -r ./containers/* ~/dev/Containers/
  echo "Containers importados!"
}

import_xcompose() {
  echo "Importando XCompose..."  
  cp -r ./vscode/settings.json ~/.config/Code/User/
  cp -r ./xcompose/.XCompose ~/.XCompose
  echo "XCompose importado!"
}

import_all() {
  import_zsh
  import_hypr
  import_waybar
  import_walker
  import_alacritty
  import_uwsm
  import_omarchy
  import_nvim
  import_vscode
  import_fastfetch
  import_containers
  import_xcompose
  echo "Importação completa!"
}

# =====
# Menu
# =====
show_menu() {
  clear
  echo "============================"
  echo "     MENU DE IMPORTAÇÃO"
  echo "============================"
  echo "1) Importar Tudo"
  echo "2) Importar ZSH"
  echo "3) Importar Hyprland"
  echo "4) Importar Waybar"
  echo "5) Importar Walker"
  echo "6) Importar Alacritty"
  echo "7) Importar UWSM"
  echo "8) Importar Omarchy Branding"
  echo "9) Importar Neovim"
  echo "10) Importar VSCode"
  echo "11) Importar Fastfetch"
  echo "12) Importar Containers"
  echo "13) Exportar XCompose"
  echo "0) Sair"
  echo "============================"
}

while true; do
  show_menu
  read -rp "Escolha uma opção: " opt
  case $opt in
    1) import_all ;;
    2) import_zsh ;;
    3) import_hypr ;;
    4) import_waybar ;;
    5) import_walker ;;
    6) import_alacritty ;;
    7) import_uwsm ;;
    8) import_omarchy ;;
    9) import_nvim ;;
    10) import_vscode ;;
    11) import_fastfetch ;;
    12) import_containers ;;
    13) import_xcompose ;;
    0) echo "Saindo..."; exit 0 ;;
    *) echo "Opção inválida!" ;;
  esac
  echo ""
  read -rp "Pressione ENTER para voltar ao menu..."
done
