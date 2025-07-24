# 🔐 Secure SSH Access from MacBook Hot-Lab to NAS (`ssh-access.md`)

This document captures the full lifecycle of configuring secure SSH access from my MacBook Air (“hot lab”) to my home NAS server (`cyber-nas`) using Tailscale networking and SSH key authentication — including the full diagnostic and repair process after an unexpected access failure.

---

## 🧠 Context

* My MacBook Air (`lab-admin@hot-lab`) is a mobile SOC workstation for remote tasks.
* `cyber-nas` runs OpenMediaVault and functions as both a NAS and local security lab.
* I previously generated an SSH key (`id_ed25519`) for GitHub access from `lab-admin`, but I needed a new dedicated key for accessing the NAS.
* During routine testing, I discovered that the target NAS user (`00rders`) failed SSH login due to a misconfigured user environment (no `/home/00rders`, no `.ssh`, broken permissions).

---

## 🎯 Objective

> Enable secure, key-based SSH access from `lab-admin@hot-lab` to the `00rders` user on `cyber-nas` over Tailscale.

---

## 🕵️ Discovery + Diagnosis

While testing SSH login after setting up my lab aliases, I ran into a confusing error:

```bash
ssh 00rders@cyber-nas
# Error: Permission denied (publickey,password).
```

* I confirmed the password was correct via Bitwarden and manual typing.
* Suspecting a deeper issue, I attempted login as `root` and ran:

```bash
ls /home/
# Output: no '00rders' directory present
```

This revealed that while the user existed, it lacked a valid home folder and `.ssh` path for key-based login.

---

## 🛠️ Full Walkthrough

### 1. Fallback: Login as root

```bash
ssh root@cyber-nas
```

### 2. Rebuild the user’s home and .ssh folders

```bash
mkdir -p /home/00rders
chown 00rders:users /home/00rders
chmod 755 /home/00rders

mkdir -p /home/00rders/.ssh
chown 00rders:users /home/00rders/.ssh
chmod 700 /home/00rders/.ssh
```

✅ This corrected the permission structure and ensured SSH could locate the right authorized\_keys path.

### 3. Confirm identity

```bash
id 00rders
# uid=1000(00rders) gid=100(users) groups=...
```

---

## 🔐 SSH Key Configuration

### 4. Generate a new dedicated SSH key on MacBook

```bash
ssh-keygen -t ed25519 -f ~/.ssh/macbook-hotlab_ed25519 -C "macbook hot-lab key"
```

### 5. Attempt `ssh-copy-id` (initially failed due to missing home, then retried after fix)

```bash
ssh-copy-id -i ~/.ssh/macbook-hotlab_ed25519.pub 00rders@cyber-nas
# Success
```

### 6. Add SSH config alias

```bash
nano ~/.ssh/config

Host nas
    HostName cyber-nas
    User 00rders
    IdentityFile ~/.ssh/macbook-hotlab_ed25519
    IdentitiesOnly yes
```

### 7. Test access with and without alias

```bash
ssh 00rders@cyber-nas
# ✅ Success

ssh nas
# ✅ Success via alias
```

---

## ✅ Final Outcome

User `00rders` now has:

* A valid home directory and `.ssh` structure with correct permissions
* Working key-based SSH login from MacBook
* Clean SSH config alias: `ssh nas`

---

## 💡 What I Learned

* That user accounts can exist without valid home directories — and how that breaks SSH.
* How to manually correct permissions using `chown`, `chmod`, and `mkdir`.
* The purpose of `authorized_keys` and why `ssh-copy-id` relies on proper folder structure.
* The benefit of fallback access via `root` in real-world debugging.
* How SSH config aliases simplify workflows and help modularize access.

---

## 💼 Why This Matters (Real-World Scenario)

Imagine you're a junior sysadmin or SOC analyst trying to SSH into a jump server. Credentials fail. You're locked out—until you:

* Recognize the missing home directory
* Rebuild it correctly
* Install keys and restore service

These are **real-world break/fix skills** you’d use on Day 1 of a security or IT role.

---

Logged by 00rders | 2025-07-19
