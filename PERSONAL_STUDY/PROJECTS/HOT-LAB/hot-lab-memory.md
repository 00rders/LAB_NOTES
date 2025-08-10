# 🧠 `HOT_LAB_memory_snapshot_v2025-07-22.md`

> **Thread Bootstrap File**
> Use this to hydrate any ChatGPT thread under your `Hot Lab` project.
> It restores full context of what has been built, customized, and logged so far.

---

## 🔧 DEVICE ROLE: "Hot Lab"

Your MacBook Air is now designated as your **portable cybersecurity lab**, used for:

* Git-based workflows (`hotgit-backup/`)
* Remote SSH access to `cyber-nas` (your home NAS)
* Local VM-based cyber lab (Kali + Ubuntu)
* Offline terminal practice and syntax recall
* Custom shell environment with aesthetic boot banner

---

## ✅ SETUP & CUSTOMIZATION COMPLETED

### Shell Environment

* Default shell: `zsh` with [Oh My Zsh](https://ohmyz.sh/)
* Theme: Powerlevel10k, fully customized
* Plugins installed:

  * `zsh-autosuggestions`
  * `zsh-syntax-highlighting`
* Nerd Font installed and working
* Instant prompt **disabled** for clean banner output:

  ```zsh
  typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
  ```

### Boot Banner

* Stored in: `~/.boot-banner/hotlab-banner.sh`
* Displays 3D ASCII “HOT LAB” logo
* Simple footer: `~ 00rders : Lock TF In ~`
* Status panels (Git, Tailscale, etc.) removed for minimalism

### Micro Editor

* Installed via Homebrew (`brew install micro`)
* Set as default editor in `.zshrc`:

  ```zsh
  export EDITOR="micro"
  export VISUAL="micro"
  ```

---

## ✅ GIT WORKFLOW

* SSH key `gitops_ed25519` generated and stored in Bitwarden
* Connected to GitHub using SSH (no HTTPS)
* Verified push/pull access to:

  * `LAB_NOTES`
  * `ai-playbook`
  * `automation-and-tools`
  * `iris`
* Created and documented:

  * `hotgit-backup.md` – Git repo syncing workflow
  * `terminal-setup-manual.md` – Original boot config
  * `Terminal-setup-v2.md` – Minimal boot-only version
  * `CLI-bible.md` – Ongoing offline command reference

---

## ✅ TROUBLESHOOTING & SKILL DEMOS

* Resolved divergent Git branches using rebase
* Practiced local-only commits and SSH push
* Validated `.zshrc` sourcing order for banner + plugin issues
* Used `chmod`, `cat`, `source`, and directory structuring to debug real-world shell errors

---

## 📌 NEXT TASKS

1. 🎨 **Micro Editor Customization**

   * Theme config via `~/.config/micro/settings.json`
   * Markdown-specific tweaks
   * Log and commit as `micro-config.md`

2. 🔐 SSH Alias Optimization (optional)

3. 🧠 Expand `CLI-bible.md` with more real-world flags and fixes

---

## 📁 PROJECT DIRECTORY STRUCTURE

```
~/hotgit-backup/
├── ai-playbook/
├── automation-and-tools/
├── LAB_NOTES/
│   └── PERSONAL_STUDY/
│       └── PROJECTS/
│           └── macbook-portablelab/
│               ├── hotgit-backup.md
│               └── Terminal-setup-v2.md
│       └── FOUNDER_MANUAL/
│           ├── CLI-bible.md
│           └── terminal-setup-manual.md
```

---

## 🧠 IDENTITY SNAPSHOT

| Label          | Value                                |
| -------------- | ------------------------------------ |
| Operator       | `00rders`                            |
| Device Name    | `Hot Lab` (MacBook Air)              |
| Git Identity   | SSH-authenticated (`gitops_ed25519`) |
| Workflow Style | Offline-first, AI-optional           |
| Design Motto   | “Minimal. Functional. Yours.”        |

---

Let me know when the new `Hot Lab` project thread is live — I’ll hydrate it using this snapshot and resume with **Micro customization**.
