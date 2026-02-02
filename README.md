<div align="center">

<img src="https://raw.githubusercontent.com/odevfigueiredo/WinDeckOS/blob/main/WinDeckOS.png" width="180" alt="WinDeckOS" />

# WinDeckOS

**Console-style Steam experience on Windows**  
Inspired by SteamOS — without Linux limitations.

🌎 [![Idioma](https://img.shields.io/badge/README-Português%20(BR)-green)](README.pt-BR.md)

![OS](https://img.shields.io/badge/OS-Windows%2011-blue)
![Steam](https://img.shields.io/badge/Steam-Big%20Picture-black)
![Focus](https://img.shields.io/badge/Focus-Gaming-success)

</div>

---

## ❓ What is WinDeckOS?

**WinDeckOS is not an operating system.**  
It is a **Windows boot and shell workflow** designed to turn PCs and handhelds into a **console-like Steam experience**.

### 🎯 Goals
- 🚀 Boot directly into Steam
- 🎮 Controller-first navigation
- 🧩 Full Windows game compatibility

---

## ❌ Games that do NOT work on SteamOS

These titles rely on **kernel-level anti-cheat systems** and require Windows:

- Fortnite
- Call of Duty / Warzone
- Valorant
- Destiny 2
- PUBG
- EA FC / FIFA
- Rainbow Six Siege

---

## ⚔️ WinDeckOS vs SteamOS

| Area | WinDeckOS | SteamOS |
|----|----|----|
| 🧠 Base system | Windows 11 | Linux |
| 🛡️ Anti-cheat | ✅ Full | ❌ Limited |
| 🎮 Compatibility | ✅ Native | ⚠️ Proton |
| 🏆 Competitive games | ✅ Works | ❌ Blocked |
| 🔌 Drivers | Official | Community |
| 🎨 Shader compilation | Low | High |
| 🧩 Decky plugins | ⚠️ Limited | ✅ Full |
| 🧹 Maintenance | Low | Medium |

---

## 🛠️ Installation Guide

### 1️⃣ Windows Base

Install a lightweight Windows build.

**✅ Recommended**
- Windows 11 Ghost Spectre

---

### 2️⃣ Steam Preparation

Create a file **without extension** in the Steam root folder:

```text
.cef-enable-remote-debugging
```
🧠 This enables Chromium debugging required for Decky-style plugins.

### 3️⃣ PluginLoader (Decky Loader on Windows)

Download
🔗 [PluginLoader\_noconsole.exe](https://github.com/SteamDeckHomebrew/decky-loader/actions/workflows/build-win.yml)

**⚠️ Requirements:**
- GitHub account logged in
- Download the main artifact

---

### 4️⃣ Startup Script
```text
@echo off

start "" /min "C:\WinDeckOS\PluginLoader_noconsole.exe"

start "" "C:\Program Files (x86)\Steam\steam.exe" -bigpicture -noverifyfiles

timeout /t 10 /nobreak >nul

start explorer.exe
```
✅ Starts Steam automatically

✅ Restores Windows Explorer after boot

---

### 5️⃣ Convert BAT to EXE (Optional)

**✨ Recommended for:**
- Cleaner startup
- No command prompt window
- Better visual polish

---

### 6️⃣ Windows Shell Configuration

📁 Registry path:
```text
HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Winlogon
```
Create a String Value named `Shell` with:
```text
"C:\WinDeckOS\script_WinDeckOS.bat"
```
🧠 Windows will now boot directly into **WinDeckOS**.

---

### 7️⃣ Decky Loader Plugins

**After boot:**
- ⌨️ Press Ctrl + 2
- 🎮 Or Home + A on controller

**⭐ Recommended plugins:**

- CSS Loader — UI themes & layout
- SteamGridDB — Custom game artwork

---

### 🧹 Removing WinDeckOS

*❗ Simply delete the `Shell` string value from the registry.*

Windows will boot normally again.

---

### ⚠️ Disclaimer

Independent project.
Not affiliated with Valve or Microsoft.

<p align="center"> <b>WinDeckOS</b><br/> 🎮 SteamOS-like workflow · 🪟 Windows-level compatibility </p>