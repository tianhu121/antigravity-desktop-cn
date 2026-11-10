@echo off
title 推送汉化包到 GitHub (tianhu121/antigravity-desktop-cn)
cd /d "%~dp0"

echo ========================================================
echo   正在推送 Antigravity v2.30.0 汉化包到 GitHub...
echo   如果弹出 GitHub 授权窗口，请点击 [Sign in with your browser]
echo ========================================================
echo.

git push -u origin main

echo.
echo ========================================================
if %errorlevel% equ 0 (
    echo 推送成功！请刷新您的 GitHub 页面查看！
) else (
    echo 推送未完成，请检查网络或授权状态。
)
echo ========================================================
echo.
pause
