#!/bin/bash

backup_if_exists() {
  local target="$1"
  local bak_target="${target}.bak"

  if [ -e "$target" ]; then
    echo "O caminho '$target' já existe."
    read -rp "Deseja criar um backup em '${bak_target}'? [S/n]: " resp
    resp=${resp:-S}
    if [[ "$resp" =~ ^[SsYy]$ ]]; then
      echo "Criando backup..."
      if [ -d "$target" ]; then
        cp -r "$target" "$bak_target"
      else
        cp "$target" "$bak_target"
      fi
      echo "Backup criado em '$bak_target'"
    else
      echo "Backup ignorado."
    fi
  fi
}

import_zsh() {
  echo "Importando ZSH..."
  mkdir -p ~/.oh-my-zsh/custom/
  backup_if_exists ~/.zshrc
  cp -r ./zsh/.zshrc ~/
  backup_if_exists ~/.oh-my-zsh/custom/aliases.zsh
  cp -r ./zsh/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
  backup_if_exists ~/.p10k.zsh
  cp -r ./powerlevel10k/.p10k.zsh ~/
  echo "ZSH importado!"
}

import_hypr() {
  echo "Importando Hyprland..."
  mkdir -p ~/.config
  backup_if_exists ~/.config/hypr
  cp -r ./hypr ~/.config/
  echo "Hypr importado!"
}

import_waybar() {
  echo "Importando Waybar..."
  mkdir -p ~/.config
  backup_if_exists ~/.config/waybar
  cp -r ./waybar ~/.config/
  echo "Waybar importado!"
}

import_walker() {
  echo "Importando Walker..."
  mkdir -p ~/.config
  backup_if_exists ~/.config/walker
  cp -r ./walker ~/.config/
  echo "Walker importado!"
}

import_alacritty() {
  echo "Importando Alacritty..."
  mkdir -p ~/.config
  backup_if_exists ~/.config/alacritty
  cp -r ./alacritty ~/.config/
  echo "Alacritty importado!"
}

import_uwsm() {
  echo "Importando UWSM..."
  mkdir -p ~/.config
  backup_if_exists ~/.config/uwsm
  cp -r ./uwsm ~/.config/
  echo "UWSM importado!"
}

import_omarchy() {
  echo "Importando Omarchy Branding..."
  mkdir -p ~/.config/omarchy
  backup_if_exists ~/.config/omarchy/branding
  cp -r ./omarchy/branding ~/.config/omarchy/
  echo "Omarchy importado!"
}

import_nvim() {
  echo "Importando Neovim..."
  mkdir -p ~/.config
  backup_if_exists ~/.config/nvim
  cp -r ./nvim ~/.config/
  echo "Neovim importado!"
}

import_vscode() {
  echo "Importando VSCode..."
  mkdir -p ~/.config/Code/User
  backup_if_exists ~/.config/Code/User/settings.json
  cp -r ./vscode/settings.json ~/.config/Code/User/
  echo "VSCode importado!"
}

import_fastfetch() {
  echo "Importando Fastfetch..."
  mkdir -p ~/.config
  backup_if_exists ~/.config/fastfetch
  cp -r ./fastfetch ~/.config/
  echo "Fastfetch importado!"
}

import_containers() {
  echo "Importando Containers..."
  mkdir -p ~/dev
  backup_if_exists ~/dev/Containers
  cp -r ./containers ~/dev/
  echo "Containers importados!"
}

import_xcompose() {
  echo "Importando XCompose..."
  backup_if_exists ~/.XCompose
  cp -r ./xcompose/.XCompose ~/
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
