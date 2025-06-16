@echo off
echo ========================================
echo WebViewer APK 快速设置指南
echo ========================================
echo.

echo 1. 检查Java安装...
java -version >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] 未找到Java！
    echo 请下载并安装Java JDK 8+: https://adoptopenjdk.net/
    echo.
    pause
    exit /b 1
) else (
    echo [OK] Java 已安装
)

echo.
echo 2. 检查Android SDK...
if "%ANDROID_HOME%"=="" (
    echo [WARNING] ANDROID_HOME 环境变量未设置
    echo 请下载Android Command Line Tools并设置ANDROID_HOME
    echo 下载地址: https://developer.android.com/studio#command-tools
    echo.
    echo 设置示例:
    echo set ANDROID_HOME=C:\android-sdk
    echo.
) else (
    echo [OK] ANDROID_HOME = %ANDROID_HOME%
)

echo.
echo 3. 准备构建...
echo 运行 build_apk.bat 开始构建APK
echo.

pause
