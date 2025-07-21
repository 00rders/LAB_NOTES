# 🧊 Cold Lab CLI Config (Git Bash)

This document captures the full terminal setup for the **Cold Lab** system (Windows 10 Home), using Git Bash as the primary shell environment inside Windows Terminal. It mirrors the Hot Lab philosophy: terminal-first, fast, and clean.

---

## ✅ Environment Overview

* **OS**: Windows 10 Home
* **Terminal**: Windows Terminal (Git Bash profile)
* **Shell**: Git Bash (`~/.bashrc`)
* **Package Manager**: [Scoop](https://scoop.sh/)
* **Installed CLI Tools**:

  * `micro` – terminal text editor
  * `glow` – markdown previewer
  * `WinDirStat` – visual file audit tool (external GUI)

---

## 🧠 Philosophy

* Minimal, fast, and readable shell environment
* Mirror Hot Lab alias/workflow style
* Motivational cold-themed ASCII banner
* Local-first tooling, offline-capable

---

## 📁 Key Paths

| Purpose            | Path                 |
| ------------------ | -------------------- |
| Home dir           | `C:\Users\ju`        |
| Git Bash config    | `~/.bashrc`          |
| Notes file         | `~/coldlab/notes.md` |
| Cold Lab work root | `~/coldlab/`         |

---

## 🔧 `.bashrc` Contents

### 🔹 Editor Config

```bash
export EDITOR="micro"
```

### 🔹 Aliases

```bash
# === ALIASES ===
alias ll='ls -lah --color=auto'
alias cls='clear'
alias gs='git status'
alias gpull='git pull'
alias gpush='git add . && git commit -m "update" && git push'
alias gbackup='git bundle create ../backup.bundle --all'
alias notes='micro ~/coldlab/notes.md'
```

### 🔹 ASCII Boot Banner

```bash
echo -e "
      ::::::::   ::::::::  :::        :::::::::          :::            :::     :::::::::
    :+:    :+: :+:    :+: :+:        :+:    :+:         :+:          :+: :+:   :+:    :+:
   +:+        +:+    +:+ +:+        +:+    +:+         +:+         +:+   +:+  +:+    +:+  
  +#+        +#+    +:+ +#+        +#+    +:+         +#+        +#++:++#++: +#++:++#+    
 +#+        +#+    +#+ +#+        +#+    +#+         +#+        +#+     +#+ +#+    +#+    
#+#    #+# #+#    #+# #+#        #+#    #+#         #+#        #+#     #+# #+#    #+#     
########   ########  ########## #########          ########## ###     ### #########        

🧊  COLD LAB SYSTEM READY – MAIN OPS CONSOLE ACTIVE
"
```

### 🔹 (Optional) Welcome Message

```bash
echo -e "📆  Welcome back, $USER. Today is $(date '+%A, %B %d, %Y')."
```

---

## 🔁 Post-Install Setup

### Git Bash profile:

* Default terminal set to Git Bash via Windows Terminal settings
* `.bashrc` lives at `C:\Users\ju\.bashrc`
* All aliases and configs tested successfully

### Scoop-installed tools accessible globally:

* Confirmed: `micro`, `glow`

### External utilities:

* `WinDirStat` used in place of `ncdu` for disk visualization

---

## ✅ Next Steps

* Add SSH config to `~/.ssh/config`
* Clone and push Cold Lab config repo
* Continue mirroring Hot Lab CLI setup and git workflows
* Create GitHub entry under `PROJECTS/cold-lab/` to log this config

---

## 🔐 Cold Lab Status

> Terminal-ready. Motivational. Fast. Git-aware.
> This machine is now part of the fully interoperable lab ecosystem.
