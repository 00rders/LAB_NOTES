# 🧠 FOUNDER MANUAL | Terminal Setup — Minimal Boot v2.0

> Updated reference for configuring the Hot Lab terminal shell with a clean, minimal boot aesthetic, Powerlevel10k, plugins, and a 3D ASCII banner only — no status panels.

---

## ✅ Step-by-Step Setup

### 1. Create Boot Banner Directory

```bash
mkdir -p ~/.boot-banner
```

### 2. Save Final Boot Banner File

Path: `~/.boot-banner/hotlab-banner.sh`

```bash
#!/bin/bash

# 🔥 3D ASCII Banner
echo -e "\e[1;36m"
cat << "EOF"
 ___  ___  ________  _________        ___       ________  ________     
|\  \|\  \|\   __  \|\___   ___\     |\  \     |\   __  \|\   __  \    
\ \  \\\  \ \  \|\  \|___ \  \_|     \ \  \    \ \  \|\  \ \  \|\ /_   
 \ \   __  \ \  \\\  \   \ \  \       \ \  \    \ \   __  \ \   __  \  
  \ \  \ \  \ \  \\\  \   \ \  \       \ \  \____\ \  \ \  \ \  \|\  \
   \ \__\ \__\ \_______\   \ \__\       \ \_______\ \__\ \__\ \_______\
    \|__|\|__|\|_______|   \|__|        \|_______|\|__|\|__|\|_______|
EOF
echo -e "\e[0m"

# 🔵 Identity Header
echo -e "\e[1;34m             ~ 00rders : Lock TF In ~\e[0m"
echo -e "\e[1;30m────────────────────────────────────────────────────────────\e[0m"
```

Make the script executable:

```bash
chmod +x ~/.boot-banner/hotlab-banner.sh
```

---

## ⚙️ `.zshrc` Integration

Ensure the following block is near the bottom of `.zshrc`:

```zsh
# Oh My Zsh core
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# 🔁 Minimal Boot Banner
[[ -f ~/.boot-banner/hotlab-banner.sh ]] && source ~/.boot-banner/hotlab-banner.sh
```

---

## ✅ Instant Prompt Warning Fix

Place this line **high up** in `.zshrc`, ideally after any `export` lines:

```zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
```

---

## ⛓️ Troubleshooting

### Banner not loading?

* Ensure the file is saved at: `~/.boot-banner/hotlab-banner.sh`
* Ensure it's executable: `chmod +x ~/.boot-banner/hotlab-banner.sh`
* Run `source ~/.zshrc`

### P10k prompt warnings?

* Check for insecure permissions:

  ```bash
  sudo chmod g-w,o-w /usr/local/share/zsh/site-functions/_git
  ```
* Ensure `POWERLEVEL9K_INSTANT_PROMPT=off` is placed early in `.zshrc`

---

## ✅ Final Result

Upon launch, the terminal should only show:

```
 ___  ___  ________  _________        ___       ________  ________
|\  \|\  \|\   __  \|\___   ___\     |\  \     |\   __  \|\   __  \
\ \  \\\  \ \  \|\  \|___ \  \_|     \ \  \    \ \  \|\  \ \  \|\ /_
 \ \   __  \ \  \\\  \   \ \  \       \ \  \    \ \   __  \ \   __  \
  \ \  \ \  \ \  \\\  \   \ \  \       \ \  \____\ \  \ \  \ \  \|\  \
   \ \__\ \__\ \_______\   \ \__\       \ \_______\ \__\ \__\ \_______\
    \|__|\|__|\|_______|   \|__|        \|_______|\|__|\|__|\|_______|
```

Then immediately drop into your `zsh` prompt.

> This minimal design reflects operational focus. Flashy tools were scrapped. The shell is now purely yours.

---

## 📁 File References

```
~/.boot-banner/
└── hotlab-banner.sh

~/.zshrc
└── Includes Powerlevel10k config and banner source line
```

---

## 💡 Tip

If you ever want to toggle the banner **off** without deleting it:

```zsh
# Comment the line in `.zshrc`
# [[ -f ~/.boot-banner/hotlab-banner.sh ]] && source ~/.boot-banner/hotlab-banner.sh
```
