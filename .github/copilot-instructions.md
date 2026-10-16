# GitHub Copilot Instructions for Klipper

This repository contains **Klipper** (AI-powered video clipping with Indonesian language localization and custom agency branding).

## Architecture & Conventions
- **Backend (`backend/`)**: FastAPI, ARQ task queue, PostgreSQL (raw SQL via asyncpg repositories), Redis, Faster-Whisper INT8 with Silero VAD, ffmpeg.
- **Frontend (`frontend/`)**: Next.js 15 with App Router, React 19, Tailwind CSS v4, Lucide React icons, Shadcn UI.
- **AI Prompts & Logic (`backend/src/ai.py`)**: Indonesian slang vocabulary (200+ colloquial terms) & stemmer for viral moment extraction.
- **Watermark Engine (`backend/src/media/captions.py`)**: Layer 2 ASS subtitle overlay with alpha opacity, positioning (6 presets), font styling, and safe zone padding.
- **Editor Studio (`frontend/src/components/editor/`)**: Built-in in-browser timeline, caption styler, transcript word-by-word editor, and re-export.

Refer to `AGENTS.md` and `CLAUDE.md` for full developer workflows and commands.
