#!/bin/bash

has_walker() {
  command -v walker &>/dev/null
}

check_git_changes() {
  if [ ! -d .git ]; then
    echo "Este diretório não é um repositório Git. Pulando verificação de alterações."
    return
  fi

  if ! git status --porcelain | grep -q .; then
    echo "Nenhuma alteração detectada no repositório."
    return
  fi

  echo ""
  echo "Foram detectadas alterações no repositório local!"
  git status -s
  echo ""

  local resp commit_msg push_resp

  if has_walker; then
    resp=$(echo -e "Sim\nNão" | walker --dmenu --width 495 --minheight 1 --maxheight 200 -p "Deseja realizar commit das alterações?" 2>/dev/null | tail -n 1)
    [[ "$resp" == "Sim" ]] && resp="S" || resp="N"
  else
    read -rp "Deseja realizar um commit dessas alterações? [S/n]: " resp
    resp=${resp:-S}
  fi

  if [[ "$resp" =~ ^[SsYy]$ ]]; then
    if has_walker; then
      commit_msg=$(walker --dmenu --width 400 --minheight 1 --maxheight 200 -p "Mensagem do commit:" 2>/dev/null)
    else
      read -rp "Digite a mensagem do commit: " commit_msg
    fi
    commit_msg=${commit_msg:-"Atualização automática de configurações"}

    git add .
    git commit -m "$commit_msg"
    echo "Commit realizado com sucesso."

    if has_walker; then
      push_resp=$(echo -e "Sim\nNão" | walker --dmenu --width 295 --minheight 1 --maxheight 200 -p "Deseja realizar git push?" 2>/dev/null | tail -n 1)
      [[ "$push_resp" == "Sim" ]] && push_resp="S" || push_resp="N"
    else
      read -rp "Deseja realizar um 'git push'? [S/n]: " push_resp
      push_resp=${push_resp:-S}
    fi

    if [[ "$push_resp" =~ ^[SsYy]$ ]]; then
      git push
      echo "Alterações enviadas para o repositório remoto."
      notify-send "Git Push realizado" "Alterações enviadas para o repositório remoto com sucesso."
    else
      echo "Push ignorado."
    fi
  else
    echo "Commit ignorado."
  fi
}

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
  notify-send "Configuração exportada" "As configurações do ZSH foram copiadas."
}

export_hypr() {
  echo "Exportando Hyprland..."
  mkdir -p ./hypr
  cp -r ~/.config/hypr/* ./hypr/
  echo "Hypr exportado com sucesso!"
  notify-send "Configuração exportada" "As configurações do Hyprland foram copiadas."
}

export_waybar() {
  echo "Exportando Waybar..."
  mkdir -p ./waybar
  cp -r ~/.config/waybar/* ./waybar/
  rm ./waybar/config.jsonc
  rm ./waybar/style.css
  echo "Waybar exportado com sucesso!"
  notify-send "Configuração exportada" "As configurações do Waybar foram copiadas."
}

export_walker() {
  echo "Exportando Walker..."
  mkdir -p ./walker
  cp -r ~/.config/walker/* ./walker/
  echo "Walker exportado com sucesso!"
  notify-send "Configuração exportada" "As configurações do Walker foram copiadas."
}

export_alacritty() {
  echo "Exportando Alacritty..."
  mkdir -p ./alacritty
  cp -r ~/.config/alacritty/* ./alacritty/
  echo "Alacritty exportado com sucesso!"
  notify-send "Configuração exportada" "As configurações do Alacritty foram copiadas."
}

export_uwsm() {
  echo "Exportando UWSM..."
  mkdir -p ./uwsm
  cp -r ~/.config/uwsm/* ./uwsm/
  echo "UWSM exportado com sucesso!"
  notify-send "Configuração exportada" "As configurações do UWSM foram copiadas."
}

export_omarchy() {
  echo "Exportando Omarchy Branding..."
  mkdir -p ./omarchy/branding
  mkdir -p ./omarchy/bin
  cp -r ~/.config/omarchy/branding/* ./omarchy/branding/
  cp -r ~/.local/share/omarchy/bin/omarchy-theme-waybar ./omarchy/bin/
  echo "Omarchy exportado com sucesso!"
  echo "Omarchy Branding importado!"
  notify-send "Arquivos exportados" "Os arquivos do Omarchy Branding foram copiados."
}

export_nvim() {
  echo "Exportando Neovim..."
  mkdir -p ./nvim
  cp -r ~/.config/nvim/* ./nvim/
  rm ./nvim/lazy-lock.json
  echo "Neovim exportado com sucesso!"
  notify-send "Configuração exportada" "As configurações do Neovim foram copiadas."
}

export_vscode() {
  echo "Exportando VSCode..."
  mkdir -p ./vscode
  cp -r ~/.config/Code/User/settings.json ./vscode/
  echo "VSCode exportado com sucesso!"
  notify-send "Configuração exportada" "As configurações do VSCode foram copiadas."
}

export_fastfetch() {
  echo "Exportando Fastfetch..."
  mkdir -p ./fastfetch
  cp -r ~/.config/fastfetch/* ./fastfetch/
  cp ~/.config/omarchy/branding/about.txt ./fastfetch/
  echo "Fastfetch exportado com sucesso!"
  notify-send "Configuração exportada" "As configurações do Fastfetch foram copiadas."
}

export_containers() {
  echo "Exportando Containers..."
  mkdir -p ./containers/ngrok
  cp -r ~/dev/containers/*.yml ./containers/
  cp -r ~/dev/containers/ngrok/*.yml ./containers/ngrok/
  cp -r ~/dev/containers/ngrok/.env.example ./containers/ngrok/
  echo "Containers exportados com sucesso!"
  notify-send "Configuração exportada" "As configurações dos Containers foram copiadas."
}

export_xcompose() {
  echo "Exportando XCompose..."
  mkdir -p ./xcompose
  cp -r ~/.XCompose ./xcompose/
  echo "XCompose exportado com sucesso!"
  notify-send "Configuração exportada" "As configurações do XCompose foram copiadas."
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

  check_git_changes
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
7) UWSM
8) Omarchy Branding
9) Neovim
10) VSCode
11) Fastfetch
12) Containers
13) XCompose"

  echo "$options"
}

show_menu_terminal() {
  clear
  echo "============================"
  echo "     MENU DE EXPORTAÇÃO"
  echo "============================"
  show_menu
  echo "============================"
}

while true; do
  if has_walker; then
    opt=$(show_menu | walker --dmenu --width 295 --minheight 1 --maxheight 600 -p "Export Menu" 2>/dev/null | grep -o '^[0-9]\+')
    [ -z "$opt" ] && echo "Cancelado." && exit 0
  else
    show_menu_terminal
    read -rp "Escolha uma opção: " opt
  fi

  case $opt in
    0) echo "Saindo..."; exit 0 ;;
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
    *) [ -n "$opt" ] && echo "Opção inválida!" ;;
  esac

  if ! has_walker; then
    echo ""
    read -rp "Pressione ENTER para voltar ao menu..."
  fi
done