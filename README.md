# Omarchy Pinup Theme

A light vintage pin-up theme for Omarchy, built around warm paper, dark ink, sailor blue focus states, burgundy accents, and soft rounded surfaces. It keeps the desktop bright and readable while giving the shell, terminals, editor themes, and notification surfaces the same printed-poster character.

## Preview

![Omarchy Pinup theme preview](preview.png)

## Install

Use the Omarchy theme installer:

```bash
omarchy-theme-install https://github.com/OldJobobo/omarchy-pinup-theme
```

## What's Included

- A light Omarchy palette with cream backgrounds, dark ink text, blue selection states, and warm vintage support colors.
- Bundled light and dark mode overlays, switchable with `bin/pinup-mode`.
- Theme-scoped Hyprland styling with rounded windows, soft depth, active border gradients, and tuned animation curves.
- Omarchy shell tokens in `shell.toml` for bar, popups, launcher, menus, notifications, lock, and image picker surfaces.
- Matching Waybar, Walker, Mako, SwayOSD, Hyprlock, GTK, Chromium, and Vencord styling.
- Synced terminal colors for Foot, Alacritty, Kitty, Ghostty, and Warp, plus btop and Zellij themes.
- Editor support for Neovim, Zed, and the bundled VS Code color theme extension.
- Twelve high-resolution pin-up wallpapers in `backgrounds/`.

## Wallpapers

<table>
  <tr>
    <td><img src="backgrounds/Girls%20Wallpaper%20Hot%20Pics%20Vintage%20Pin%20Up_LE_upscale_digiart.jpg" width="220" alt="Vintage pin-up wallpaper"></td>
    <td><img src="backgrounds/hello-sailor_LE_upscale_digiart.jpg" width="220" alt="Hello sailor pin-up wallpaper"></td>
    <td><img src="backgrounds/Pin%20Up%20Girls%20Wallpaper%20Best_LE_upscale_digiart.jpg" width="220" alt="Pin-up girls wallpaper"></td>
  </tr>
  <tr>
    <td><img src="backgrounds/Pin%20Up%20Girls%20Wallpaper%20For%20Dekstop_LE_upscale_digiart.jpg" width="220" alt="Desktop pin-up wallpaper"></td>
    <td><img src="backgrounds/Pin%20Up%20Girls%20Wallpaper%20Paintings%20Art_LE_upscale_digiart.jpg" width="220" alt="Painted pin-up wallpaper"></td>
    <td><img src="backgrounds/Pin%20Up%20Wallpaper%20HD%20Background_LE_upscale_digiart.jpg" width="220" alt="HD pin-up wallpaper"></td>
  </tr>
  <tr>
    <td><img src="backgrounds/Pin%20Up%20Wallpaper%20Style%20Retro%20Girls%20Honnoror_LE_upscale_digiart.jpg" width="220" alt="Retro pin-up wallpaper"></td>
    <td><img src="backgrounds/wp5849027-vintage-pin-up-hd-wallpapers_LE_upscale_digiart.jpg" width="220" alt="Vintage pin-up wallpaper 9027"></td>
    <td><img src="backgrounds/wp5849042-vintage-pin-up-hd-wallpapers_LE_upscale_digiart.jpg" width="220" alt="Vintage pin-up wallpaper 9042"></td>
  </tr>
  <tr>
    <td><img src="backgrounds/High%20Resolution%20Wallpaper%20Pin%20Up%20Girls_LE_upscale_digiart.jpg" width="220" alt="High-resolution pin-up wallpaper"></td>
    <td><img src="backgrounds/High%20Resolution%20Wallpaper%20Pin%20Up%20Girls%20%281%29_LE_upscale_digiart.jpg" width="220" alt="High-resolution pin-up wallpaper variant"></td>
    <td><img src="backgrounds/wp5849056-vintage-pin-up-hd-wallpapers_LE_upscale_digiart.jpg" width="220" alt="Vintage pin-up wallpaper 9056"></td>
  </tr>
</table>

## Light and Dark Mode

After installing and applying the theme, switch modes from the active theme:

```bash
~/.config/omarchy/current/theme/bin/pinup-mode install
pinup-toggle
pinup-mode light
pinup-mode dark
pinup-mode status
```

The one-time `install` command adds `pinup-mode` and `pinup-toggle` to `~/.local/bin`. The helper copies the selected `modes/light` or `modes/dark` overlay into the active theme, updates Omarchy's light/dark marker, applies shell colors, reloads Hyprland, and reruns the relevant theme hooks. Running `omarchy-theme-set pinup` restores the theme from its source files; run `pinup-mode` again afterward to choose the desired mode.

## Compatibility

This theme still includes `hyprland.conf` for Omarchy 3.8.2 and other pre-Lua setups. Newer Omarchy builds use `hyprland.lua` for richer window styling, while older installs ignore it and continue loading the fallback `hyprland.conf`.

## Notes

- `light.mode` is included, so Omarchy should treat this as a light theme.
- The theme uses `Yaru-blue` from `icons.theme`.
