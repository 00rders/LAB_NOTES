# Cold Lab Dual-Boot Linux + Windows Install & Recovery Guide

> A step-by-step technical walkthrough of how I installed EndeavourOS (Arch-based) alongside Windows 10 on a single disk system with a restricted EFI partition. This guide documents the full dual-boot setup, GRUB bootloader recovery, and real-world troubleshooting of a broken install caused by OEM partitioning constraints and kernel image space issues.

---

## 🧠 Overview

* **System**: Custom Desktop (Cold Lab)
* **Goal**: Dual boot EndeavourOS + Windows 10 without breaking existing files
* **Installer**: EndeavourOS Live USB (Plasma Desktop)
* **Bootloader**: GRUB (manual setup)
* **Critical Problem**: Kernel install failed due to tiny 100MiB EFI partition (OEM default)
* **Solution**: Manual EFI boot split + switch from `dracut` to `mkinitcpio`

---

## ⚙️ Step 1: Initial Setup (Live USB)

1. Flash EndeavourOS ISO to USB
2. Boot into USB (disable Secure Boot in BIOS!)
3. Launch installer, choose manual partitioning
4. **Do NOT** format `/dev/nvme0n1p1` (Windows EFI)
5. Create:

   * `200GB ext4` on `/dev/sda2` (Linux root `/`)
   * Mount `/boot/efi` to `/dev/nvme0n1p1`

---

## 🧨 The Failure Point

After install:

* `linux` or `linux-headers` install fails with:

  ```
  error: no space left on device
  ```
* Kernel images were trying to be written to `/boot` inside EFI (100MiB) — not sustainable

---

## 🩺 Step 2: Manual Recovery (Live USB Rescue)

> This is the heart of the fix — make sure you follow carefully

### 🔍 1. Identify Partitions

```bash
lsblk -f
```

* `/dev/sda2` = Linux root (`/`)
* `/dev/nvme0n1p1` = EFI (100MiB, mount to `/boot/efi`)

### 🔧 2. Mount & Chroot

```bash
mount /dev/sda2 /mnt
mount /dev/nvme0n1p1 /mnt/boot/efi
arch-chroot /mnt
```

---

## 🧼 Step 3: Clean Boot Setup (Split /boot)

### ❌ Problem: All files going into 100MiB EFI

### ✅ Fix: Let `/boot` live in root `/`, mount only `/boot/efi` to EFI

Double check:

```bash
mount | grep boot
```

Should show:

```bash
/dev/sda2 on / type ext4
/dev/nvme0n1p1 on /boot/efi type vfat
```

---

## ⚙️ Step 4: Kernel + Bootloader Fix

### 1. Switch from `dracut` to `mkinitcpio`

```bash
pacman -Rdd kernel-install-for-dracut
pacman -S mkinitcpio
```

### 2. Reinstall Kernel Packages

```bash
pacman -S linux linux-headers
mkinitcpio -P
```

### 3. Reinstall GRUB

```bash
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
```

---

## ✅ Step 5: Reboot & Success

1. Exit chroot:

```bash
exit
umount -R /mnt
shutdown now
```

2. Remove USB
3. Boot: GRUB should now show "Arch Linux"
4. Login to CLI — KDE not installed yet

---

## 🎨 Step 6: KDE Plasma Desktop (Post-Boot)

> Needed for full visual desktop environment (Plasma/Mercury look)

```bash
pacman -S plasma kde-applications
```

Follow prompts (choose default options for now)

Enable SDDM (display manager):

```bash
systemctl enable sddm
reboot
```

You should now boot into full KDE Plasma desktop 🎉

---

## 🧠 Lessons Learned

* Never trust default EFI partition size (100MiB is too small for modern kernels)
* `dracut` was writing to EFI directly — switching to `mkinitcpio` respected the proper `/boot` structure
* Mounting `/boot` and `/boot/efi` correctly is crucial for GRUB and kernel
* Arch-based distros give you total control — and total responsibility

---

## 📂 File Location

Saved as: `PERSONAL_STUDY/PROJECTS/COLD-LAB/coldlab-dualboot-tutorial.md`

---

## 🧩 Future Enhancements

* Add ricing guide (animated toolbar, Git status bar)
* Automate partition/mount logic
* Script full recovery process with `archinstall`

