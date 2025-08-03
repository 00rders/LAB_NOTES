# Splunk Hot Lab VM Setup — SOC\_TRACK

## Overview

This guide documents the complete process of setting up a **lightweight Splunk lab** on my **Hot Lab** (Intel MacBook) using **UTM** for virtualization.
The goal: a portable Splunk instance for on‑the‑go SOC/SIEM practice without needing my Cold Lab hardware.

---

## 1️⃣ Prerequisites

* **UTM** installed on macOS
* Stable internet connection
* At least **4 GB RAM** available for the VM
* \~10 GB free disk space

---

## 2️⃣ Download Ubuntu Server ISO

Ubuntu Server (no GUI) is lighter and perfect for running Splunk.

* Go to: [https://ubuntu.com/download/server](https://ubuntu.com/download/server)
* Download:

  * **Intel Mac** → `ubuntu-22.04.5-live-server-amd64.iso`

---

## 3️⃣ Create VM in UTM

### VM Type

* **Virtualize**
* **Architecture:** `x86_64`

### Boot

* **Boot from ISO image** → select downloaded ISO

### Hardware

* **CPU:** 2 cores (4 cores if available)
* **RAM:** 4 GB recommended (2 GB minimum)
* **Disk:** 30 GB

### Network

* **Mode:** `Emulated VLAN (User Mode)`
* **Port Forwarding Rules:**

  * **Rule 1**: TCP, Guest Port `8000`, Host Port `8000` → Splunk Web
  * (Optional) **Rule 2**: TCP, Guest Port `22`, Host Port `2222` → SSH

Save and start VM.

---

## 4️⃣ Install Ubuntu Server

Follow prompts in the installer:

1. **Language:** English
2. **Keyboard:** US
3. **Network:** Default (DHCP)
4. **Proxy:** Leave blank
5. **Storage:** Use entire disk
6. **Confirm destructive action:** Yes
7. **Profile Setup:**

   * Name: `Splunk Lab`
   * Server name: `splunk-vm`
   * Username: `splunk`
   * Password: *(lab password)*
8. **Install OpenSSH Server:** Yes
9. **Featured Server Snaps:** Leave all unchecked

Reboot when done.
Before booting, **eject ISO** in UTM.

---

## 5️⃣ Log Into Fresh Ubuntu VM

```bash
# Login with username/password set during install
splunk@Splunk-vm:~$
```

---

## 6️⃣ Install Splunk

### Update system and install dependencies

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install wget tar -y
```

### Download Splunk

```bash
wget -O splunk.tgz 'https://download.splunk.com/products/splunk/releases/9.0.1/linux/splunk-9.0.1-82c987350fde-Linux-x86_64.tgz'
```

### Extract and move to `/opt`

```bash
tar -xvzf splunk.tgz
sudo mv splunk /opt/splunk
```

### Start Splunk and accept license

```bash
sudo /opt/splunk/bin/splunk start --accept-license
```

* Press **Space** through license text
* Type `y` to agree
* Set:

  * **Admin username:** `admin` (recommended for lab)
  * **Password:** *(easy lab password)*

---

## 7️⃣ Access Splunk Web

From your **Mac browser**:

```
http://localhost:8000
```

Login with the admin credentials you just set.
You now have a clean Splunk GUI running from your Hot Lab VM.

---

## 8️⃣ Verify Splunk is Running

Inside VM:

```bash
sudo /opt/splunk/bin/splunk status
```

Should show:

```
splunkd is running
splunk helpers are running
```

---

## 9️⃣ Key Lessons Learned

* **User Mode + Port Forwarding** makes services in your VM accessible on your Mac without exposing them to your LAN.
* Splunk’s GUI runs in a browser — no Linux desktop needed.
* Port **8000** is the default for Splunk Web.
* Always **eject ISO** before reboot or you’ll boot back into the installer.
* Splunk first‑time setup always prompts for an admin username and password.

---

## 🔜 Next Steps

* Load sample log data into Splunk for practice.
* Start writing and testing SPL queries.
* Build custom dashboards for simulated SOC analysis.

---
