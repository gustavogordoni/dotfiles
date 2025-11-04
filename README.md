# Meus dotfiles

Repositório com minhas configurações pessoais do Linux Mint 22.2.  
Inclui scripts para **backup** e **restauração** de dotfiles.

> Confira também minhas configurações para o [Omarchy](https://github.com/gustavogordoni/dotfiles/tree/omarchy).

---

## Estrutura do Repositório

* `export.sh` → **exporta** (salva) as configurações atuais do sistema para o repositório
* `import.sh` → **importa** (restaura) as configurações do repositório para o sistema

### Pastas incluídas

| Pasta | Descrição |
|--------|------------|
| `tmux/` | Configurações do [Tmux](https://github.com/tmux/tmux) |
| `zsh/` | Configurações do [ZSH](https://www.zsh.org/) |
| `powerlevel10k/` | Tema do [Powerlevel10k](https://github.com/romkatv/powerlevel10k) |
| `nvim/` | Configuração do [Neovim](https://neovim.io/) |
| `vscode/` | Configurações do [VS Code](https://code.visualstudio.com/) |
| `ghostty/` | Terminal [Ghostty](https://ghostty.org/) |
| `fastfetch/` | Utilitário [Fastfetch](https://github.com/fastfetch-cli/fastfetch) |
| `crankshaft/` | Configurações do [Crankshaft](https://github.com/KraXen72/crankshaft) |
| `containers/` | Arquivos Docker Compose (MySQL, PostgreSQL, PgAdmin, Ngrok, etc.) |
  
---

## Instalação

1. **Clone o repositório e acesse a pasta:**
```bash
git clone -b mint https://github.com/gustavogordoni/dotfiles dotfiles-mint
cd dotfiles-mint
```

2. **Dê permissão de execução aos scripts:**

```bash
chmod +x export.sh import.sh
```

---

## Exportar Configurações

O script `export.sh` salva as configurações atuais do sistema para dentro do repositório.

1. **Execute o script:**

```bash
./export.sh
```

2. **Escolha uma opção no menu:**

* `1` → Exportar tudo
* Ou apenas um componente específico (ZSH, Neovim, Ghostty, etc.)

3. As configurações serão copiadas para as pastas correspondentes dentro do repositório.
> Exemplo: `~/.config/nvim/` → `./nvim/`

---

## Importar Configurações

O script `import.sh` aplica as configurações do repositório no sistema.

1. **Execute o script:**

```bash
./import.sh
```

2. **Escolha uma opção no menu:**

* `1` → Importar tudo
* Ou apenas um componente específico (Tmux, Fastfetch, VS Code, etc.)

3. Os arquivos serão copiados para os diretórios corretos, como `~/.config/`, `~/dev/Containers/` etc.
