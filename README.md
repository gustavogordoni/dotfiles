# Meus dotfiles

Repositório com minhas configurações pessoais do Omarchy v3.0.2.  
Inclui scripts para **backup** e **restauração** de dotfiles.

> **Confira também:**
> * Minhas configurações para o [Linux Mint 22.2](https://github.com/gustavogordoni/dotfiles/tree/mint).
> * O tema [Gordoni](https://github.com/gustavogordoni/omarchy-gordoni-theme) que desenvolvi para o Omarchy.

---

## Screenshots

<div align="center">

![Screensaver](https://github.com/gustavogordoni/omarchy-gordoni-theme/blob/main/screenshots/screensaver.gif)

</div>

![Gordoni 3](https://github.com/gustavogordoni/omarchy-gordoni-theme/blob/main/screenshots/3.png)
![Gordoni 9](https://github.com/gustavogordoni/omarchy-gordoni-theme/blob/main/screenshots/9.png)
![Hyprlock](https://github.com/gustavogordoni/omarchy-gordoni-theme/blob/main/screenshots/hyprlock.png)

<details>
<summary><strong>Veja mais</strong></summary>

<br>

![Gordoni 4](https://github.com/gustavogordoni/omarchy-gordoni-theme/blob/main/screenshots/4.png)
![Gordoni 5](https://github.com/gustavogordoni/omarchy-gordoni-theme/blob/main/screenshots/5.png)
![Gordoni 8](https://github.com/gustavogordoni/omarchy-gordoni-theme/blob/main/screenshots/8.png)
![Gordoni 10](https://github.com/gustavogordoni/omarchy-gordoni-theme/blob/main/screenshots/10.png)
![Gordoni 11](https://github.com/gustavogordoni/omarchy-gordoni-theme/blob/main/screenshots/11.png)
![Gordoni 12](https://github.com/gustavogordoni/omarchy-gordoni-theme/blob/main/screenshots/12.png)

</details>

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

## Instalação

Clone o repositório e acesse o diretório
```bash
git clone -b omarchy https://github.com/gustavogordoni/dotfiles dotfiles-omarchy
cd dotfiles-omarchy
```

Dê permissão de execução para o arquivo reset.sh
```bash
chmod u+x reset.sh
```

---

## Exportar Configurações

Para salvar as configurações atuais no repositório:

```bash
chmod u+x export.sh
./export.sh
````

Os arquivos serão copiados para as pastas correspondentes dentro do repositório.

---

## Aplicar Configurações

Para aplicar as configurações deste repositório em um sistema:

```bash
chmod u+x import.sh
./import.sh
```

Isso irá copiar os arquivos para os diretórios corretos.
