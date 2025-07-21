# 🧰 Hot Lab Setup Log (Full System Build)

> **Device:** MacBook Air ("Hot Lab")
> **Owner:** 00rders
> **Purpose:** Portable cyber lab + SOC analyst toolkit + remote terminal for NAS operations
> **Status:** ✅ Stable | 🔒 Hardened Shell | 🔧 Ongoing Enhancements

---

## 🧼 Phase 0: System Cleanup + Fresh Start

* **Cleared macOS Launchpad**

  * Removed unused apps for visual and mental clarity
  * Hid or unpinned default clutter (GarageBand, Keynote, etc.)

* **Created Admin User:** `lab-admin`

  * Used as dedicated lab operator account

* **Verified macOS was clean and stable**

  * No major lingering software, clutter, or conflicting environments

---

## 🏗️ Phase 1: Base Tooling + Package Manager

* ✅ Installed **Homebrew**

  * Used as primary CLI package manager

* ✅ Installed CLI Tools via Brew:

  * `micro` — terminal-based text editor
  * `git` — version control
  * `tailscale` — secure mesh networking
  * `bitwarden` — password manager
  * `protonvpn` — VPN client for lab traffic

---

## 🧠 Phase 2: Terminal Customization

### ✅ Shell Configuration

* Set default shell: Zsh (macOS default)
* Installed + configured **Oh My Zsh**
* Installed + configured **Powerlevel10k**
* Plugins added:

  * `zsh-autosuggestions`
  * `zsh-syntax-highlighting`

### ✅ Font + Prompt

* Installed **Nerd Font** to support glyph icons
* Ran Powerlevel10k config wizard

  * Removed execution time from prompt
  * Set custom blurred prompt head
  * Enabled Git status indicators

---

## 🔥 Phase 3: Custom Boot Banner

### ✅ Boot Banner Created: `iris-hotlab.sh`

* Placed in `~/.boot-banner/`
* Sourced from bottom of `.zshrc`
* Content includes:

  * 🔥 3D ASCII "HOT LAB" header
  * `~ 00rders: INTERLOCK INITIATED ~` subheader
  * 🧠 Status panel:

    * Operator name
    * Git branch/sync state
    * Tailscale connection
    * Active VM states (Kali, Ubuntu)

### ❌ Removed loading bar for cleanliness

* Initially scripted animated loading sequence using sleep + echo
* Removed for visual clarity and terminal speed

---

## ⚠️ Phase 4: Debugging + Shell Warnings

### ✅ Fixed Oh My Zsh insecure directory warning

* Located insecure completions in:

  * `/usr/local/share/zsh/site-functions/_git → ../../../Cellar/...`
* Changed permissions:

  * `chmod g-w,o-w` on target and parents
* Fixed ownership:

  * `chown -R lab-admin:admin` on affected `Cellar` folders

### ✅ Disabled Powerlevel10k Instant Prompt

* Issue: Visual output (boot banner) caused console output warning
* Fix:

  * Added `typeset -g POWERLEVEL9K_INSTANT_PROMPT=off` to top of `.zshrc`
  * Clean reload using `exec zsh`

✅ **Banner now loads cleanly with no warnings.**

---

## 🔐 Current Shell State: Stable

* `.zshrc` is fully customized
* `.zshenv` prepared (minimal)
* Powerlevel10k prompt loads without delay or error
* Boot banner + status HUD appear on every terminal launch

---

## 🗂️ Directory Overview

* `~/.boot-banner/iris-hotlab.sh` — custom banner
* `~/.zshrc` — shell config + banner source
* `~/.zshenv` — used for preloading vars (optional)

---

## 🧭 Next Objectives (Planned)

* [ ] Create custom Git aliases (`gitpushall`, `gitstatus`, etc.)
* [ ] Create `~/bin/` or `~/.local/bin/` for personal CLI tools
* [ ] Micro editor theme + config tweaks (tab size, syntax color, autosave)
* [ ] Start `FOUNDER_manual/cheatsheet.md` for airgapped reference
* [ ] GitHub sync setup for hot-lab repo (either clone or push existing files)
* [ ] Create `~/.ssh/config` for simplified remote access
* [ ] Set up dynamic Git sync indicators for polybar/i3 (future Linux WM phase)

---

🧠 **This log represents the foundational system build for all future lab operations.**
All changes going forward should be layered cleanly on top of this baseline.
