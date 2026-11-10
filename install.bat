@echo off
title Antigravity Localization Installer v2.30.0
cd /d "%~dp0"

echo ========================================================
echo   Antigravity v2.30.0 Chinese Localization
echo ========================================================
echo.

node -v >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Node.js is not found on your system!
    echo Please install Node.js from https://nodejs.org/ first.
    echo.
    pause
    exit /b 1
)

echo [1/2] Injecting Chinese localization into Antigravity v2.30.0...
echo.
node localization_engine.js --brand-title english %*

echo.
echo ========================================================
echo [2/2] Done! Please restart Antigravity.
echo ========================================================
echo.
pause
