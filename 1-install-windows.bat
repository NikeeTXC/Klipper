@echo off
setlocal
cd /d "%~dp0"
echo ============================================
echo  Klipper - Install Pertama Kali
echo ============================================
echo.

where docker >nul 2>nul
if errorlevel 1 (
  echo [ERROR] Docker Desktop belum terinstall / belum jalan.
  echo Download di: https://www.docker.com/products/docker-desktop/
  echo Install, pastikan Docker Desktop sudah berjalan, lalu jalankan file ini lagi.
  pause
  exit /b 1
)

if not exist .env (
  echo [1/2] Membuat file .env dari template...
  copy /Y .env.example .env >nul
  echo File .env berhasil dibuat. Silakan edit .env untuk mengisi API key jika diperlukan.
) else (
  echo [1/2] File .env sudah ada.
)

echo.
echo [2/2] Build ^& jalankan Klipper dengan Docker Compose...
echo        (Proses pertama kali butuh download image, harap tunggu...)
echo.
docker compose up -d --build
if errorlevel 1 (
  echo [ERROR] docker compose gagal. Pastikan Docker Desktop berjalan.
  pause
  exit /b 1
)

echo.
echo Menunggu service siap (30 detik)...
timeout /t 30 /nobreak >nul

echo.
echo ============================================
echo  SELESAI! Membuka: http://localhost:3107
echo ============================================
start http://localhost:3107
pause
