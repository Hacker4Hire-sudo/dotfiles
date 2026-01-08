# 🖥️ Hacking-Box-1 // Arch Linux Dotfiles

![Arch Linux](https://img.shields.io/badge/Distro-Arch%20Linux-blue?logo=arch-linux)
![WM](https://img.shields.io/badge/WM-i3wm-gainsboro?logo=i3)
![Status](https://img.shields.io/badge/Status-Operational-brightgreen)

**A high-performance, keyboard-driven environment built for development and media consumption.** This setup integrates a "Cyberpunk" aesthetic with a Unified Media Workflow, allowing seamless interaction between local files, streaming services, and live TV.

---

## ⚡ Features

### 🎬 Unified Media Center
* **Polybar Integration:** One-click access to **Stremio** (Left Click) and **Kodi** (Right Click) via `media_control.sh`.
* **Media Hunter:** Press `Super + M` to instantly scan `~/Videos` and `~/Downloads` via **Rofi** and launch content in **MPV**.
* **Smart Downloader:** Custom `ytd` Zsh alias to download YouTube videos with English subtitles automatically.

### 🎨 Visuals & Aesthethics
* **CAVA:** Custom "Matrix Green" gradient audio visualizer.
* **MPV:** Minimalist, borderless config with floating window rules (600x600 startup).
* **Betterlockscreen:** Blurred/Dimmed screen locking with caching.

### 🛠️ Core Tools
* **Window Manager:** i3-gaps
* **Bar:** Polybar (Custom Modules)
* **Clipboard:** Greenclip (integrated with Rofi)
* **Terminal:** Alacritty / XFCE4-Terminal
* **Editor:** Geany / Nano

---

## 🎹 Keybinding Cheat Sheet

| Key Combo | Action |
| :--- | :--- |
| `Super + Enter` | Open Terminal |
| `Super + D` | Application Launcher (Rofi) |
| `Super + M` | **Media Menu** (Scan & Play Videos) |
| `Super + T` | **Live TV** (Open TV) |
| `Super + C` | Clipboard History (Greenclip) |
| `Super + Shift + Q` | Kill Window |
| `Super + Shift + R` | Reload i3 Config |
| `Super + L` | Lock Screen (Betterlockscreen) |

---

## 📂 File Structure

```text
├── i3/                 # Window Manager Config
├── polybar/            # Bar Config & Scripts
│   ├── scripts/        # Custom Logic (media_control.sh, rofi_media.sh)
├── cava/               # Audio Visualizer
├── mpv/                # Media Player Config
├── zsh/                # Shell Aliases (.zshrc)
└── backup_dots.sh      # Deployment Script
