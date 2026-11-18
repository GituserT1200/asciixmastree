#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"

echo "[1/3] Kiem tra moi truong ao (.venv)..."
if [ ! -d ".venv" ]; then
    python3 -m venv .venv
fi

echo "[2/3] Dang cai dat thu vien..."
.venv/bin/python -m pip install --upgrade pip >/dev/null
.venv/bin/python -m pip install -r requirements.txt || .venv/bin/python -m pip install numpy opencv-python imageio-ffmpeg pygame-ce

echo "[3/3] Dang khoi chay..."
.venv/bin/python christmas_tree.py "$@"
