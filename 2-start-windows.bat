@echo off
setlocal
cd /d "%~dp0"

where docker >nul 2>nul
if errorlevel 1 (
  echo [ERROR] Docker Desktop belum jalan. Buka Docker Desktop dulu,
  echo tunggu ikon pausnya stabil, lalu jalankan file ini lagi.
  pause
  exit /b 1
)

echo Menjalankan Klipper...
docker compose up -d
timeout /t 10 /nobreak >nul
start http://localhost:3107
echo Klipper jalan di http://localhost:3107
pause
