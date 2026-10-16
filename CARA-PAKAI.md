# Klipper (SupoClip Indonesia Edition)

Klipper adalah aplikasi AI otomatis untuk memotong video panjang (YouTube / Upload lokal) menjadi klip vertikal pendek (9:16) siap upload ke TikTok, Instagram Reels, dan YouTube Shorts.

Fitur Utama:
- **Auto-Clip & Hook Scoring**: Menemukan bagian paling viral dari podcast / video panjang secara otomatis.
- **Auto-Framing 9:16**: Pelacakan wajah pembicara agar selalu di tengah frame vertikal.
- **Subtitle Otomatis**: Subtitle per-kata sinkron audio dengan gaya animasi viral (TikTok Sans, The Bold Font, dsb).
- **Optimasi Bahasa Indonesia**: Dilengkapi kamus 200+ bahasa gaul / percakapan santai Indonesia + morphological stemmer.
- **Custom Watermark & Agency Branding**: Pasang watermark username (@akun) atau logo agensi dengan pilihan posisi (6 titik), transparansi (opacity), dan ukuran font.
- **Studio Editor Built-in**: Edit langsung timeline, split/potong video di playhead, edit typo transkrip kata demi kata.
- **Super Fast**: Akselerasi Faster-Whisper INT8, Silero VAD, dan multi-threading downloader.

---

## Cara Install & Menjalankan (Windows)

### Cara 1: Menggunakan Docker Desktop (Sangat Direkomendasikan)
1. Pastikan **Docker Desktop** sudah terinstall dan berjalan di komputer:
   - Download: https://www.docker.com/products/docker-desktop/
2. Double-click file **`1-install-windows.bat`**.
   - Skrip akan otomatis membuat konfigurasi `.env` dan mem-build semua service.
3. Setelah selesai, buka browser di **`http://localhost:3107`**.
4. Untuk pemakaian sehari-hari:
   - Menjalankan: Double-click **`2-start-windows.bat`**
   - Menghentikan: Double-click **`stop-windows.bat`**

---

### Cara 2: Menjalankan via Docker Compose di Terminal (Linux / Mac / Windows)
```bash
# 1. Salin konfigurasi environment
cp .env.example .env

# 2. Jalankan docker compose
docker compose up -d --build

# 3. Buka di browser
# http://localhost:3107
```

---

## Konfigurasi API (.env)
Buka file `.env` di text editor untuk mengatur API key AI yang kamu miliki:
- **Transkripsi Lokal (Gratis)**:
  ```env
  TRANSCRIPTION_PROVIDER=whisper
  ```
  *(Tidak butuh API key, diproses langsung di komputer menggunakan Faster-Whisper INT8)*
- **LLM untuk Memilih Klip Viral**:
  - `GOOGLE_API_KEY`: Google Gemini (sangat cepat & hemat)
  - `OPENAI_API_KEY`: OpenAI GPT
  - `ANTHROPIC_API_KEY`: Claude
  - `OLLAMA_BASE_URL`: Model lokal (Ollama)
