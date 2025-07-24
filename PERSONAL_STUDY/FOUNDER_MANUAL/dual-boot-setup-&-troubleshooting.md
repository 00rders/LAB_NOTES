# 🧠 FOUNDER MANUAL: Dual Boot + Bootloader Recovery Guide (Linux + Windows)

> A full offline troubleshooting and recovery manual for setting up and repairing dual-boot Linux + Windows systems. Originally developed from a real-world EndeavourOS + Windows 10 recovery scenario. This guide is distro-agnostic and written to help anyone rebuild or repair their system during EFI, GRUB, or kernel-related failures.

---

## 🔧 System Overview (Typical Layout)

* **EFI partition**: `/dev/nvme0n1p1` (100MiB FAT32, flagged as ESP)
* **Linux Root Partition**: `/dev/sdX#` (ext4, user-defined size)
* **Bootloader**: GRUB (UEFI mode)
* **Init System**: `mkinitcpio` recommended (especially for Arch-based distros)

---

## 📦 Correct Partition & Mount Layout

### Setup During Install

* Use **manual partitioning** during OS install
* Identify and reuse existing EFI partition (from Windows) — usually \~100MiB FAT32
* Create a dedicated ext4 partition for Linux

### Mount Commands (Post-Install or Rescue Mode)

```bash
# Mount Linux root
sudo mount /dev/sdX# /mnt

# Mount EFI partition *inside* boot
sudo mount /dev/nvme0n1p1 /mnt/boot/efi
```

> Never mount the EFI partition directly to `/boot`. This causes kernel install failures.

---

## ⚠️ What Goes Wrong (Common Pitfalls)

### Mistake: Mounting `/boot` to EFI

```bash
sudo mount /dev/nvme0n1p1 /mnt/boot  # ❌ WRONG
```

* Causes kernel files to fail writing (ESP too small)
* Kernel install fails silently or returns "no space left on device"
* GRUB boot entries will appear but not function

### Symptom

```bash
# GRUB loads but Linux doesn’t boot
# Kernel reinstall errors with:
no space left on device
```

---

## 🔁 Full Kernel + GRUB Reinstallation (Post-chroot)

### Step 1: Arch-chroot (or equivalent)

```bash
sudo arch-chroot /mnt
```

### Step 2: Reinstall Kernel and Headers (Arch-based example)

```bash
sudo pacman -S linux linux-headers
```

### Step 3: Replace init system if needed

```bash
sudo pacman -Rns dracut         # Remove dracut (if used)
sudo pacman -S mkinitcpio       # Install mkinitcpio
sudo mkinitcpio -P              # Generate initramfs
```

### Step 4: Install GRUB to EFI

```bash
sudo grub-install --target=x86_64-efi \
  --efi-directory=/boot/efi \
  --bootloader-id=GRUB
```

### Step 5: Generate GRUB Config

```bash
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

➡️ After rebooting, both Windows and Linux should appear in the GRUB menu.

---

## 🌀 GRUB Hijack (Advanced — Optional)

> Use only if GRUB doesn’t load automatically and you want Linux to override default boot.

### Replace Windows bootloader entry with GRUB

```bash
sudo cp /boot/efi/EFI/GRUB/grubx64.efi /boot/efi/EFI/Microsoft/Boot/bootmgfw.efi
```

* ⚠️ This **overwrites** Windows bootloader
* Be prepared to repair Windows boot with USB recovery if needed

---

## 💣 If Windows No Longer Boots

### Step 1: Create Windows Recovery USB

* Download ISO on another machine or Linux live environment
* Flash ISO to USB using tools like:

  * `balenaEtcher`, `dd`, or `popsicle`

### Step 2: Boot into Windows Recovery Environment

* Select:
  `Repair your computer → Troubleshoot → Advanced → Command Prompt`

### Step 3: Run Repair Commands

```bash
diskpart
list volume
select volume X     # Select the EFI partition
assign letter=X
exit

bcdboot C:\\Windows /s X: /f UEFI
```

➡️ This restores the Windows bootloader and retains all existing user data.

---

## ✅ Verification Checklist

| Task                                     | Status |
| ---------------------------------------- | ------ |
| EFI mounted to `/boot/efi`               | ✅      |
| Kernel + initrd files visible in `/boot` | ✅      |
| GRUB installed in UEFI mode              | ✅      |
| GRUB config correctly regenerated        | ✅      |
| Windows boot entry restored (if needed)  | ✅      |
| Data and partitions preserved            | ✅      |

---

## 🧠 Recovery Wisdom

* Kernel failure = check `/boot`, not just GRUB
* Init systems like `dracut` may break compatibility — `mkinitcpio` is safer
* EFI partition must never be overloaded with kernel files — 100MiB is typical size
* GRUB hijacks can force Linux priority but risk breaking Windows
* You can recover both OSes without reinstalling or losing data if patient

---

## 🔗 Useful Tools

* `gparted` — partition visualization
* `efibootmgr -v` — view and reorder boot entries
* `lsblk -f` — confirm mount structure
* `testdisk` — recover deleted partitions
* `micro`, `nano`, `vi` — edit configs from live environments

---

**If you’re reading this mid-crisis — breathe. You’re not alone. You’ve got this.**
