# Cold Lab Dual-Boot Recovery & Bootloader Debug Log

> **Summary:** This is a full breakdown of the dual-boot rescue process I underwent on my desktop system (Cold Lab), where I installed EndeavourOS alongside Windows 10 on a single drive setup. What began as a straightforward Linux install turned into a multi-day crisis involving EFI partition, bootloader configuration, and kernel installation failures. This document captures the timeline, what went wrong, what we originally misunderstood, and how the issue was finally resolved.

---

## 🧠 System Overview

* **Windows Drive:** `/dev/nvme0n1p1` (100MiB EFI partition)
* **Linux Partition:** `/dev/sda2` (185GiB ext4 for EndeavourOS)
* **Bootloader:** GRUB (UEFI mode)
* **Installer:** EndeavourOS (Manual Partitioning)

---

## 📅 Timeline of Events

### Phase 1 – Initial Setup

* Installed EndeavourOS manually
* Chose to reuse the existing 100MiB Windows EFI partition instead of creating a new one
* Created `/dev/sda2` as a dedicated 185GiB Linux partition

### Phase 2 – Boot Failure & Wrong Diagnosis

* GRUB menu appeared, but Linux wouldn’t boot
* Attempted several fixes:

  * Reinstalling GRUB
  * Regenerating `grub.cfg`
  * Manually creating custom GRUB entries
* Suspected wrong mount points or broken config
* Spent nearly an entire day trapped in this loop

➡️ **What we missed:** Kernel images were never actually generated due to the EFI partition being too small (100MiB)

### Phase 3 – Realization & Mount Correction

* Finally traced the real issue:

  * EndeavourOS was trying to store kernel files in `/boot`,
  * But `/boot` was mounted to the **small EFI partition**, which lacked the space
* Solution:

  * Set up a **split boot layout**:

    * `/boot` on `/dev/sda2` (Linux root)
    * `/boot/efi` on `/dev/nvme0n1p1` (ESP)

### Phase 4 – Init System Conflict: `dracut` vs `mkinitcpio`

* Kernel still wouldn’t build after fixing mount points
* Discovered EndeavourOS was using **`dracut`** for initramfs
* `dracut` was not generating the boot images properly in our setup
* Uninstalled `dracut`, replaced it with **`mkinitcpio`**
* Ran:

  ```bash
  sudo mkinitcpio -P
  ```
* This finally generated working kernel + initramfs in `/boot`

➡️ GRUB now had valid image files to boot into

### Phase 5 – GRUB Hijack & Windows Fallout

* In an attempt to boot Linux by default, we **hijacked the Windows EFI boot entry**

  * Installed GRUB directly to `/boot/efi/EFI/Microsoft/Boot/bootmgfw.efi`
  * Overwrote the original Windows bootloader
* Result: Windows would no longer boot from GRUB

➡️ This opened up a new challenge: fully recovering the Windows bootloader

* Using EndeavourOS, we downloaded a Windows 10 ISO and flashed it to a fresh USB drive
* Booted into the **Windows Recovery Environment** via the live USB
* Opened the Recovery Console and manually repaired the bootloader:

  ```bash
  diskpart
  list volume
  select volume X (EFI)
  assign letter=X
  exit

  bcdboot C:\Windows /s X: /f UEFI
  ```
* This successfully restored Windows' boot entry and preserved all existing data

➡️ Both Windows and Linux bootable again

---

## 🧠 Key Lessons Learned

* **EFI partition size matters**: 100MiB is often not enough when `/boot` is incorrectly mounted to ESP
* **Use `/boot` and `/boot/efi` correctly** in UEFI setups
* **`mkinitcpio` > `dracut`** for standard Arch-based init compatibility
* **GRUB hijack is risky** and can break Windows unless done with full backup of bootloader
* Always check if kernel + initrd images actually exist in `/boot` before debugging GRUB endlessly
* Having access to a secondary system or working Linux install can be critical for emergency rescue work

---

## ✅ Final Result

* Clean dual-boot system (EndeavourOS + Windows)
* GRUB menu boots both OSes successfully
* No data loss on either OS
* Entire system revived without full reinstall

