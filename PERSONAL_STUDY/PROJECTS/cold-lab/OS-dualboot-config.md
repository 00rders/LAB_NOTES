
## ✅ Project Overview

**Goal:** Successfully install EndeavourOS alongside Windows 10 on a single PC while preserving all data and enabling clean dual-boot functionality.

**Context:** This was my first attempt at dual-booting Linux on a production desktop. My system already had Windows 10 installed on the C:\ drive with a standard 100MiB EFI partition. I wanted to create a fully functional EndeavourOS desktop environment on a new 200GB partition from my D:\ drive without interfering with my Windows setup.

---

## 🔍 Real-World Problem Faced

Despite following standard installation steps, my system failed to boot into Linux after install. I spent over 24 hours in a loop of fixing bootloader issues, kernel image errors, and partition misconfigurations. The root cause wasn’t obvious.

---

## ⚠️ Root Cause Analysis

* The original 100MiB EFI partition (from Windows) was too small to support Linux kernel image storage
* I had mounted that EFI partition directly as `/boot`, causing kernel installs to fail with "no space left on device"
* Despite creating a dedicated `/boot` on the Linux partition, `dracut` was still targeting the wrong EFI path

---

## 🧠 Solution Summary

> I resolved the problem by decoupling `/boot` and `/boot/efi`, switching from `dracut` to `mkinitcpio`, and reconfiguring my GRUB install to utilize the correct mount points. I also removed `kernel-install-for-dracut` to prevent default misbehavior.

---

## 🔧 Technical Steps Taken

### Partition Setup

* Windows C: (nvme0n1p1) – 100MiB EFI
* Linux D: (sda2) – 200GB ext4 root partition for EndeavourOS

### Key Fix Steps

```bash
# Mount corrected layout
mount /dev/sda2 /mnt
mount /dev/nvme0n1p1 /mnt/boot/efi
arch-chroot /mnt

# Replace init system and fix kernel install path
pacman -R kernel-install-for-dracut
pacman -S mkinitcpio
pacman -S linux linux-headers

# Install and configure GRUB
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
```

### Result

✅ Successfully booted into EndeavourOS with KDE Plasma desktop using GRUB, no USB required.

---

## 💡 Key Learnings

* Dual-booting isn't just about free space—**EFI structure and bootloader configuration are critical**
* Arch-based systems like EndeavourOS may default to `dracut` or systemd-boot, but **GRUB + mkinitcpio is more flexible for complex setups**
* When kernel errors occur post-install, always validate:

  * Mount points: `df -h`, `mount | grep boot`
  * Disk space: `lsblk -f`, `du -sh /boot`
  * Package conflicts: `pacman -Qs kernel`

---

## 🧰 Skills Demonstrated

* Linux installation and partitioning
* Bootloader troubleshooting and EFI path debugging
* Chroot environment usage for post-install repairs
* System recovery planning with data preservation

---

## 🧭 Next Steps

* [ ] Publish a **public-facing tutorial** for dual-boot Linux + Windows on EFI systems
* [ ] Document `mkinitcpio` vs `dracut` behaviors and defaults for future rebuilds
* [ ] Add GRUB rescue checklist to `CLI-BIBLE.md`

---

## 🎯 Why This Matters (Employer Context)

This project reflects real-world troubleshooting, not ideal conditions. I handled ambiguity, data sensitivity, and deep system-level repairs on a mixed Windows/Linux setup. It required:

* Critical thinking under pressure
* Command-line rescue skills
* Clear documentation and reproducible steps

Perfect preparation for a cybersecurity, sysadmin, or SOC role where systems don’t always behave predictably.

---

> *"It wasn’t recovery. It was revelation. From EFI chaos to a clean dual-boot desktop — I built this Cold Lab with sweat, syntax, and a stubborn refusal to quit."*
