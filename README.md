# Meus dotfiles

Repositório com minhas configurações pessoais do Linux Mint 22.2.  
Inclui scripts para **backup** e **restauração** de dotfiles.

> Confira também minhas configurações para o [Omarchy v3.0.2](https://github.com/gustavogordoni/dotfiles/tree/omarchy).

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
  - `containers/` → arquivos docker-compose dos serviços:
    - [MySQL](https://hub.docker.com/layers/library/mysql/8.0/images/sha256-2ffdae66a52f43285d85feee74d706b625486148f06184b8968962df921f49bc)
    - [phpmyadmin](https://hub.docker.com/layers/library/phpmyadmin/latest/images/sha256-6e8d3ad107917937fcade73cbab0c614a802e8238031c5f50c0ddd8fcc451b4e)
    - [Postgres](https://hub.docker.com/layers/library/postgres/latest/images/sha256-032ddd16227ac678ba50c516ad328a22412883cce019b4a31948688ff2b741da)
    - [PgAdmin](https://hub.docker.com/layers/dpage/pgadmin4/8.10/images/sha256-da70c1222eec67620a6259ab46a29b27e434181d20187d3a3a95ba6e647da500)
    - [Ngrok](https://hub.docker.com/layers/ngrok/ngrok/latest/images/sha256-beb85e9dfde71d6522736c8e7343b61cfcec41aeb898707b1eec13d28df6165e)
  
---

## Instalaçãp

Clone o repositório e acesse o diretório
```bash
git clone -b mint https://github.com/gustavogordoni/dotfiles dotfiles-mint
cd dotfiles-mint
```

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
