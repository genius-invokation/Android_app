@echo off
echo 构建七圣召唤模拟器 APK...
echo.

REM 更新应用图标和名称
if exist "icon.png" (
    echo 使用自定义图标...
    call update_icon.bat
) else (
    echo 使用默认图标...
    call create_icons.bat
)

echo.

REM Check if Java is available
java -version >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Java is not installed or not in PATH
    echo Please install Java JDK 8 or higher
    pause
    exit /b 1
)

REM Download Gradle wrapper if not exists
if not exist "gradle\wrapper\gradle-wrapper.jar" (
    echo Downloading Gradle wrapper...
    mkdir "gradle\wrapper" 2>nul
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/gradle/gradle/raw/v8.0.0/gradle/wrapper/gradle-wrapper.jar' -OutFile 'gradle\wrapper\gradle-wrapper.jar'"
)

REM Build the APK using Gradle
echo Starting Gradle build...
gradlew.bat clean
gradlew.bat assembleDebug

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================
    echo 构建完成！
    echo ========================================
    echo 应用名称: 七圣召唤模拟器
    echo APK位置: app\build\outputs\apk\debug\app-debug.apk
    echo 功能特性:
    echo   - 全屏浏览gi.xqm32.org
    echo   - 支持全面屏和刘海屏
    echo   - 自定义七圣召唤图标
    echo   - WebView内核（稳定兼容）
    echo.
    echo 文件大小:
    for %%I in ("app\build\outputs\apk\debug\app-debug.apk") do echo   %%~zI bytes (约3.8MB)
    echo ========================================
    echo.
    echo APK已准备就绪，可以传输到Android设备安装！
) else (
    echo.
    echo ========================================
    echo 构建失败！请检查上述错误信息。
    echo 确保您已安装：
    echo 1. Java JDK 8 或更高版本
    echo 2. Android SDK 并设置 ANDROID_HOME
    echo 3. 网络连接正常
    echo ========================================
)

pause
