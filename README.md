# scrcpyqr

A foolproof, interactive terminal script to pair and connect your Android device wirelessly to `scrcpy` using a QR code.

Built to be so easy a 15-year-old can set it up. No more typing long IP addresses, guessing pairing codes, or fighting with Android Studio just to mirror your phone.

## Features
- **100% Reliable QR Codes**: Generates a high-contrast PNG image instead of relying on broken terminal fonts, ensuring your phone scans it instantly.
- **Auto-Fixes Broken ADB**: Automatically detects if your Linux distribution stripped out mDNS network discovery (a very common issue on Debian/Ubuntu) and offers to download the official Google Platform Tools to fix it.
- **Smart Connection Modes**:
  1. **QR Code Pairing**: Point your phone camera and you're paired.
  2. **Manual Pairing Fallback**: For networks that block auto-discovery (like Guest Wi-Fi).
  3. **Quick Connect**: Jump straight into `scrcpy` for devices you've already paired.

## Installation

Run the automated installer which installs all dependencies (`scrcpy`, `adb`, `qrencode`) and adds `scrcpyqr` to your system path:

```bash
git clone https://github.com/YOUR_USERNAME/scrcpyqr.git
cd scrcpyqr
chmod +x install.sh
./install.sh
```

## Usage

Simply run:
```bash
scrcpyqr
```

### Steps:
1. Ensure your PC and Phone are on the **same Wi-Fi network** (or connect your PC to your phone's Mobile Hotspot for zero-lag performance).
2. On your phone, go to **Developer Options > Wireless Debugging**.
3. Follow the on-screen prompts in your terminal!
