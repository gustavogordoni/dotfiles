# Meus dotfiles

Repositório com minhas configurações pessoais do Omarchy v3.0.2.  
Inclui scripts para **backup** e **restauração** de dotfiles.

---

## Estrutura

- `export.sh` → copia as configurações atuais do sistema para este repositório.
- `import.sh` → aplica as configurações deste repositório no sistema.
- Pastas incluídas:
  - `zsh/` → configurações do [zsh](https://www.zsh.org/)
  - `powerlevel10k/` → tema do [powerlevel10k](https://github.com/romkatv/powerlevel10k)
  - `hypr/` → configuração do [Hyprland](https://hyprland.org/)
  - `waybar/` → configuração do [Waybar](https://github.com/Alexays/Waybar)
  - `walker/` → launcher [walker](https://github.com/abenz1267/walker)
  - `alacritty/` → terminal [Alacritty](https://alacritty.org/)
  - `uwsm/` → configurações do [UWsm](https://github.com/Vladimir-csp/uwsm)
  - `nvim/` → configuração do [Neovim](https://neovim.io/)
  - `vscode/` → configurações do [Visual Studio Code](https://code.visualstudio.com/)
  - `fastfetch/` → utilitário de [fetch](https://github.com/fastfetch-cli/fastfetch) (alternativa ao neofetch)
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
git clone -b omarchy https://github.com/gustavogordoni/dotfiles dotfiles-omarchy
cd dotfiles-omarchy
```

---

## Backup

Para salvar as configurações atuais no repositório:

```bash
chmod u+x export.sh
./export.sh
````

Os arquivos serão copiados para as pastas correspondentes dentro do repositório.

---

## Restauração

Para aplicar as configurações deste repositório em um sistema:

```bash
chmod u+x import.sh
./import.sh
```

Isso irá copiar os arquivos para os diretórios corretos.
