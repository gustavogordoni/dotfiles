#!/bin/bash

has_walker() {
  command -v walker &>/dev/null
}

check_dependencies() {
  local deps=("git" "cp" "mv" "chmod" "notify-send")
  for dep in "${deps[@]}"; do
    if ! command -v "$dep" &>/dev/null; then
      notify-send "Atenção" "Dependência ausente: $dep"
      missing=1
    fi
  done

  local extras=("zsh" "hyprctl" "waybar" "alacritty" "nvim" "code" "fastfetch" "firefox")
  for dep in "${extras[@]}"; do
    command -v "$dep" &>/dev/null || notify-send "Atenção" "Opcional ausente: $dep"
  done

  [ "$missing" = "1" ] && { echo "Instale as dependências acima antes de continuar"; exit 1; }
}

backup_if_exists() {
  local target="$1"
  local bak_target="${target}.bak"

  if [ -e "$target" ]; then
    echo "O caminho '$target' já existe."
    local resp

    if command -v walker &>/dev/null; then
      resp=$(echo -e "Sim\nNão" | walker --dmenu --width 295 --minheight 1 --maxheight 200 -p "Criar backup de $(basename "$target")?" 2>/dev/null | tail -n 1)
      [[ "$resp" == "Sim" ]] && resp="S" || resp="N"
    else
      read -rp "Deseja criar um backup em '${bak_target}'? [S/n]: " resp
      resp=${resp:-S}
    fi

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

  # Plugins Zsh
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
  git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH_CUSTOM/plugins/you-should-use
  git clone https://github.com/fdellwing/zsh-bat.git $ZSH_CUSTOM/plugins/zsh-bat

  backup_if_exists ~/.zshrc
  cp -r ./zsh/.zshrc ~/
  backup_if_exists ~/.oh-my-zsh/custom/aliases.zsh
  cp -r ./zsh/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
  backup_if_exists ~/.p10k.zsh

  # Theme dependencies
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

  cp -r ./powerlevel10k/.p10k.zsh ~/

  source ~/.zshrc
  source $ZSH_CUSTOM/aliases.zsh

  echo "ZSH importado!"
  notify-send "Configuração importada" "As configurações do ZSH foram definidas."
}

import_hypr() {
  echo "Importando Hyprland..."
  mkdir -p ~/.config
  backup_if_exists ~/.config/hypr
  cp -r ./hypr ~/.config/
  chmod -R u+x ~/.config/hypr/scripts

  hyprctl reload

  echo "Hypr importado!"
  notify-send "Configuração importada" "As configurações do Hyprland foram definidas."
}

import_waybar() {
  echo "Importando Waybar..."
  mkdir -p ~/.config
  backup_if_exists ~/.config/waybar

  cp -r ./waybar ~/.config/
  chmod -R u+x ~/.config/waybar/scripts

  cp ~/.config/waybar/themes/gordoni/config.jsonc ~/.config/waybar/config.jsonc
  cp ~/.config/waybar/themes/gordoni/style.css ~/.config/waybar/style.css

  cp ./omarchy/bin/omarchy-theme-waybar ~/.local/share/omarchy/bin/
  chmod u+x ~/.local/share/omarchy/bin/omarchy-theme-waybar

  omarchy-restart-waybar

  echo "Waybar importado!"
  notify-send "Configuração importada" "As configurações do Waybar foram definidas."
}

import_walker() {
  echo "Importando Walker..."
  mkdir -p ~/.config
  backup_if_exists ~/.config/walker
  cp -r ./walker ~/.config/

  omarchy-restart-walker

  echo "Walker importado!"
  notify-send "Configuração importada" "As configurações do Walker foram definidas."
}

import_alacritty() {
  echo "Importando Alacritty..."
  mkdir -p ~/.config
  backup_if_exists ~/.config/alacritty
  cp -r ./alacritty ~/.config/
  echo "Alacritty importado!"
  notify-send "Configuração importada" "As configurações do Alacritty foram definidas."
}

import_btop() {
  echo "Importando Btop..."
  mkdir -p ~/.config
  backup_if_exists ~/.config/btop
  cp -r ./btop ~/.config/
  echo "Btop importado!"
  notify-send "Configuração importada" "As configurações do Btop foram definidas."
}

import_uwsm() {
  echo "Importando UWSM..."
  mkdir -p ~/.config
  backup_if_exists ~/.config/uwsm
  cp -r ./uwsm ~/.config/
  echo "UWSM importado!"
  notify-send "Configuração importada" "As configurações do UWSM foram definidas."
}

import_omarchy() {
  echo "Importando Omarchy Branding..."
  mkdir -p ~/.config/omarchy
  backup_if_exists ~/.config/omarchy/branding
  cp -r ./omarchy/branding ~/.config/omarchy/
  echo "Omarchy Branding importado!"
  notify-send "Arquivos importados" "Os arquivos do Omarchy Branding foram definidos."
}

import_nvim() {
  echo "Importando Neovim..."
  mkdir -p ~/.config
  backup_if_exists ~/.config/nvim
  cp -r ./nvim ~/.config/
  echo "Neovim importado!"
  notify-send "Configuração importada" "As configurações do Neovim foram definidas."
}

import_vscode() {
  echo "Importando VSCode..."
  mkdir -p ~/.config/Code/User
  backup_if_exists ~/.config/Code/User/settings.json
  cp -r ./vscode/settings.json ~/.config/Code/User/
  echo "VSCode importado!"
  notify-send "Configuração importada" "As configurações do VSCode foram definidas."
}

import_zed() {
  echo "Importando Zed..."
  mkdir -p ~/.config
  backup_if_exists ~/.config/zed
  cp -r ./zed ~/.config/
  echo "Zed importado!"
  notify-send "Configuração importada" "As configurações do Zed foram definidas."
}

import_fastfetch() {
  echo "Importando Fastfetch..."
  mkdir -p ~/.config
  backup_if_exists ~/.config/fastfetch
  cp -r ./fastfetch ~/.config/

  echo "Fastfetch importado!"
  notify-send "Configuração importada" "As configurações do Fastfetch foram definidas."

  omarchy-launch-about
}

import_firefox() {
  echo "Importando Firefox..."

  local firefox_dir="$HOME/.mozilla/firefox"

  # local profile_dir
  # profile_dir=$(find "$firefox_dir" -maxdepth 1 -type d -name "*.default-release" | head -n 1)

  local profile_dir = $(find "$firefox_dir" -maxdepth 1 -type d -name "*.default-release" | head -n 1)

  if [ -z "$profile_dir" ]; then
    echo "Nenhum perfil Firefox encontrado!"
    echo "Abra o Firefox ao menos uma vez e verifique o caminho em: about:support"
    notify-send "Firefox" "Nenhum perfil encontrado. Abra o Firefox antes de importar."
    return 1
  fi

  local chrome_dir="$profile_dir/chrome"

  echo "Perfil detectado: $profile_dir"
  mkdir -p "$chrome_dir"

  backup_if_exists "$chrome_dir"

  cp -r ./firefox/* "$chrome_dir/"

  echo "Arquivos copiados para: $chrome_dir"
  echo ""
  echo "Passos manuais necessários:"
  echo "- Abra o Firefox e vá até 'about:config'."
  echo "- Busque por: toolkit.legacyUserProfileCustomizations.stylesheets"
  echo "- Defina como: true"
  echo "- Reinicie o Firefox."
  echo ""
  echo "Dica: O tema será aplicado automaticamente após o reinício."

  notify-send "Configuração importada" "Tema do Firefox instalado no perfil detectado."
}

import_containers() {
  echo "Importando Containers..."
  mkdir -p ~/dev
  backup_if_exists ~/dev/containers
  cp -r ./containers ~/dev/
  cp ~/dev/containers/ngrok/.env.example ~/dev/containers/ngrok/.env

  echo "Containers importados!"
  notify-send "Configuração importada" "As configurações dos Containers foram definidas."
}

import_xcompose() {
  echo "Importando XCompose..."
  backup_if_exists ~/.XCompose
  cp -r ./xcompose/.XCompose ~/

  echo "XCompose importado!"
  notify-send "Configuração importada" "As configurações do XCompose foram definidas."
}

import_all() {
  import_zsh
  import_hypr
  import_waybar
  import_walker
  import_alacritty
  import_btop
  import_uwsm
  import_omarchy
  import_nvim
  import_vscode
  import_zed
  import_fastfetch
  import_firefox
  import_containers
  import_xcompose
  echo "Importação completa!"
}

# =====
# Menu
# =====
show_menu() {
  options="0) Sair
1) Tudo
2) ZSH
3) Hyprland
4) Waybar
5) Walker
6) Alacritty
7) Btop
8) UWSM
9) Omarchy Branding
10) Neovim
11) VSCode
12) Zed
13) Fastfetch
14) Firefox
15) Containers
16) XCompose"

  check_dependencies

  echo "$options"
}

show_menu_terminal() {
  clear
  echo "============================"
  echo "     MENU DE IMPORTAÇÃO"
  echo "============================"
  show_menu
  echo "============================"
}

while true; do
  if has_walker; then
    opt=$(show_menu | walker --dmenu --width 295 --minheight 1 --maxheight 600 -p "Import Menu" 2>/dev/null | grep -o '^[0-9]\+')
    [ -z "$opt" ] && echo "Cancelado." && exit 0
  else
    show_menu_terminal
    read -rp "Escolha uma opção: " opt
  fi

  case $opt in
    0) echo "Saindo..."; exit 0 ;;
    1) import_all ;;
    2) import_zsh ;;
    3) import_hypr ;;
    4) import_waybar ;;
    5) import_walker ;;
    6) import_alacritty ;;
    7) import_btop ;;
    8) import_uwsm ;;
    9) import_omarchy ;;
    10) import_nvim ;;
    11) import_vscode ;;
    12) import_zed ;;
    13) import_fastfetch ;;
    14) import_firefox ;;
    15) import_containers ;;
    16) import_xcompose ;;
    *) [ -n "$opt" ] && echo "Opção inválida!" ;;
  esac

  # Só espera ENTER no terminal
  if ! has_walker; then
    echo ""
    read -rp "Pressione ENTER para voltar ao menu..."
  fi
done
