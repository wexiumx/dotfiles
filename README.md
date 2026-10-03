# dotfiles

My personal dotfiles for **Arch Linux** running **niri** (scrollable-tiling Wayland compositor) with **Neovim**, managed with [chezmoi](https://www.chezmoi.io/).

## Requirements

- [`chezmoi`](https://www.chezmoi.io/)
- `git`
- an AUR helper: [`yay`](https://github.com/Jguer/yay) or [`paru`](https://github.com/Morganamilo/paru)

```sh
sudo pacman -S --needed chezmoi git
```

## Instructions

```sh
chezmoi init wexiumx
chezmoi apply
```

To pull and apply future updates:

```sh
chezmoi update
```

To preview what would change before applying:

```sh
chezmoi diff
```

## Binds

### Apps

| Bind | Action |
| --- | --- |
| `Mod+Return` | Terminal (Ghostty) |
| `Mod+E` | File explorer (Nautilus) |
| `Mod+D` | App launcher (Noctalia) |
| `Mod+T` | Wallpaper panel (Noctalia) |
| `Mod+Shift+M` | Session menu (Noctalia) |

### Windows & columns

| Bind | Action |
| --- | --- |
| `Mod+W` | Close window |
| `Mod+O` | Toggle overview |
| `Mod+←/↓/↑/→` or `Mod+H/J/K/L` | Focus left / down / up / right |
| `Mod+Shift+←/↓/↑/→` or `Mod+Shift+H/J/K/L` | Move column / window |
| `Mod+Home` / `Mod+End` | Focus first / last column |
| `Mod+Ctrl+Home` / `Mod+Ctrl+End` | Move column to first / last |
| `Mod+[` / `Mod+]` | Consume or expel window left / right |
| `Mod+,` / `Mod+.` | Consume window into column / expel from column |
| `Mod+R` | Cycle preset column widths |
| `Mod+Shift+R` | Cycle preset window heights |
| `Mod+Ctrl+R` | Reset window height |
| `Mod+F` | Maximize column |
| `Mod+Shift+F` | Fullscreen window |
| `Mod+Ctrl+F` | Expand column to available width |
| `Mod+C` | Center column |
| `Mod+Ctrl+C` | Center visible columns |
| `Mod+-` / `Mod+=` | Column width −10% / +10% |
| `Mod+Shift+-` / `Mod+Shift+=` | Window height −10% / +10% |
| `Mod+V` | Toggle floating |
| `Mod+Shift+V` | Switch focus between floating and tiling |
| `Mod+Q` | Toggle tabbed column display |

### Workspaces

| Bind | Action |
| --- | --- |
| `Mod+1` – `Mod+9` | Focus workspace 1–9 |
| `Mod+Ctrl+1` – `Mod+Ctrl+9` | Move column to workspace 1–9 |
| `Mod+U` / `Mod+I` or `Mod+PageDown` / `Mod+PageUp` | Focus workspace down / up |
| `Mod+Ctrl+U` / `Mod+Ctrl+I` or `Mod+Ctrl+PageDown` / `Mod+Ctrl+PageUp` | Move column to workspace down / up |
| `Mod+Shift+U` / `Mod+Shift+I` or `Mod+Shift+PageDown` / `Mod+Shift+PageUp` | Move workspace down / up |
| `Mod+Scroll` | Focus workspace down / up (vertical scroll) |
| `Mod+Shift+Scroll` | Focus column left / right |

### Monitors

| Bind | Action |
| --- | --- |
| `Mod+Ctrl+←/↓/↑/→` or `Mod+Ctrl+H/J/K/L` | Focus monitor |
| `Mod+Shift+Ctrl+←/↓/↑/→` or `Mod+Shift+Ctrl+H/J/K/L` | Move column to monitor |
| `Mod+Shift+P` | Power off monitors |

### Screenshots

| Bind | Action |
| --- | --- |
| `F10` | Screenshot (select area) |
| `Ctrl+F10` | Screenshot screen |
| `Alt+F10` | Screenshot window |

Saved to `~/Pictures/Screenshots/`.

### Media & hardware keys

| Bind | Action |
| --- | --- |
| `XF86AudioRaiseVolume` / `XF86AudioLowerVolume` | Volume up / down (wpctl) |
| `XF86AudioMute` | Toggle mute |
| `XF86AudioMicMute` | Toggle mic mute |
| `XF86AudioPlay` / `Stop` / `Prev` / `Next` | Media controls (playerctl) |
| `XF86MonBrightnessUp` / `Down` | Brightness ±10% (brightnessctl) |

### Session

| Bind | Action |
| --- | --- |
| `Mod+Shift+E` | Quit niri |
| `Ctrl+Alt+Delete` | Quit niri |
| `Mod+Escape` | Toggle keyboard shortcuts inhibit |
