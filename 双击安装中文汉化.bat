@echo off
title Antigravity 中文汉化安装工具 (v2.30.0)
cd /d "%~dp0"

echo ========================================================
echo   Antigravity v2.30.0 中文汉化安装工具
echo ========================================================
echo.

node -v >nul 2>nul
if %errorlevel% neq 0 (
    echo [错误] 系统中未找到 Node.js 运行环境！
    echo 请先前往 https://nodejs.org/ 安装 Node.js 后重试。
    echo.
    pause
    exit /b 1
)

echo [1/2] 正在为 Antigravity v2.30.0 注入中文语言包...
echo.
node localization_engine.js --brand-title english %*

echo.
echo ========================================================
echo [2/2] 汉化注入完成！请重新启动 Antigravity 客户端生效。
echo ========================================================
echo.
pause
