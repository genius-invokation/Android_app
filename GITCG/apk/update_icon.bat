@echo off
echo 更新应用图标...

REM 检查源图标是否存在
if not exist "icon.png" (
    echo 错误: 未找到icon.png文件
    pause
    exit /b 1
)

echo 源图标文件: icon.png

REM 删除可能冲突的adaptive icon配置
echo 清理adaptive icon配置...
if exist "app\src\main\res\mipmap-anydpi-v26\ic_launcher.xml" del "app\src\main\res\mipmap-anydpi-v26\ic_launcher.xml" /Q
if exist "app\src\main\res\mipmap-anydpi-v26\ic_launcher_round.xml" del "app\src\main\res\mipmap-anydpi-v26\ic_launcher_round.xml" /Q

REM 创建图标目录
echo 创建图标目录...
mkdir "app\src\main\res\mipmap-hdpi" 2>nul
mkdir "app\src\main\res\mipmap-mdpi" 2>nul
mkdir "app\src\main\res\mipmap-xhdpi" 2>nul
mkdir "app\src\main\res\mipmap-xxhdpi" 2>nul
mkdir "app\src\main\res\mipmap-xxxhdpi" 2>nul

REM 复制图标文件到各个密度文件夹
echo 复制图标到各个密度文件夹...
copy "icon.png" "app\src\main\res\mipmap-hdpi\ic_launcher.png" /Y
copy "icon.png" "app\src\main\res\mipmap-hdpi\ic_launcher_round.png" /Y
copy "icon.png" "app\src\main\res\mipmap-mdpi\ic_launcher.png" /Y
copy "icon.png" "app\src\main\res\mipmap-mdpi\ic_launcher_round.png" /Y
copy "icon.png" "app\src\main\res\mipmap-xhdpi\ic_launcher.png" /Y
copy "icon.png" "app\src\main\res\mipmap-xhdpi\ic_launcher_round.png" /Y
copy "icon.png" "app\src\main\res\mipmap-xxhdpi\ic_launcher.png" /Y
copy "icon.png" "app\src\main\res\mipmap-xxhdpi\ic_launcher_round.png" /Y
copy "icon.png" "app\src\main\res\mipmap-xxxhdpi\ic_launcher.png" /Y
copy "icon.png" "app\src\main\res\mipmap-xxxhdpi\ic_launcher_round.png" /Y

echo.
echo 图标更新完成！
echo 应用名称: 七圣召唤模拟器
echo 图标已应用到所有密度文件夹
