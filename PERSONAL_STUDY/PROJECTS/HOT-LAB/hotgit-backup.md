# 🔧 Secure Git Repo Management with SSH: `hotgit-backup.md`

> This document outlines the secure and organized Git setup used in the Hot Lab environment. It demonstrates a scalable, SSH-authenticated workflow with centralized repo storage. All steps were performed manually in the CLI and follow best practices for key hygiene and operational security.

---

## ✅ Objective

Set up a clean, secure, SSH-based Git workflow with dedicated credentials for GitHub, centralizing all important repositories under one location: `~/hotgit-backup/`

---

## 🔐 SSH Key Creation

A new dedicated key was generated for all GitHub operations:

```bash
ssh-keygen -t ed25519 -C "gitops key for GitHub"
```

* 🔑 **Key name:** `gitops_ed25519`
* 🔐 **Passphrase:** Secure and saved in password manager
* 📁 **Location:** `~/.ssh/gitops_ed25519`

> 🔒 This key is used *exclusively* for GitHub repo access.

---

## ⚙️ SSH Agent & Config

The key was added to the SSH agent, and the config file updated to use it for all GitHub interactions:

```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/gitops_ed25519
```

#### `~/.ssh/config`

```ssh
Host github.com
  Hostname ssh.github.com
  Port 443
  User git
  IdentityFile ~/.ssh/gitops_ed25519
  IdentitiesOnly yes
```

> ✅ Uses port 443 to avoid firewall or corporate proxy blocks on port 22.

---

## 🔗 GitHub Integration

* The public key (`gitops_ed25519.pub`) was added to the GitHub profile under [SSH Keys](https://github.com/settings/keys).
* HTTPS authentication was intentionally avoided to enforce SSH-only workflows.

---

## 🗂 Directory Structure

All Git repositories are centralized under the following structure:

```
~/hotgit-backup/
├── automation-and-tools
├── LAB_NOTES
├── ai-playbook
└── iris
```

> 📁 This naming scheme provides clean separation from OS-level files, virtual machines, or local scripts.

---

## 📦 Repo Cloning (via SSH)

Each repository was cloned with its SSH URI:

```bash
git clone git@github.com:00rders/automation-and-tools.git ~/hotgit-backup/automation-and-tools
git clone git@github.com:00rders/LAB_NOTES.git ~/hotgit-backup/LAB_NOTES
git clone git@github.com:00rders/ai-playbook.git ~/hotgit-backup/ai-playbook
git clone git@github.com:00rders/iris.git ~/hotgit-backup/iris
```

---

## 🧠 Why It Matters

This structure reflects:

* ✅ Strong key hygiene (dedicated, passphrase-protected key)
* ✅ Secure Git access (SSH with obfuscated port)
* ✅ Scalable layout (clean backup root folder)
* ✅ Minimal vendor lock-in (offline Git still works)
* ✅ Smooth developer flow (no password prompts, full control)

---

## 🔄 Next Step

Add automation tools from `automation-and-tools/`:

* `gitstatus.sh` → Display repo sync state
* `gitpushall.sh` → Add, commit, and push changes
* `gitbackupnow.sh` → Bundle and back up repos

> These tools will streamline routine Git tasks and enhance operational efficiency from the Hot Lab terminal.
