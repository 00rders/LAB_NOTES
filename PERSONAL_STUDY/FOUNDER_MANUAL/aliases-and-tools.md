# Aliases and Tools Reference – FOUNDER Manual

> This file is a centralized, offline-first reference for all custom shell aliases, CLI tools, and terminal utilities used inside the Hot Lab environment. It exists to preserve your speed, consistency, and operational flow even in fully disconnected or AI-disabled conditions.

---

## 🧭 Overview Table

| Tool/Alias | Command                                | Purpose                             |
| ---------- | -------------------------------------- | ----------------------------------- |
| `gstatus`  | `git status`                           | Check repo state                    |
| `gadd`     | `git add .`                            | Stage all changes                   |
| `gmessage` | `git commit -m`                        | Commit with message                 |
| `gpush`    | `git push origin main`                 | Push to main branch                 |
| `gpull`    | `git pull origin main`                 | Pull latest from main               |
| `gcheck`   | `git checkout`                         | Switch branches                     |
| `gbranch`  | `git branch`                           | List or rename branches             |
| `glog`     | `git log --oneline --graph --decorate` | Visual Git history                  |
| `micro`    | `brew install micro`                   | Terminal-based markdown/code editor |
| `glow`     | `brew install glow` / `glow file.md`   | Markdown preview in terminal        |
| `ssh nas`  | `ssh 00rders@cyber-nas`                | Secure remote login to NAS          |
| `zshrc`    | `micro ~/.zshrc`                       | Edit your shell config              |

---

## 🧱 Alias Blocks

### Git Aliases (in `~/.zshrc`)

```zsh
# Git aliases
alias gstatus="git status"
alias gadd="git add ."
alias gmessage="git commit -m"
alias gcheck="git checkout"
alias gpush="git push origin main"
alias gpull="git pull origin main"
alias gbranch="git branch"
alias glog="git log --oneline --graph --decorate"
```

### SSH Aliases

```zsh
# SSH Aliases
alias sshnas="ssh 00rders@cyber-nas"
```

---

## 🔧 Installed Tools

### `micro`

* Installed via: `brew install micro`
* Config file: `~/.config/micro/settings.json`
* Used for: Markdown editing, config files, terminal-first authoring

### `glow`

* Installed via: `brew install glow`
* Preview markdown: `glow yourfile.md`
* Used for: Offline markdown previewing, doc readability in terminal

---

## 🧠 Why This File Exists

This file is your **source of truth** for terminal speed and tooling. Instead of memorizing obscure flags or re-Googling commands, you now:

* ✅ Look here for reference
* ✅ Rebuild your aliases with copy/paste
* ✅ Preserve your operational flow offline
* ✅ Teach this stack to others or clone it to new machines

---

📁 Logged under: `FOUNDER_manual/aliases-and-tools.md`
