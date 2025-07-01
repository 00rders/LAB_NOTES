# 📦 01_initial-setup

### 🖥️ Hardware:
- Mini PC: **GMKtec NucBox G3 Plus**
- External Drive: **2TB SSD**
- Cable (temporary): **6-inch L-shaped USB-C → USB-C**
- Display: Shared with main PC (via input switch)
- Network: Wired Ethernet to router

---

## 🛠️ Tasks Completed:

### 1. **Hardware Setup**
- Unboxed and powered on mini PC
- Used shared monitor input for display
- Verified keyboard/mouse input
- Confirmed Ethernet port present (`enp3s0`)

### 2. **OS Flashing & Boot**
- Downloaded **OpenMediaVault (OMV) stable ISO**
- Flashed ISO to USB with **Balena Etcher**
- Labeled USB: `BOOT`
- Plugged into mini PC and booted into OMV installer

### 3. **Installation Process**
- Set hostname: `nas-00` ✅ *(simple, safe)*
- Set domain: `vault.net` → 🔒 *local-only; not internet-resolvable*
- Assigned **manual IP**: `192.168.X.99` ✅ *(masked)*
- Set gateway: `192.168.X.1` ✅ *(masked)*
- Set DNS: `192.168.X.1`, `1.1.1.1` ✅ *(masked/local+public)*
- Created root password (strong passphrase, not reused)
- Skipped SSD mount (external drive not plugged in yet)
- Skipped mirror setup due to temporary network error

### 4. **Networking Fix**
- Diagnosed missing `inet` configuration
- Identified correct Ethernet interface: `enp3s0`
- Connected directly to router → acquired DHCP lease
- Rebooted and resumed install successfully

### 5. **Login and Confirmation**
- Accessed OMV web interface at: `http://192.168.X.99` ✅ *(local, masked)*
- Successfully logged into web dashboard
- System is now ready for:
  - Disk mounting and file system setup
  - User creation and group permissions
  - SMB/SFTP service configuration
  - Git/media sync workflows for IRIS and lab repos

---

## 🧱 Current Roadblock

🛑 **SSD not yet connected**  
The short L-shaped USB-C → USB-C cable likely lacks proper shielding and bandwidth support for stable NAS usage.

### ✅ Next Step:
- Acquire a **short, straight USB-C to USB-C cable** rated for USB 3.1 Gen 2 or higher
- Secure SSD to chassis with velcro for clean build
- Mount disk via OMV and configure shared folders

---

## 📌 Trigger Phrase to Resume
Say:  
> **“Let’s finish setting up the NAS”**  
And we’ll resume *exactly where we left off* — no reboots, no recaps, all signal.

---

🧠 **Logged by 00rders** | June 30, 2025
