# 💪 Resolved Linux User Access Issue on Headless NAS

### 🧠 Context

While working on a headless Linux NAS environment, I encountered a misconfigured user account that lacked essential shell configuration files and secure SSH access. This is a common scenario in SOCs and infrastructure teams, especially when dealing with automation tools like OpenMediaVault or Ansible.

---

## 🔍 The Issue

* The user’s home directory was missing `.bashrc`, `.profile`, and `.ssh/authorized_keys`
* SSH login failed with `connection refused`
* Local shell access revealed no startup environment or user config

---

## 🔧 What I Did

* Manually restored shell defaults from `/etc/skel` to enable a usable terminal environment
* Created and secured the `.ssh` directory with correct file permissions (`700` on `.ssh`, `600` on `authorized_keys`)
* Installed the appropriate public key to re-enable passwordless, key-based SSH login
* Verified secure shell access from remote systems

---

## 📘 Why It Matters

SSH access issues like this are easy to overlook but can cripple automation pipelines, monitoring, or incident response in SOCs. Knowing how to restore functionality under constrained conditions — without a GUI or AI assistant — is a critical skill for system administrators and security analysts.

---

## ✅ Result

* Fully restored user functionality and hardened remote access
* System is now usable for secure Git operations, scripting, and remote management
* Documentation was created for future SOP use in similar headless or restricted environments
