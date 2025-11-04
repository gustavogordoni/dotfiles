#!/bin/bash

reset() {
  echo "Limpando diretórios antigos..."
  rm -rf ./hypr ./waybar ./walker ./alacritty ./uwsm ./omarchy \
         ./zsh ./powerlevel10k ./nvim ./vscode ./fastfetch ./containers ./.XCompose
}

export_zsh() {
  echo "Exportando ZSH..."
  mkdir -p ./zsh ./powerlevel10k
  cp -r ~/.zshrc ./zsh/
  cp -r ~/.oh-my-zsh/custom/aliases.zsh ./zsh/aliases.zsh
  cp -r ~/.p10k.zsh ./powerlevel10k/
  echo "ZSH exportado com sucesso!"
}

export_hypr() {
  echo "Exportando Hyprland..."
  mkdir -p ./hypr
  cp -r ~/.config/hypr/* ./hypr/
  echo "Hypr exportado com sucesso!"
}

export_waybar() {
  echo "Exportando Waybar..."
  mkdir -p ./waybar
  cp -r ~/.config/waybar/* ./waybar/
  echo "Waybar exportado com sucesso!"
}

export_walker() {
  echo "Exportando Walker..."
  mkdir -p ./walker
  cp -r ~/.config/walker/* ./walker/
  echo "Walker exportado com sucesso!"
}

export_alacritty() {
  echo "Exportando Alacritty..."
  mkdir -p ./alacritty
  cp -r ~/.config/alacritty/* ./alacritty/
  echo "Alacritty exportado com sucesso!"
}

export_uwsm() {
  echo "Exportando UWSM..."
  mkdir -p ./uwsm
  cp -r ~/.config/uwsm/* ./uwsm/
  echo "UWSM exportado com sucesso!"
}

export_omarchy() {
  echo "Exportando Omarchy Branding..."
  mkdir -p ./omarchy/branding
  cp -r ~/.config/omarchy/branding/* ./omarchy/branding/
  echo "Omarchy exportado com sucesso!"
}

export_nvim() {
  echo "Exportando Neovim..."
  mkdir -p ./nvim
  cp -r ~/.config/nvim/* ./nvim/
  echo "Neovim exportado com sucesso!"
}

export_vscode() {
  echo "Exportando VSCode..."
  mkdir -p ./vscode
  cp -r ~/.config/Code/User/settings.json ./vscode/
  echo "VSCode exportado com sucesso!"
}

export_fastfetch() {
  echo "Exportando Fastfetch..."
  mkdir -p ./fastfetch
  cp -r ~/.config/fastfetch/* ./fastfetch/
  cp ~/.config/omarchy/branding/about.txt ./fastfetch/
  echo "Fastfetch exportado com sucesso!"
}

export_containers() {
  echo "Exportando Containers..."
  mkdir -p ./containers/ngrok
  cp -r ~/dev/Containers/*.yml ./containers/
  cp -r ~/dev/Containers/ngrok/*.yml ./containers/ngrok/
  cp -r ~/dev/Containers/ngrok/.env.example ./containers/ngrok/
  echo "Containers exportados com sucesso!"
}

export_xcompose() {
  echo "Exportando XCompose..."
  mkdir -p ./xcompose
  cp -r ~/.XCompose ./xcompose/
  echo "XCompose exportado com sucesso!"
}

export_all() {
  reset
  export_zsh
  export_hypr
  export_waybar
  export_walker
  export_alacritty
  export_uwsm
  export_omarchy
  export_nvim
  export_vscode
  export_fastfetch
  export_containers
  export_xcompose
  echo "Exportação completa!"
}

# =====
# Menu
# =====
show_menu() {
  clear
  echo "============================"
  echo "     MENU DE EXPORTAÇÃO"
  echo "============================"
  echo "1) Exportar Tudo"
  echo "2) Exportar ZSH"
  echo "3) Exportar Hyprland"
  echo "4) Exportar Waybar"
  echo "5) Exportar Walker"
  echo "6) Exportar Alacritty"
  echo "7) Exportar UWSM"
  echo "8) Exportar Omarchy Branding"
  echo "9) Exportar Neovim"
  echo "10) Exportar VSCode"
  echo "11) Exportar Fastfetch"
  echo "12) Exportar Containers"
  echo "13) Exportar XCompose"
  echo "0) Sair"
  echo "============================"
}

while true; do
  show_menu
  read -rp "Escolha uma opção: " opt
  case $opt in
    1) export_all ;;
    2) export_zsh ;;
    3) export_hypr ;;
    4) export_waybar ;;
    5) export_walker ;;
    6) export_alacritty ;;
    7) export_uwsm ;;
    8) export_omarchy ;;
    9) export_nvim ;;
    10) export_vscode ;;
    11) export_fastfetch ;;
    12) export_containers ;;
    13) export_xcompose ;;
    0) echo "Saindo..."; exit 0 ;;
    *) echo "Opção inválida!" ;;
  esac
  echo ""
  read -rp "Pressione ENTER para voltar ao menu..."
done