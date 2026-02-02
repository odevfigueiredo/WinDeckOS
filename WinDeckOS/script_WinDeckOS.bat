@echo off

REM Start PluginLoader (no console)
start "" /min "C:\WinDeckOS\PluginLoader_noconsole.exe"

REM Start Steam in Big Picture mode with no verify files
start "" "C:\Program Files (x86)\Steam\steam.exe" -bigpicture -noverifyfiles

REM Wait 10 seconds
timeout /t 10 /nobreak >nul

REM Start Windows Explorer
start explorer.exe