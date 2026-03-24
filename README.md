# 🤖 Android Lab

Workspace untuk decompile, recompile, dan testing APK Android.

## Tools yang tersedia
- **Apktool** — decompile/recompile APK
- **JADX** — baca source code APK (Java/Kotlin)
- **ADB** — Android Debug Bridge
- **Robolectric** — unit test tanpa emulator

## Cara Pakai via Porval (Telegram)
Kirim ke @porval22_bot:
- "hidupkan android-lab"
- "matikan android-lab"
- "status codespaces"

## Quick Commands
```bash
# Decompile APK
apktool d app.apk -o output/

# Baca source code
jadx app.apk -d output/

# Recompile APK
apktool b output/ -o new-app.apk
```
