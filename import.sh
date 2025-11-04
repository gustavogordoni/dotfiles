#!/bin/bash

import_tmux() {
  echo "Importando Tmux..."
  mkdir -p ~/.config/tmux
  cp -r ./tmux/.tmux.conf ~/
  cp -r ./tmux/* ~/.config/tmux/
  echo "Tmux importado!"
}

import_zsh() {
  echo "Importando ZSH..."
  cp -r ./zsh/.zshrc ~/
  cp -r ./powerlevel10k/.p10k.zsh ~/
  echo "ZSH importado!"
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

import_ghostty() {
  echo "Importando Ghostty..."
  mkdir -p ~/.config/ghostty
  cp -r ./ghostty/* ~/.config/ghostty/
  echo "Ghostty importado!"
}

import_fastfetch() {
  echo "Importando Fastfetch..."
  mkdir -p ~/.config/fastfetch
  cp -r ./fastfetch/* ~/.config/fastfetch/
  echo "Fastfetch importado!"
}

import_crankshaft() {
  echo "Importando Crankshaft..."
  mkdir -p ~/.config/crankshaft/config/
  cp -r ./crankshaft/* ~/.config/crankshaft/config/
  echo "Crankshaft importado!"
}

import_containers() {
  echo "Importando Containers..."
  mkdir -p ~/dev/Containers
  cp -r ./containers/* ~/dev/Containers/
  echo "Containers importados!"
}

import_all() {
  import_tmux
  import_zsh
  import_nvim
  import_vscode
  import_ghostty
  import_fastfetch
  import_crankshaft
  import_containers
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
  echo "2) Importar Tmux"
  echo "3) Importar ZSH"
  echo "4) Importar Neovim"
  echo "5) Importar VSCode"
  echo "6) Importar Ghostty"
  echo "7) Importar Fastfetch"
  echo "8) Importar Crankshaft"
  echo "9) Importar Containers"
  echo "0) Sair"
  echo "============================"
}

while true; do
  show_menu
  read -rp "Escolha uma opção: " opt
  case $opt in
    1) import_all ;;
    2) import_tmux ;;
    3) import_zsh ;;
    4) import_nvim ;;
    5) import_vscode ;;
    6) import_ghostty ;;
    7) import_fastfetch ;;
    8) import_crankshaft ;;
    9) import_containers ;;
    0) echo "Saindo..."; exit 0 ;;
    *) echo "Opção inválida!" ;;
  esac
  echo ""
  read -rp "Pressione ENTER para voltar ao menu..."
done