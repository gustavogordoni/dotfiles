# Meus dotfiles

Repositório com minhas configurações pessoais do [Omarchy](https://omarchy.org/).  
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

## Estrutura do Repositório

* `export.sh` → **exporta** (salva) as configurações atuais do sistema para o repositório
* `import.sh` → **importa** (restaura) as configurações do repositório para o sistema

### Pastas incluídas

| Pasta            | Descrição                                                                |
| ---------------- | ------------------------------------------------------------------------ |
| `zsh/`           | Configurações do [ZSH](https://www.zsh.org/)                             |
| `powerlevel10k/` | Tema do [Powerlevel10k](https://github.com/romkatv/powerlevel10k)        |
| `hypr/`          | Configurações do [Hyprland](https://hyprland.org/)                       |
| `waybar/`        | Configurações do [Waybar](https://github.com/Alexays/Waybar)             |
| `walker/`        | Launcher [Walker](https://github.com/abenz1267/walker)                   |
| `alacritty/`     | Terminal [Alacritty](https://alacritty.org/)                             |
| `uwsm/`          | Configurações do [UWsm](https://github.com/Vladimir-csp/uwsm)            |
| `nvim/`          | Configuração do [Neovim](https://neovim.io/)                             |
| `vscode/`        | Configurações do [VS Code](https://code.visualstudio.com/)               |
| `fastfetch/`     | Utilitário [Fastfetch](https://github.com/fastfetch-cli/fastfetch)       |
| `containers/`    | Arquivos `docker-compose` para serviços (MySQL, PostgreSQL, Ngrok, etc.) |
| `xcompose/`      | Arquivo `.XCompose` de composição de teclas personalizadas               |

---

## Instalação

1. Clone o repositório e acesse o diretório
```bash
git clone -b omarchy https://github.com/gustavogordoni/dotfiles dotfiles-omarchy
cd dotfiles-omarchy
```

2. Dê permissão de execução para os seguintes arquivos
```bash
chmod u+x export.sh import.sh
```

---

## Exportar Configurações

O script `export.sh` copia suas configurações atuais do sistema para dentro do repositório.

1. **Execute o script:**

   ```bash
   ./export.sh
   ```

2. **Escolha uma opção no menu:**

   * `1` → Exportar tudo
   * Ou selecione apenas o componente desejado (ZSH, Neovim, Waybar, etc.)

3. Os arquivos serão copiados para as pastas correspondentes dentro do repositório.
   > Exemplo: `~/.config/nvim/` → `./nvim/`

---

## Importar Configurações

O script `import.sh` aplica as configurações do repositório no seu sistema.

1. **Execute o script:**

   ```bash
   ./import.sh
   ```

2. **Escolha uma opção no menu:**

   * `1` → Importar tudo
   * Ou selecione apenas o componente desejado (Hyprland, Walker, Fastfetch, etc.)

3. Os arquivos serão copiados para os diretórios correspondentes.
   > Exemplo: `./hypr/` → `~/.config/hypr/`