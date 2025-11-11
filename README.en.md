# My Dotfiles

Repository containing my personal configurations for [Omarchy](https://omarchy.org/).
Includes scripts for **backup** and **restoration** of dotfiles.

> **Also check out:**
>
> * My configurations for [Linux Mint 22.2](https://github.com/gustavogordoni/dotfiles/tree/mint).
> * The [Gordoni theme](https://github.com/gustavogordoni/omarchy-gordoni-theme) I developed for Omarchy.

[Versão em Português](README.md)

---

## Screenshots

<div align="center">

![Screensaver](https://github.com/gustavogordoni/omarchy-gordoni-theme/blob/main/screenshots/screensaver.gif)

</div>

![Gordoni 3](https://github.com/gustavogordoni/omarchy-gordoni-theme/blob/main/screenshots/3.png)
![Gordoni 9](https://github.com/gustavogordoni/omarchy-gordoni-theme/blob/main/screenshots/9.png)
![Hyprlock](https://github.com/gustavogordoni/omarchy-gordoni-theme/blob/main/screenshots/hyprlock.png)

<details>
<summary><strong>See more</strong></summary>

<br>

![Gordoni 4](https://github.com/gustavogordoni/omarchy-gordoni-theme/blob/main/screenshots/4.png)
![Gordoni 5](https://github.com/gustavogordoni/omarchy-gordoni-theme/blob/main/screenshots/5.png)
![Gordoni 8](https://github.com/gustavogordoni/omarchy-gordoni-theme/blob/main/screenshots/8.png)
![Gordoni 10](https://github.com/gustavogordoni/omarchy-gordoni-theme/blob/main/screenshots/10.png)
![Gordoni 11](https://github.com/gustavogordoni/omarchy-gordoni-theme/blob/main/screenshots/11.png)
![Gordoni 12](https://github.com/gustavogordoni/omarchy-gordoni-theme/blob/main/screenshots/12.png)

</details>

---

## Repository Structure

* `export.sh` → **exports** (saves) your current system configurations into the repository
* `import.sh` → **imports** (restores) configurations from the repository into your system

### Included Folders

| Folder           | Description                                                           |
| ---------------- | --------------------------------------------------------------------- |
| `zsh/`           | [ZSH](https://www.zsh.org/) configuration                             |
| `powerlevel10k/` | [Powerlevel10k](https://github.com/romkatv/powerlevel10k) theme       |
| `hypr/`          | [Hyprland](https://hyprland.org/) configuration                       |
| `waybar/`        | [Waybar](https://github.com/Alexays/Waybar) configuration             |
| `walker/`        | [Walker](https://github.com/abenz1267/walker) launcher                |
| `alacritty/`     | [Alacritty](https://alacritty.org/) terminal configuration            |
| `uwsm/`          | [UWsm](https://github.com/Vladimir-csp/uwsm) configuration            |
| `nvim/`          | [Neovim](https://neovim.io/) configuration                            |
| `vscode/`        | [VS Code](https://code.visualstudio.com/) configuration               |
| `zed/`           | [Zed](https://zed.dev/) configuration                                 |
| `fastfetch/`     | [Fastfetch](https://github.com/fastfetch-cli/fastfetch) configuration |
| `containers/`    | `docker-compose` files for services (MySQL, PostgreSQL, Ngrok, etc.)  |
| `xcompose/`      | Custom `.XCompose` keyboard composition file                          |

---

## Installation

1. Clone the repository and enter the directory

```bash
git clone -b omarchy https://github.com/gustavogordoni/dotfiles dotfiles-omarchy
cd dotfiles-omarchy
```

2. Give execution permissions to the following files

```bash
chmod u+x export.sh import.sh
```

---

## Export Configurations

The `export.sh` script copies your current system configurations into the repository.

1. **Run the script:**

```bash
./export.sh
```

2. **Choose an option from the menu:**

* `1` → Export everything
* Or select only the desired component (ZSH, Neovim, Waybar, etc.)

3. Files will be copied to their corresponding folders inside the repository.

> Example: `~/.config/nvim/` → `./nvim/`

---

## Import Configurations

The `import.sh` script applies the repository’s configurations to your system.

1. **Run the script:**

```bash
./import.sh
```

2. **Choose an option from the menu:**

* `1` → Import everything
* Or select only the desired component (Hyprland, Walker, Fastfetch, etc.)

3. Files will be copied to the corresponding directories.

> Example: `./hypr/` → `~/.config/hypr/`

---

## Keyboard Shortcuts

<details>
<summary><strong>View key mapping (Shortcut and Action)</strong></summary>

| **Shortcut**          | **Name / Description**        | **Executed Action**                                                                |
| --------------------- | ----------------------------- | ---------------------------------------------------------------------------------- |
| **SUPER + RETURN**    | Terminal (Alacritty)          | `exec, uwsm app -- $TERMINAL --dir="$(omarchy-cmd-terminal-cwd)"`                  |
| **SUPER + F**         | File manager (Nautilus)       | `exec, uwsm app -- nautilus --new-window`                                          |
| **SUPER + B**         | Browser (Firefox)             | `exec, omarchy-launch-browser`                                                     |
| **SUPER + SHIFT + B** | Browser (private)             | `exec, omarchy-launch-browser --private`                                           |
| **SUPER + M**         | Music (Spotify)               | `exec, omarchy-launch-or-focus spotify`                                            |
| **SUPER + N**         | Editor (VS Code)              | `exec, omarchy-launch-editor`                                                      |
| **SUPER + SHIFT + D** | Docker (Lazydocker)           | `exec, uwsm app -- $TERMINAL -e lazydocker`                                        |
| **SUPER + A**         | ChatGPT                       | `exec, omarchy-launch-webapp "https://chatgpt.com"`                                |
| **SUPER + Y**         | YouTube                       | `exec, omarchy-launch-or-focus-webapp YouTube "https://youtube.com/"`              |
| **SUPER + SHIFT + W** | WhatsApp                      | `exec, omarchy-launch-or-focus-webapp WhatsApp "https://web.whatsapp.com/"`        |
| **SUPER + SHIFT + F** | Fullscreen                    | `fullscreen, 0`                                                                    |
| **SUPER + T**         | Activity (btop)               | `exec, uwsm app -- $TERMINAL -e btop`                                              |
| **SUPER + V**         | Toggle floating/tiling window | `togglefloating,`                                                                  |
| **SUPER + D**         | Discord                       | `exec, omarchy-launch-webapp "https://discord.com/channels/@me"`                   |
| **SUPER + G**         | Github                        | `exec, omarchy-launch-webapp "https://github.com/gustavogordoni?tab=repositories"` |
| **SUPER + SHIFT + N** | NetBeans                      | `exec, netbeans`                                                                   |
| **SUPER + SHIFT + C** | Calculator                    | `exec, gnome-calculator`                                                           |
| **SUPER + SHIFT + M** | Monitor Picker                | `exec, ~/.config/hypr/scripts/hyprmon-picker.sh`                                   |
| **SUPER + Z**         | Toggle Waybar Theme           | `exec, omarchy-theme-waybar`                                                       |
| **SUPER + SHIFT + Z** | Toggle Waybar Theme (Test)    | `exec, omarchy-theme-waybar-test`                                                  |

</details>

Custom **shortcuts** and **helper scripts** were added to enhance the environment.
These include Waybar theme switching, monitor profile management with Hyprmon, and quick app launchers.

<details>
<summary><strong>View modification details</strong></summary>

<br>

### 1. Script: `hyprmon-picker.sh`

Lets you choose and apply **monitor profiles** saved with [hyprmon](https://github.com/erans/hyprmon).

#### How it works

1. Lists all profiles in `~/.config/hyprmon/profiles/`
2. Displays a menu using `walker --dmenu`
3. Applies the selected profile using `hyprmon --profile`

#### Shortcut

| Shortcut              | Action                     |
| --------------------- | -------------------------- |
| **SUPER + SHIFT + M** | Open monitor profiles menu |

---

### 2. Script: `omarchy-theme-waybar`

Makes it easy to **switch Waybar themes** directly from a menu. <br>
A small adaptation of: [Omarchy-auto-waybar-switch](https://github.com/Palccod/Omarchy-auto-waybar-switch)

#### How it works

1. Searches for themes in `~/.config/waybar/themes/`
2. Displays the selector via Walker
3. Copies the selected theme to `style.css` and `config.jsonc`
4. Automatically restarts Waybar

#### Shortcut

| Shortcut      | Action              |
| ------------- | ------------------- |
| **SUPER + Z** | Switch Waybar theme |

---

### 3. Other Custom Shortcuts

Some of the following functions already exist by default in Omarchy, but use different key combinations (usually requiring SHIFT).

| Shortcut              | Action          | Description                           |
| --------------------- | --------------- | ------------------------------------- |
| **SUPER + SHIFT + F** | Fullscreen      | Toggles fullscreen for current window |
| **SUPER + V**         | Floating/Tiling | Toggles window mode                   |
| **SUPER + T**         | `btop`          | Opens system monitor in terminal      |
| **SUPER + D**         | Discord         | Opens Discord Web as a Web App        |
| **SUPER + G**         | GitHub          | Opens GitHub profile as a Web App     |
| **SUPER + SHIFT + N** | NetBeans        | Opens the IDE                         |
| **SUPER + SHIFT + C** | Calculator      | Opens `gnome-calculator`              |

</details>

---

## Credits

[Palccod/Omarchy-auto-waybar-switch](https://github.com/Palccod/Omarchy-auto-waybar-switch) <br>

[HANCORE-linux/waybar-themes](https://github.com/HANCORE-linux/waybar-themes) <br>

[imbypass/omarchy-waybar-bepi](https://github.com/imbypass/omarchy-waybar-bepi)
