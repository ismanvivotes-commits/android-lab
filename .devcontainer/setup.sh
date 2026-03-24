#!/bin/bash
set -e
echo "🔧 Setting up Android Lab..."

# Install Apktool
wget -q https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool -O /usr/local/bin/apktool
wget -q https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.9.3.jar -O /usr/local/bin/apktool.jar
chmod +x /usr/local/bin/apktool

# Install JADX
wget -q https://github.com/skylot/jadx/releases/download/v1.5.0/jadx-1.5.0.zip -O /tmp/jadx.zip
unzip -q /tmp/jadx.zip -d /opt/jadx
ln -sf /opt/jadx/bin/jadx /usr/local/bin/jadx
ln -sf /opt/jadx/bin/jadx-gui /usr/local/bin/jadx-gui

# Install ADB
apt-get update -q && apt-get install -y -q android-tools-adb

# Install npx + openclaw
npm install -g openclaw 2>/dev/null || true

echo "✅ Android Lab ready!"
echo "Tools: apktool, jadx, adb"
