#!/usr/bin/env bash

mkdir -p ~/.config/tmux
mkdir -p ~/.config/ghostty
mkdir -p ~/.config/fastfetch
mkdir -p ~/.config/nvim
mkdir -p ~/.config/Code/User
mkdir -p ~/.config/crankshaft/config/
mkdir -p ~/dev/Containers/

# home
cp -r ./tmux/.tmux.conf ~/
cp -r ./zsh/.zshrc ~/
cp -r ./powerlevel10k/.p10k.zsh ~/

# .config
cp -r ./tmux/* ~/.config/tmux/
cp -r ./ghostty/* ~/.config/ghostty/
cp -r ./fastfetch/* ~/.config/fastfetch/
cp -r ./nvim/* ~/.config/nvim/
cp -r ./vscode/settings.json ~/.config/Code/User/
cp -r ./crankshaft/* ~/.config/crankshaft/config/
cp -r ./containers/* ~/dev/Containers/

echo "Restauração das configurações concluída!"