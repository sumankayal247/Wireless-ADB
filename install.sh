#!/usr/bin/env bash
# scrcpyqr Installer

# --- Colors ---
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'

echo -e "${CYAN}========================================${NC}"
echo -e "${GREEN}      Installing scrcpyqr Dependencies  ${NC}"
echo -e "${CYAN}========================================${NC}"

# Detect package manager
if command -v apt >/dev/null 2>&1; then
    PKG_MGR="apt"
    INSTALL_CMD="sudo apt update && sudo apt install -y"
elif command -v dnf >/dev/null 2>&1; then
    PKG_MGR="dnf"
    INSTALL_CMD="sudo dnf install -y"
elif command -v pacman >/dev/null 2>&1; then
    PKG_MGR="pacman"
    INSTALL_CMD="sudo pacman -Sy --noconfirm"
else
    echo -e "${RED}Unsupported package manager. Please manually install: scrcpy, adb, qrencode${NC}"
    exit 1
fi

echo -e "${YELLOW}Installing scrcpy, adb, and qrencode using $PKG_MGR...${NC}"
$INSTALL_CMD scrcpy adb qrencode

echo -e "${YELLOW}Installing scrcpyqr to ~/.local/bin...${NC}"
mkdir -p "$HOME/.local/bin"
cp scrcpyqr "$HOME/.local/bin/"
chmod +x "$HOME/.local/bin/scrcpyqr"

echo -e "${GREEN}Installation Complete!${NC}"
echo -e "You can now run ${CYAN}scrcpyqr${NC} from anywhere in your terminal."
echo "Make sure ~/.local/bin is in your system's PATH."
