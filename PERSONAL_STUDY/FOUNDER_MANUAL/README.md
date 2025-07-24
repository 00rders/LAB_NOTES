# 🧠 OPERATOR MANUAL — README

> Centralized offline operations manual for all system-critical tools, recovery protocols, and workflows maintained by 00rders across all devices. This folder is designed to function as a self-sufficient, AI-free knowledge base for Linux, Git, dual boot repair, and system configuration — written by experience, not tutorials. It is also intended to help **anyone** who comes across it, especially self-taught operators facing real-world problems.

---

## 📚 Manual Contents

`operator_manual/`

```
├── CLI-BIBLE.md                       # Core Linux + Git command reference
├── aliases-and-tools.md              # Custom aliases, functions, scripts
├── git-sync-manual.md                # Git workflow: pushing, checking, status tools
├── github-backup-troubleshoot-manual.md  # `.bundle` backup workflows + troubleshooting
├── hotgit-ssh-manual.md              # SSH key setup + GitHub integration
├── terminal-setup-manual.md          # Zsh, Powerlevel10k, environment config
├── micro-config-manual.md            # Micro editor theming + customization
├── user-home-repair-manual.md        # Fixes for broken users, missing home dirs
├── OS-dualboot-manual.md             # Universal Linux + Windows dual boot recovery
├── dual-boot-setup-&-troubleshooting.md # Real-world rescue log from Cold Lab
└── README.md                         # You are here
```

---

## 🔐 Purpose

This folder exists to:

* Preserve offline recovery knowledge
* Provide surgical, tested solutions to Linux system failures
* Track critical Git, SSH, bootloader, and editor setup procedures
* Help others troubleshoot similar real-world issues

Every file in this directory was written *after* a real failure, fix, or config rollout — so others don’t have to go through it blind.

---

## 🔁 Designed For Use In:

* Mobile terminals (MacBook Hot Lab)
* Full Linux workstations (Cold Lab Desktop)
* Airgapped or AI-restricted environments
* Recovery sessions from live USBs or chroot environments

---

## 🧠 Operating Philosophy

> “Tools break. Systems fail. But knowledge is portable.”

This manual is the long-term memory of a self-taught operator — structured, version-controlled, and sharpened through lived experience.

Whether you're in the middle of a kernel panic, Git push rejection, or EFI meltdown — this folder gets you back.

If you found this and it helps you recover, learn, or fix something — it did its job.

---

📎 **Location:** `~/hotgit-backup/operator_manual/`

🔄 **Synced via:** SSH over port 443 using `~/.ssh/gitops_ed25519`

🛠️ **Maintained from:** MacBook Hot Lab · Cold Lab Desktop · Secure Nodes
