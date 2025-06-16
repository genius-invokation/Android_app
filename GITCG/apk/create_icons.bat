@echo off
echo 设置应用图标...

REM 检查自定义图标是否存在
if exist "icon.png" (
    echo 使用自定义图标: icon.png
    call update_icon.bat
) else (
    echo 使用默认占位符图标...

    REM Create directories for different density icons
    mkdir "src\main\res\mipmap-hdpi" 2>nul
    mkdir "src\main\res\mipmap-mdpi" 2>nul
    mkdir "src\main\res\mipmap-xhdpi" 2>nul
    mkdir "src\main\res\mipmap-xxhdpi" 2>nul
    mkdir "src\main\res\mipmap-xxxhdpi" 2>nul

    REM Create placeholder icon files (empty files for now)
    echo. > "src\main\res\mipmap-hdpi\ic_launcher.png"
    echo. > "src\main\res\mipmap-hdpi\ic_launcher_round.png"
    echo. > "src\main\res\mipmap-mdpi\ic_launcher.png"
    echo. > "src\main\res\mipmap-mdpi\ic_launcher_round.png"
    echo. > "src\main\res\mipmap-xhdpi\ic_launcher.png"
    echo. > "src\main\res\mipmap-xhdpi\ic_launcher_round.png"
    echo. > "src\main\res\mipmap-xxhdpi\ic_launcher.png"
    echo. > "src\main\res\mipmap-xxhdpi\ic_launcher_round.png"
    echo. > "src\main\res\mipmap-xxxhdpi\ic_launcher.png"
    echo. > "src\main\res\mipmap-xxxhdpi\ic_launcher_round.png"
)

echo 图标设置完成!
