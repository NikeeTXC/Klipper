@echo off
setlocal
cd /d "%~dp0"
echo Menghentikan Klipper...
docker compose down
echo Selesai. Service Klipper berhasil dihentikan.
pause
