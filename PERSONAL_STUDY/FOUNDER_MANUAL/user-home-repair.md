# 🔧 Linux User Home Recovery & SSH Hardening

> **Use Case**: A broken Linux user account on a headless NAS, missing default shell configuration and SSH key setup.
> **Goal**: Fully restore usability and secure remote access in a no-AI, no-GUI environment.

---

## 🔍 Problem

* New Linux user (`00rders`) created via OpenMediaVault had an empty home directory
* No `.bashrc`, `.profile`, or `.ssh/authorized_keys`
* SSH access failed with "connection refused"
* Logging in locally revealed bare minimum shell

---

## ✅ Recovery Steps

### Step 1: Restore Shell Environment

```bash
cp /etc/skel/.bashrc ~/
cp /etc/skel/.profile ~/
```

These reinitialize proper shell behavior — aliases, PATHs, prompt formatting, etc.

---

### Step 2: Secure `.ssh/` Directory for Key-Based Login

```bash
mkdir -p ~/.ssh
chmod 700 ~/.ssh
nano ~/.ssh/authorized_keys  # Paste in public key
chmod 600 ~/.ssh/authorized_keys
```

This ensures SSH can authenticate using a key pair, and denies insecure access to key files.

---

### Step 3: Confirm Access

```bash
ssh 00rders@cyber-nas  # From your main machine
```

Shell access should now be passwordless and secured.

---

## 🧠 Real-World Notes (SOC or Infra Environment)

* This situation often happens in headless environments or auto-created users (OMV, Ansible, etc.)
* SSH will *silently fail* if `.ssh` permissions are too loose or `authorized_keys` is missing
* Fixing a user like this without GUI or AI assistance is a core survival task for SOC analysts, sysadmins, and IT support techs

---

## 📂 Outcome

System restored to full usability. SSH hardened. User now safe to use for Git operations, remote control, and automation.
