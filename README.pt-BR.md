<div align="center">

<img src="https://raw.githubusercontent.com/odevfigueiredo/WinDeckOS/blob/main/WinDeckOS.png" width="180" alt="WinDeckOS" />

# WinDeckOS

**Experiência Steam em modo console no Windows**  
Inspirado no SteamOS — sem limitações do Linux.

🌎 [![Language](https://img.shields.io/badge/README-English-blue)](README.md)

![OS](https://img.shields.io/badge/OS-Windows%2011-blue)
![Steam](https://img.shields.io/badge/Steam-Big%20Picture-black)
![Focus](https://img.shields.io/badge/Focus-Gaming-success)

</div>

---

## ❓ O que é o WinDeckOS?

**WinDeckOS não é um sistema operacional.**  
É um **fluxo de inicialização e shell do Windows** criado para transformar PCs e portáteis em uma **experiência Steam estilo console**.

### 🎯 Objetivos
- 🚀 Iniciar diretamente no Steam
- 🎮 Navegação focada em controle
- 🧩 Compatibilidade total com jogos Windows

---

## ❌ Jogos que NÃO funcionam no SteamOS

Esses títulos dependem de **anti-cheat em nível de kernel** e exigem Windows:

- Fortnite
- Call of Duty / Warzone
- Valorant
- Destiny 2
- PUBG
- EA FC / FIFA
- Rainbow Six Siege

---

## ⚔️ WinDeckOS vs SteamOS

| Área | WinDeckOS | SteamOS |
|----|----|----|
| 🧠 Sistema base | Windows 11 | Linux |
| 🛡️ Anti-cheat | ✅ Completo | ❌ Limitado |
| 🎮 Compatibilidade | ✅ Nativa | ⚠️ Proton |
| 🏆 Jogos competitivos | ✅ Funciona | ❌ Bloqueado |
| 🔌 Drivers | Oficiais | Comunidade |
| 🎨 Compilação de shaders | Baixa | Alta |
| 🧩 Plugins Decky | ⚠️ Limitado | ✅ Completo |
| 🧹 Manutenção | Baixa | Média |

---

## 🛠️ Guia de Instalação

### 1️⃣ Windows Base

Instale uma build leve do Windows.

**✅ Recomendado**
- Windows 11 Ghost Spectre

---

### 2️⃣ Preparação do Steam

Crie um arquivo **sem extensão** na pasta raiz do Steam:

```text
.cef-enable-remote-debugging
```

🧠 Isso habilita a depuração do Chromium necessária para plugins estilo Decky.

---

### 3️⃣ PluginLoader (Decky Loader do SteamOS no Windows)

Baixe o
🔗 [PluginLoader\_noconsole.exe](https://github.com/SteamDeckHomebrew/decky-loader/actions/workflows/build-win.yml)

**⚠️ Requisitos:**
- Conta GitHub logada
- Baixar o artefato main

---

### 4️⃣ Script de Inicialização
```text
@echo off

start "" /min "C:\WinDeckOS\PluginLoader_noconsole.exe"

start "" "C:\Program Files (x86)\Steam\steam.exe" -bigpicture -noverifyfiles

timeout /t 10 /nobreak >nul

start explorer.exe
```
✅ Inicia o Steam automaticamente
✅ Restaura o Explorer após o boot

---

### 5️⃣ Converter BAT para EXE (Opcional)

**✨ Recomendado para:**
- Inicialização mais limpa
- Evitar o prompt de comando
- Melhor acabamento visual

---

### 6️⃣ Configuração do Shell do Windows

📁 Caminho do registro:
```text
HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Winlogon
```
Crie uma String Value chamada Shell com o valor:
```text
"C:\WinDeckOS\script_WinDeckOS.bat"
```
🧠 O Windows passará a iniciar diretamente no WinDeckOS.

---

### 7️⃣ Plugins do Decky Loader

**Após o boot:**
- ⌨️ Pressione Ctrl + 2
- 🎮 Ou Home + A no controle

**⭐ Plugins recomendados:**

- CSS Loader — temas e layout da interface
- SteamGridDB — capas personalizadas para jogos

🧹 Removendo o WinDeckOS

❗ Basta deletar a string Shell no registro.

O Windows voltará a iniciar normalmente.

⚠️ Aviso Legal

Projeto independente.
Não afiliado à Valve ou à Microsoft.

<p align="center"> 
    <b>WinDeckOS</b><br/> 
    🎮 Fluxo estilo SteamOS · 🪟 Compatibilidade total com Windows 
</p>