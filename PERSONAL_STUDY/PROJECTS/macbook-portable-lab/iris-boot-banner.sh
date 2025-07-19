#!/bin/bash

# IRIS Boot Banner — Display Once at System Startup
# Drop this in ~/.config/iris/iris-banner.sh
# Make executable: chmod +x iris-banner.sh

clear

echo -e "\e[1;37m      ___ ____  ____  _____   ____  _     _____ _   _ _____ \e[0m"
echo -e "\e[1;37m     |_ _|  _ \\|  _ \\| ____| |  _ \\| |   | ____| \\ | |_   _|\e[0m"
echo -e "\e[1;37m      | || |_) | | | |  _|   | | | | |   |  _| |  \\| | | |  \e[0m"
echo -e "\e[1;37m      | ||  __/| |_| | |___  | |_| | |___| |___| |\\  | | |  \e[0m"
echo -e "\e[1;37m     |___|_|   |____/|_____| |____/|_____|_____|_| \\_| |_|  \e[0m"
echo ""

echo -e "\e[1;34m                ~ IRIS: INTERLOCK INITIATED ~\e[0m"
echo -e "\e[1;30m────────────────────────────────────────────────────────────\e[0m"

sleep 0.4; echo -e "\e[1;32m[■□□□□□□□□□]  Booting Modules...\e[0m"
sleep 0.3; echo -e "\e[1;33m[■■□□□□□□□□]  Checking Git Status...\e[0m"
sleep 0.3; echo -e "\e[1;33m[■■■□□□□□□□]  Verifying SSH Keys...\e[0m"
sleep 0.3; echo -e "\e[1;34m[■■■■□□□□□□]  Establishing Tailscale Link...\e[0m"
sleep 0.3; echo -e "\e[1;36m[■■■■■□□□□□]  Scanning VMs...\e[0m"
sleep 0.3; echo -e "\e[1;36m[■■■■■■□□□□]  Parsing DOTFILES...\e[0m"
sleep 0.3; echo -e "\e[1;35m[■■■■■■■□□□]  Initializing Operator HUD...\e[0m"
sleep 0.3; echo -e "\e[1;35m[■■■■■■■■□□]  Setting System Variables...\e[0m"
sleep 0.3; echo -e "\e[1;32m[■■■■■■■■■□]  Activating Monitor Layer...\e[0m"
sleep 0.3; echo -e "\e[1;32m[■■■■■■■■■■]  ALL SYSTEMS ONLINE\e[0m"

echo -e "\e[1;30m────────────────────────────────────────────────────────────\e[0m"
echo -e "  \e[1;37mOPERATOR:\e[0m 00rders            \e[1;37mENV:\e[0m Mobile Ops / Hot-Lab"
echo -e "  \e[1;37mBRANCH:\e[0m main                \e[1;31mGIT:\e[0m ⇡1 ⇣0 OUT OF SYNC ⚠️"
echo -e "  \e[1;37mTAILSCALE:\e[0m 🔒 Connected       \e[1;37mVMs:\e[0m Kali ✅  Ubuntu ✅"
echo -e "\e[1;30m────────────────────────────────────────────────────────────\e[0m"
echo -e "\e[1;35m> SYSTEM ACTIVE — LOCK TF IN █\e[0m"
