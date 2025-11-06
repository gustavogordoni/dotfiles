#!/bin/bash

# Caminho dos perfis do HyprMon
PROFILES_DIR="$HOME/.config/hyprmon/profiles"

# Garante que o diretório existe
if [[ ! -d "$PROFILES_DIR" ]]; then
  notify-send "HyprMon" "Nenhum perfil encontrado em $PROFILES_DIR"
  exit 1
fi

# Lista os perfis disponíveis (ignora arquivos temporários e ordena)
profiles=$(find "$PROFILES_DIR" -maxdepth 1 -type f -printf "%f\n" | sort)

# Se não houver perfis
if [[ -z "$profiles" ]]; then
  notify-send "HyprMon" "Nenhum perfil salvo encontrado"
  exit 0
fi

# Mostra o menu com walker
selected=$(echo "$profiles" | walker --dmenu --width 295 --minheight 1 --maxheight 600 -p "HyprMon Profile" 2>/dev/null | tail -n 1)

# Se cancelado ou vazio
if [[ "$selected" == "CNCLD" || -z "$selected" ]]; then
  exit 0
fi

# Aplica o perfil selecionado
hyprmon --profile "${selected%.*}"
