# fox-dots

Personal dotfiles for my CachyOS desktop: **niri** + **DankMaterialShell (dms)**.

Layout mirrors `$HOME`, so it works with GNU Stow:

```bash
cd ~/Projects/foxglove/fox-dots
stow -t ~ .
```

## What's in here

| Area | Configs |
|---|---|
| Desktop | `niri` (+ `niri/dms/*.kdl` includes), `dms`, `dsearch`, `dgop`, `dankcal`, `environment.d`, `autostart` |
| Theming | `gtk-3.0`, `gtk-4.0`, `qt6ct`, `fontconfig`, `.gtkrc-2.0`, `.Xresources` |
| Shell / terminal | `fish`, `ghostty`, `tmux`, `fastfetch`, `btop`, `.bashrc`, `.profile` |
| Editors | `nvim` (LazyVim), `micro`, `zed`, `VSCodium/User`, `sublime-text/Packages/User` |
| Media | `spicetify` (Spotify), `cava`, `mpd`, `ncmpcpp`, `mpv`, `qimgv` |
| Apps | `vesktop`, `obs-studio`, `OpenRGB`, `Thunar`, `clipcat`, `psd`, `shelly`, `MangoHud`, `dunst`, `paru`, `gh` |
| Conky | `.conky/fox-conky` |
| System | `packages/` — explicit pacman/AUR package lists and enabled user systemd units |

## Deliberately excluded

- **Secrets**: Spotify `prefs` (autologin credentials), `gh/hosts.yml` (token), OBS `service.json` (stream keys), KDE Connect keys
- **State/caches**: logs, backups (`*.bak`, `*.backup*`), editor buffers, mpd db/socket, Vesktop session data
- **Re-downloadable**: dms plugin git repos (`plugins/.repos`, listed in `dms/plugins.lock.json`), tmux plugins (TPM), spicetify marketplace zip
- **Uninstalled apps**: Hyprland, KDE Plasma/Latte, Alacritty, zsh, Cosmic, etc.

## Restore notes

```bash
paru -S --needed - < packages/pacman-native.txt
paru -S --needed - < packages/pacman-aur.txt
```

- Spotify theme: install spicetify, then `spicetify backup apply`
- tmux plugins: install TPM, then `prefix + I`
- dms plugins: reinstall from the dms plugin browser
