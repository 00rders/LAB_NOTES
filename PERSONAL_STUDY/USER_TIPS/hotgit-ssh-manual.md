# 🧠 FOUNDER MANUAL | Offline Git + Terminal Shell Configuration

> This document serves as a full offline reference for restoring Git functionality and CLI customization in the Hot Lab environment — from a clean macOS install to a secure, portable, SSH-enabled development terminal.

---

## ✅ Objective

Recreate the `hotgit-backup` SSH GitOps setup and full shell customization from scratch, without internet access. This includes key generation, shell configuration, GitHub integration (manual steps), and troubleshooting guidance.

---

## 📦 Step 1: Setup Directory Structure

```bash
mkdir -p ~/hotgit-backup
mkdir -p ~/.ssh
```

---

## 🔑 Step 2: SSH Key Generation for GitHub

Generate a **dedicated, passphrase-protected key** for GitOps:

```bash
ssh-keygen -t ed25519 -f ~/.ssh/gitops_ed25519 -C "GitHub GitOps key"
```

* Choose a **strong passphrase** (store in Bitwarden)
* Output:

  * Private key: `~/.ssh/*_ed25519`
  * Public key: `~/.ssh/*_ed25519.pub`

---

## ⚙️ Step 3: SSH Agent + Config

Start the SSH agent and add your key:

```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/*_ed25519
```

Then configure GitHub to use port 443:

#### `~/.ssh/config`

```ssh
Host github.com
  Hostname ssh.github.com
  Port 443
  User git
  IdentityFile ~/.ssh/*_ed25519
  IdentitiesOnly yes
```

> ✅ Uses port 443 to bypass network firewalls that may block port 22.

---

## 🧠 Manual GitHub Public Key Setup

If internet is available later:

1. `cat ~/.ssh/*_ed25519.pub`
2. Copy contents into GitHub at: [https://github.com/settings/keys](https://github.com/settings/keys)
3. Label it clearly (e.g., `Hot Lab GitOps`)

---

## 📂 Reference Folder Layout

```
~/
├── .ssh/
│   ├── *_ed25519
│   └── *_ed25519.pub
├── .zshrc
├── hotgit-backup/
└── .boot-banner/
    └── hotlab-banner.sh
```

---

## 🚪 Troubleshooting

### ⚠️ Cloning gives "Permission denied (publickey)"

* Check `~/.ssh/config` for correct `IdentityFile`
* Use `ssh-add -l` to verify active keys
* Retry with:

```bash
ssh-add -D
ssh-add ~/.ssh/*_ed25519
```

### ❌ GitHub asks for HTTPS login

* You're using an HTTPS URL. Replace with SSH:

```bash
git remote set-url origin git@github.com:USERNAME/REPO.git
```

### 🔍 SSH Key not recognized

* Make sure `.pub` key is uploaded to GitHub
* Try `ssh -T git@github.com` to confirm handshake

### ❓ Debugging Agent Issues

* Reboot the agent:

```bash
pkill ssh-agent
eval "$(ssh-agent -s)"
```

* Confirm key is re-added: `ssh-add -l`

---

## 🔄 Offline Restore Checklist

* [x] SSH key + passphrase secured
* [x] Agent + config fully working
* [x] GitHub key added (manual step)
* [x] Base shell config (`.zshrc`) restored
* [x] Repos cloned under `~/hotgit-backup`
* [x] Ready for push/pull operations over SSH

---

## 🧠 Why It Matters

This manual allows you to:

* Restore Git capabilities in total network isolation
* Validate operational SSH setup for secure Git workflows
* Ensure self-reliance in DevSecOps environments

> Print this out. Keep it with your ops documentation. It's your lifeline.
