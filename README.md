# Meus dotfiles

<!--[![GitHub watchers](https://img.shields.io/github/watchers/gustavogordoni/dotfiles)](https://github.com/gustavogordoni/dotfiles/watchers/)-->
<!--[![GitHub forks](https://img.shields.io/github/forks/gustavogordoni/dotfiles)](https://github.com/gustavogordoni/dotfiles/network/)-->
[![GitHub last commit](https://img.shields.io/github/last-commit/gustavogordoni/dotfiles?color=purple)](https://github.com/gustavogordoni/dotfiles/commits/)
[![License](https://img.shields.io/github/license/gustavogordoni/dotfiles)](https://github.com/gustavogordoni/dotfiles/blob/omarchy/LICENSE)

Repositório com minhas configurações pessoais do [Omarchy](https://omarchy.org/).
Inclui scripts para **backup** e **restauração** de dotfiles.

> **Confira também:**
> * Minhas configurações para o [Linux Mint 22.2](https://github.com/gustavogordoni/dotfiles/tree/mint).
> * O tema [Gordoni](https://github.com/gustavogordoni/omarchy-gordoni-theme) que desenvolvi para o Omarchy.

[English Version](README.en.md)

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

| Pasta            | Descrição                                                                           |
| ---------------- | ----------------------------------------------------------------------------------- |
| `zsh/`           | Configurações do [ZSH](https://www.zsh.org/)                                        |
| `powerlevel10k/` | Tema do [Powerlevel10k](https://github.com/romkatv/powerlevel10k)                   |
| `hypr/`          | Configurações do [Hyprland](https://hyprland.org/)                                  |
| `waybar/`        | Configurações do [Waybar](https://github.com/Alexays/Waybar)                        |
| `walker/`        | Launcher [Walker](https://github.com/abenz1267/walker)                              |
| `alacritty/`     | Configurações do terminal [Alacritty](https://alacritty.org/)                       |
| `btop/`          | Configurações do monitor de sistema [Btop](https://github.com/aristocratos/btop)    |
| `uwsm/`          | Configurações do [UWsm](https://github.com/Vladimir-csp/uwsm)                       |
| `nvim/`          | Configurações do [Neovim](https://neovim.io/)                                       |
| `vscode/`        | Configurações do [VS Code](https://code.visualstudio.com/)                          |
| `zed/`           | Configurações do [Zed](https://zed.dev/)                                            |
| `fastfetch/`     | Configurações do utilitário [Fastfetch](https://github.com/fastfetch-cli/fastfetch) |
| `firefox/`       | Configurações do navegador [Firefox](https://www.firefox.com)                       |
| `containers/`    | Arquivos `docker-compose` para serviços (MySQL, PostgreSQL, Ngrok, etc.)            |
| `xcompose/`      | Arquivo `.XCompose` com composições de teclas personalizadas                        |

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
>

---

## Teclas de Atalho

<details>
<summary><strong>Ver o mapeamento de teclas (Atalho e Ação executada)</strong></summary>

| **Atalho**            | **Nome / Descrição**          | **Ação executada**                                                                 |
| --------------------- | ----------------------------- | ---------------------------------------------------------------------------------- |
| **SUPER + RETURN**    | Terminal (Alacritty)          | `exec, uwsm app -- $TERMINAL --dir="$(omarchy-cmd-terminal-cwd)"`                  |
| **SUPER + F**         | File manager (Nautilus)       | `exec, uwsm app -- nautilus --new-window`                                          |
| **SUPER + B**         | Browser (Firefox)             | `exec, omarchy-launch-browser`                                                     |
| **SUPER + SHIFT + B** | Browser (private)             | `exec, omarchy-launch-browser --private`                                           |
<!--| **SUPER + M**         | Music (Spotify)               | `exec, omarchy-launch-or-focus spotify`                                            |-->
| **SUPER + N**         | Editor (VS Code)              | `exec, omarchy-launch-editor`                                                      |
| **SUPER + SHIFT + D** | Docker (Lazydocker)           | `exec, uwsm app -- $TERMINAL -e lazydocker`                                        |
| **SUPER + A**         | ChatGPT                       | `exec, omarchy-launch-webapp "https://chatgpt.com"`                                |
| **SUPER + Y**         | YouTube                       | `exec, omarchy-launch-or-focus-webapp YouTube "https://youtube.com/"`              |
| **SUPER + SHIFT + W** | WhatsApp                      | `exec, omarchy-launch-or-focus-webapp WhatsApp "https://web.whatsapp.com/"`        |
| **SUPER + SHIFT + F** | Fullscreen                    | `fullscreen, 0`                                                                    |
| **SUPER + T**         | Activity (btop)               | `exec, uwsm app -- $TERMINAL -e btop`                                              |
| **SUPER + V**         | Toggle window floating/tiling | `togglefloating,`                                                                  |
| **SUPER + D**         | Discord                       | `exec, omarchy-launch-webapp "https://discord.com/channels/@me"`                   |
| **SUPER + G**         | Github                        | `exec, omarchy-launch-webapp "https://github.com/gustavogordoni?tab=repositories"` |
| **SUPER + SHIFT + N** | Netbeans                      | `exec, netbeans`                                                                   |
| **SUPER + SHIFT + C** | Calculator                    | `exec, gnome-calculator`                                                           |
| **SUPER + M**         | Monitor Picker                | `exec, ~/.config/hypr/scripts/hyprmon-picker.sh`                                   |
| **SUPER + Z**         | Toggle Waybar Theme           | `exec, omarchy-theme-waybar`                                                       |
| **SUPER + SHIFT + Z** | Toggle Waybar Theme (Test)    | `exec, omarchy-theme-waybar-test`                                                  |

</details>

Pode-se notar que foram adicionados **atalhos personalizados** e **scripts auxiliares** para o ambiente.
Eles incluem a troca de temas da Waybar, gerenciamento de monitores com Hyprmon e novos atalhos de aplicativos.

<details>
<summary><strong>Ver detalhes das modificações</strong></summary>

<br>

### 1. Script: `hyprmon-picker.sh`

Permite escolher e aplicar **perfis de monitor** salvos no [hyprmon](https://github.com/erans/hyprmon).

#### Funcionamento

1. Lista todos os perfis em `~/.config/hyprmon/profiles/`
2. Exibe menu via `walker --dmenu`
3. Aplica o perfil selecionado com `hyprmon --profile`

#### Atalho

| Atalho                | Ação                              |
| --------------------- | --------------------------------- |
| **SUPER + SHIFT + M** | Abrir menu de perfis de monitores |

---

### 2. Script: `omarchy-theme-waybar`

Facilita a troca de **temas da Waybar** diretamente com um menu.
<br>
Pequena adaptação de: [Omarchy-auto-waybar-switch](https://github.com/Palccod/Omarchy-auto-waybar-switch)

#### Funcionamento

1. Busca temas em `~/.config/waybar/themes/`
2. Exibe o seletor no Walker
3. Copia o tema selecionado para `style.css` e `config.jsonc`
4. Reinicia a Waybar automaticamente

#### Atalho

| Atalho        | Ação                    |
| ------------- | ----------------------- |
| **SUPER + Z** | Alternar tema da Waybar |

---

### 3. Outros Atalhos Customizados
Algumas das funcionalidades a seguir já existem por padrão no Omarchy, entretanto, são utilizadas através de outras teclas de ataho (na maioria delas, era necessário também precionar SHIFT).

| Atalho                | Ação             | Descrição                           |
| --------------------- | ---------------- | ----------------------------------- |
| **SUPER + SHIFT + F** | Tela cheia       | Alterna fullscreen da janela atual  |
| **SUPER + V**         | Flutuante/Tiling | Alterna modo de janela              |
| **SUPER + T**         | `btop`           | Abre monitor de sistema no terminal |
| **SUPER + D**         | Discord          | Abre o Discord Web em Web App       |
| **SUPER + G**         | GitHub           | Abre perfil no GitHub em Web App    |
| **SUPER + SHIFT + N** | NetBeans         | Abre a IDE                          |
| **SUPER + SHIFT + C** | Calculadora      | Abre `gnome-calculator`             |

</details>

---

## Créditos

[Palccod/Omarchy-auto-waybar-switch](https://github.com/Palccod/Omarchy-auto-waybar-switch) <br>

[HANCORE-linux/waybar-themes](https://github.com/HANCORE-linux/waybar-themes) <br>

[imbypass/omarchy-waybar-bepi](https://github.com/imbypass/omarchy-waybar-bepi) <br>

[datguypiko/Firefox-Mod-Blur](https://github.com/datguypiko/Firefox-Mod-Blur)
