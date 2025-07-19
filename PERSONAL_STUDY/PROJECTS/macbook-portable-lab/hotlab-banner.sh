# Regenerate the boot banner with HOT-LAB branding instead of IRIS
hotlab_banner_script = """#!/bin/bash

# ────────────────────────────────────────────────────────────
# 🚀 HOT-LAB MOBILIZATION SEQUENCE
# Displays aesthetic boot banner for field workstation
# Keeps IRIS branding separate for clarity
# ────────────────────────────────────────────────────────────

clear

# 🔥 Custom HOT-LAB ASCII Art Header
cat << "EOF"
         _____  _______ _______     __      ____   ____  _______ 
        |  __ \\|__   __|__   __|   /\\ \\    / /\\ \\ / /\\ \\ / / ____|
        | |__) |  | |     | |     /  \\ \\  / /  \\ V /  \\ V / (___  
        |  _  /   | |     | |    / /\\ \\ \\/ / /\\ \\ / /\\ \\ /\\___ \\ 
        | | \\ \\   | |     | |   / ____ \\  / ____ \\ /  ____/____) |
        |_|  \\_\\  |_|     |_|  /_/    \\_\\/_/    \\_\\/_/    |_____/ 
EOF

sleep 0.7

# 🔄 Animated System Boot Progress Bar
steps=(
    "Booting Hot-Lab Environment..."
    "Loading Terminal Customizations..."
    "Verifying Git Config..."
    "Establishing Tailscale Tunnel..."
    "Detecting VMs..."
    "Parsing Operator Dotfiles..."
    "Activating CLI Enhancements..."
    "Calibrating System Variables..."
    "Loading Operator HUD..."
    "HOT-LAB READY FOR DEPLOYMENT"
)

for i in "${!steps[@]}"; do
    filled=$((i+1))
    bar=$(printf "%${filled}s" | tr ' ' '■')
    empty=$(printf "%$((10-filled))s" | tr ' ' '□')
    echo "[${bar}${empty}]  ${steps[$i]}"
    sleep 0.3
done

echo ""
echo "────────────────────────────────────────────────────────────"
echo "  OPERATOR: 00rders            ENV: Mobile Ops / Hot-Lab"
echo "  MODE: Terminal Ops           STATUS: Field Ready ✅"
echo "  VMs: Kali ✅  Ubuntu ✅       TAILSCALE: 🔒 Connected"
echo ""
echo "────────────────────────────────────────────────────────────"
echo -e "> \e[1;32mENVIRONMENT ACTIVE — LOCK TF IN █\e[0m"
"""

# Save to a new file
hotlab_path = Path("/mnt/data/hotlab-banner.sh")
hotlab_path.write_text(hotlab_banner_script)

hotlab_path.name
