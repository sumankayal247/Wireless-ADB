#!/usr/bin/env bash
# scrcpyqr Uninstaller

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'

echo -e "${CYAN}========================================${NC}"
echo -e "${RED}        scrcpyqr Uninstaller          ${NC}"
echo -e "${CYAN}========================================${NC}"

if [ -f "$HOME/.local/bin/scrcpyqr" ]; then
    echo -e "${YELLOW}Removing scrcpyqr from ~/.local/bin...${NC}"
    rm -f "$HOME/.local/bin/scrcpyqr"
fi

if [ -d "$HOME/.local/platform-tools" ]; then
    read -p "Do you also want to remove the Google ADB platform-tools downloaded by this script? (y/N): " rm_adb
    if [[ "$rm_adb" == "y" || "$rm_adb" == "Y" ]]; then
        echo -e "${YELLOW}Removing ~/.local/platform-tools...${NC}"
        rm -rf "$HOME/.local/platform-tools"
    fi
fi

echo -e "${GREEN}Uninstall complete!${NC}"
echo "Note: This script did not uninstall scrcpy, adb, or qrencode from your system package manager."
