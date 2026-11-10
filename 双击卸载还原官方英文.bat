@echo off
title Antigravity 还原官方英文 (v2.30.0)
cd /d "%~dp0"

echo ========================================================
echo   Antigravity 还原官方英文工具
echo ========================================================
echo.

node -v >nul 2>nul
if %errorlevel% neq 0 (
    echo [错误] 系统中未找到 Node.js！
    pause
    exit /b 1
)

echo 正在还原官方英文原版...
node localization_engine.js --huifu %*

echo.
echo ========================================================
echo 还原完成！请重新启动 Antigravity 恢复官方英文。
echo ========================================================
echo.
pause
