# Cold Lab Dual-Boot Master Log (Linux + Windows)

> **Summary:** This is the definitive walkthrough and debug log of how I set up EndeavourOS alongside Windows 10 on my desktop (Cold Lab). What started as a basic dual-boot installation turned into a multi-day technical challenge involving EFI limitations, kernel image generation errors, GRUB misconfigurations, and a complete Windows bootloader recovery. This document consolidates all key lessons, commands, and reflections into one power doc for future reference.

---

## 🧠 System Layout

| Component       | Description                             |
| --------------- | --------------------------------------- |
| **Windows**     | `/dev/nvme0n1p1` (100MiB EFI partition) |
| **Linux Root**  | `/dev/sda2` (185GiB ext4 partition)     |
| **Bootloader**  | GRUB (UEFI mode, manually installed)    |
| **Distro**      | EndeavourOS (Arch-based, KDE Plasma)    |
| **Kernel Tool** | Switched from `dracut` to `mkinitcpio`  |

---

## 📅 Timeline of Events

### 🔧 Part 1: EndeavourOS Installation & Linux Boot Fix

#### Phase 1 – Initial Install

* Installed EndeavourOS using manual partitioning.
* Reused the existing 100MiB Windows EFI partition. (Ignored warning stating this could cause problems)
* Created a 200GiB partition on `/dev/sda2` for Linux root.

#### Phase 2 – Boot Failure & Wrong Assumptions

* GRUB installed, but Linux wouldn’t boot.
* Spent hours regenerating GRUB, reinstalling kernel, and tweaking boot entries.
* Created a manual GRUB entry — kept getting `kernel image not found` errors.
* Assumed GRUB was misconfigured.

➡️ **Missed Insight:** Kernel images weren’t being generated due to EFI space constraints.

#### Phase 3 – Mount Point Correction (Split Boot Configuration)

* This phase marked the turning point where we transitioned from a single shared EFI setup to a proper split-boot configuration.
* Discovered that `/boot` was mounted to the 100MiB EFI partition (too small for kernel/image files).
* Implemented the correct layout for UEFI systems:

  * `/boot` mounted to `/dev/sda2` (Linux root partition)
  * `/boot/efi` mounted to `/dev/nvme0n1p1` (ESP)
* This separation allowed Linux to store its kernel and initramfs files on its own partition without space issues.

#### Phase 4 – GRUB Hijack Attempt

* Before addressing the kernel generation issue, we attempted a GRUB hijack to boot into Linux by default.
* Replaced `/boot/efi/EFI/Microsoft/Boot/bootmgfw.efi` with GRUB in an attempt to hijack the Windows boot path.
* Result: Linux booted, but Windows became unbootable from the GRUB menu.

➡️ This prematurely introduced a new problem — Windows bootloader damage — before the Linux boot pipeline was fully working.

#### Phase 5 – Init Tool Conflict

* Kernel still wouldn't build properly after the mount correction / GRUB hijack.
* Found out EndeavourOS used `dracut` instead of `mkinitcpio`.
* `dracut` wrote kernel files to `/boot/efi`, ignoring our corrected `/boot` mount.
* Fixed with:

  ```bash
  sudo pacman -Rns dracut
  sudo pacman -S mkinitcpio
  sudo mkinitcpio -P
  ```

✅ Kernel and initrd now generated in `/boot`, allowing GRUB to function properly.

---

### 🪟 Part 2: Windows Bootloader Recovery

#### Phase 6 – Restoring Windows Boot Entry

* After the GRUB hijack broke Windows booting, we needed to restore the original bootloader.
* To do that, we had to boot into the Windows Recovery Environment (WinRE) from a USB stick.

**Steps:**

1. From Linux, we downloaded the official Windows 10 ISO using `aria2c` or a browser:

   ```bash
   aria2c https://software-download.microsoft.com/...
   ```

2. Instead of WoeUSB, we opted to use **Ventoy** to create a multiboot recovery USB drive:

   * We downloaded Ventoy from the official site and extracted it.
   * Installed Ventoy to a spare USB drive:

     ```bash
     sudo ./Ventoy2Disk.sh -i /dev/sdX
     ```
   * Simply copied the downloaded `Win10.iso` to the USB drive (no flashing needed).
   * Ventoy detected and booted the ISO seamlessly during boot.

3. Booted into the USB via BIOS/UEFI boot menu.

4. Selected **Repair your computer → Troubleshoot → Command Prompt** in the Windows Recovery interface.

5. Repaired the EFI boot entry manually:

   ```bash
   diskpart
   list volume
   select volume X  # EFI partition
   assign letter=X
   exit

   bcdboot C:\Windows /s X: /f UEFI
   ```

✅ Windows bootloader restored. GRUB continued to boot Linux. Both OSes were now cleanly bootable.

---

## 🛠 Final Setup (Post-Fix)

| Component           | Value                                |
| ------------------- | ------------------------------------ |
| Linux Distro        | EndeavourOS (KDE Plasma)             |
| Desktop Environment | KDE Plasma (customized)              |
| Bootloader          | GRUB (manual install)                |
| Kernel Tool         | mkinitcpio (dracut removed)          |
| EFI Strategy        | Split-boot (`/boot` and `/boot/efi`) |

---

## 🧠 Key Lessons Learned

* **EFI Warnings Are Serious**: 100MiB is not enough for shared EFI + kernel image storage.
* **Kernel Tools Matter**: `dracut` vs. `mkinitcpio` changes where images get written.
* **Don’t Trust GRUB Alone**: Check that actual kernel + initrd files exist in `/boot`.
* **Chroot Skills Are Essential**: Know how to mount, chroot, regenerate configs, and recover from a Live USB.
* **GRUB Hijack Is Risky**: Don’t overwrite Windows boot paths without a recovery plan.
* **Failing Forward Is Valuable**: Every misstep added to my confidence and real-world Linux skill.
* **Ventoy is Invaluable**: For quick ISO booting without flashing, Ventoy makes recovery much more flexible.

---

## ✅ Final Result

* EndeavourOS + Windows 10 dual boot working flawlessly
* Stable GRUB menu with both OSes bootable
* No data loss
* Full system recovered and documented

## 💬 Final Reflection

This became the most technically demanding recovery I’ve done to date. It wasn’t just about typing commands — it was about learning to slow down, test assumptions, and understand how EFI, GRUB, kernel tooling, and systemd interact on a real machine. The fix wasn’t just one command — it was a system-level investigation.

If I ever have to rebuild this lab from scratch or help someone recover a broken dual-boot, I’ll know exactly where to start.

🧠 Real skill was earned here.

---
