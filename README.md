# Meus dotfiles

Repositório com minhas configurações pessoais do Linux Mint 22.2.  
Inclui scripts para **backup** e **restauração** de dotfiles.

---

## Estrutura

- `dotfiles.sh` → copia as configurações atuais do sistema para este repositório.
- `install.sh` → aplica as configurações deste repositório no sistema.
- Pastas incluídas:
  - `tmux/` → configurações do [tmux](https://github.com/tmux/tmux)
  - `zsh/` → configurações do [zsh](https://www.zsh.org/)
  - `powerlevel10k/` → tema do [powerlevel10k](https://github.com/romkatv/powerlevel10k)
  - `nvim/` → configuração do [Neovim](https://neovim.io/)
  - `vscode/` → configurações do [Visual Studio Code](https://code.visualstudio.com/)
  - `ghostty/` → terminal [Ghostty](https://ghostty.org/)
  - `fastfetch/` → utilitário de [fetch](https://github.com/fastfetch-cli/fastfetch) (alternativa ao neofetch)
  - `crankshaft/` → configs do [Crankshaft](https://github.com/KraXen72/crankshaft)
  
---

## Backup

Para salvar as configurações atuais no repositório:

```bash
chmod u+x dotfiles.sh
./dotfiles.sh
````

Os arquivos serão copiados para as pastas correspondentes dentro do repositório.

---

## Restauração

Para aplicar as configurações deste repositório em um sistema:

```bash
chmod u+x install.sh
./install.sh
```

Isso irá copiar os arquivos para os diretórios corretos.
