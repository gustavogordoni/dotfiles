#!/bin/bash

reset() {
  echo "🧹 Limpando diretórios antigos..."
  rm -rf ./tmux ./zsh ./powerlevel10k ./nvim ./vscode ./ghostty ./fastfetch ./crankshaft ./containers
}

export_tmux() {
  echo "Exportando Tmux..."
  mkdir -p ./tmux
  cp -r ~/.tmux.conf ./tmux/
  cp -r ~/.config/tmux ./tmux/
  echo "Tmux exportado com sucesso!"
}

export_zsh() {
  echo "Exportando ZSH..."
  mkdir -p ./zsh ./powerlevel10k
  cp -r ~/.zshrc ./zsh/
  cp -r ~/.p10k.zsh ./powerlevel10k/
  echo "ZSH exportado com sucesso!"
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

export_ghostty() {
  echo "Exportando Ghostty..."
  mkdir -p ./ghostty
  cp -r ~/.config/ghostty/* ./ghostty/
  echo "Ghostty exportado com sucesso!"
}

export_fastfetch() {
  echo "Exportando Fastfetch..."
  mkdir -p ./fastfetch
  cp -r ~/.config/fastfetch/* ./fastfetch/
  echo "Fastfetch exportado com sucesso!"
}

export_crankshaft() {
  echo "Exportando Crankshaft..."
  mkdir -p ./crankshaft
  cp -r ~/.config/crankshaft/config/* ./crankshaft/
  echo "Crankshaft exportado com sucesso!"
}

export_containers() {
  echo "Exportando Containers..."
  mkdir -p ./containers
  rsync -av --exclude 'ngrok/.env' --exclude 'mysql' --exclude 'postgres' --exclude 'pgadmin' ~/dev/Containers/ ./containers/
  echo "Containers exportados com sucesso!"
}

export_all() {
  reset
  export_tmux
  export_zsh
  export_nvim
  export_vscode
  export_ghostty
  export_fastfetch
  export_crankshaft
  export_containers
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
  echo "2) Exportar Tmux"
  echo "3) Exportar ZSH"
  echo "4) Exportar Neovim"
  echo "5) Exportar VSCode"
  echo "6) Exportar Ghostty"
  echo "7) Exportar Fastfetch"
  echo "8) Exportar Crankshaft"
  echo "9) Exportar Containers"
  echo "0) Sair"
  echo "============================"
}

while true; do
  show_menu
  read -rp "Escolha uma opção: " opt
  case $opt in
    1) export_all ;;
    2) export_tmux ;;
    3) export_zsh ;;
    4) export_nvim ;;
    5) export_vscode ;;
    6) export_ghostty ;;
    7) export_fastfetch ;;
    8) export_crankshaft ;;
    9) export_containers ;;
    0) echo "Saindo..."; exit 0 ;;
    *) echo "Opção inválida!" ;;
  esac
  echo ""
  read -rp "Pressione ENTER para voltar ao menu..."
done