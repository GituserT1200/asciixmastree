@echo off
chcp 65001 >nul
title ASCII Christmas Tree Launcher
cd /d "%~dp0"

echo ==================================================
echo      ASCII CHRISTMAS TREE 3D - AUTO LAUNCHER
echo ==================================================
echo.

set PY_CMD=
python --version >nul 2>&1
if %errorlevel% equ 0 (
    set PY_CMD=python
) else (
    py --version >nul 2>&1
    if %errorlevel% equ 0 (
        set PY_CMD=py
    )
)

if "%PY_CMD%"=="" (
    echo [1/4] Khong tim thay Python tren may! Dang tu dong tai va cai dat Python 3.12...
    winget install -e --id Python.Python.3.12 --accept-package-agreements --accept-source-agreements
    echo.
    echo [!] Da hoan tat cai dat Python. Vui long DONG cua so nay va chay lai lenh: .\run.bat
    pause
    exit /b
)

echo [1/4] Da tim thay Python (%PY_CMD%).
echo [2/4] Dang khoi tao moi truong ao (.venv)...
if not exist ".venv\Scripts\python.exe" (
    %PY_CMD% -m venv .venv
)

echo [3/4] Dang kiem tra va cai dat cac thu vien can thiet...
.venv\Scripts\python.exe -m pip install --upgrade pip >nul 2>&1
.venv\Scripts\python.exe -m pip install -r requirements.txt
if %errorlevel% neq 0 (
    echo [!] Phat hien loi tuong thich phien ban Python moi, dang thu cai dat ban mo rong pygame-ce...
    .venv\Scripts\python.exe -m pip install numpy opencv-python imageio-ffmpeg pygame-ce
)

echo [4/4] Dang khoi chay hieu ung cay thong...
echo.
.venv\Scripts\python.exe christmas_tree.py %*
pause
