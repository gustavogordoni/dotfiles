#!/usr/bin/env bash

# Criar diretórios de destino
mkdir -p ./tmux
mkdir -p ./zsh
mkdir -p ./powerlevel10k
mkdir -p ./nvim
mkdir -p ./vscode
mkdir -p ./ghostty
mkdir -p ./fastfetch
mkdir -p ./crankshaft

# home
cp -r ~/.tmux.conf ./tmux/
cp -r ~/.zshrc ./zsh/
cp -r ~/.p10k.zsh ./powerlevel10k/

# .config
cp -r ~/.config/tmux ./tmux
cp -r ~/.config/ghostty/* ./ghostty
cp -r ~/.config/fastfetch/* ./fastfetch
cp -r ~/.config/nvim/* ./nvim/
cp -r ~/.config/Code/User/settings.json ./vscode/
cp -r ~/.config/crankshaft/config/* ./crankshaft

echo "Cópia das configurações realizada com sucesso!"
