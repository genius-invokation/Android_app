# WebViewer APK - 全屏浏览器应用

这是一个简单的Android应用，功能是作为全屏浏览器打开 gi.xqm32.org 网站。

## 构建要求

1. **Java JDK 8 或更高版本**
   - 下载地址: https://www.oracle.com/java/technologies/downloads/
   - 或者使用 OpenJDK: https://adoptopenjdk.net/

2. **Android SDK**
   - 下载 Android Command Line Tools: https://developer.android.com/studio#command-tools
   - 设置环境变量 `ANDROID_HOME` 指向SDK目录
   - 使用 sdkmanager 安装必要组件:
     ```
     sdkmanager "platform-tools" "platforms;android-34" "build-tools;34.0.0"
     ```

## 构建步骤

### 方法1: 使用提供的批处理脚本（推荐）
```batch
.\build_apk.bat
```

### 方法2: 手动构建
```batch
# 1. 创建图标文件
.\create_icons.bat

# 2. 构建APK
.\gradlew.bat assembleDebug
```

## 构建结果

成功构建后，APK文件将位于:
```
build\outputs\apk\debug\app-debug.apk
```

## 安装APK

1. 在Android设备上启用"未知来源"安装
2. 将APK文件传输到设备
3. 点击APK文件进行安装

## 应用功能

- 启动后自动加载 gi.xqm32.org 网站
- 全屏显示，隐藏状态栏和导航栏
- 支持返回键在网页间导航
- 支持JavaScript和DOM存储
- 支持缩放和宽视图

## 故障排除

1. **Java错误**: 确保安装了Java JDK并设置了PATH
2. **Android SDK错误**: 确保设置了ANDROID_HOME环境变量
3. **网络错误**: 确保有互联网连接以下载Gradle和依赖
4. **权限错误**: 在Windows上以管理员身份运行命令提示符

## 项目结构

```
apk/
├── src/main/
│   ├── AndroidManifest.xml          # 应用清单
│   ├── java/com/webviewer/app/
│   │   └── MainActivity.java        # 主活动
│   └── res/                         # 资源文件
├── build.gradle                     # 构建配置
├── gradlew.bat                      # Gradle包装器
└── build_apk.bat                    # 构建脚本
```
