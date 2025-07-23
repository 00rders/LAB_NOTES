# ColdLab Dual Boot (Linux + Windows): Installation & Debugging Walkthrough

This is a full walkthrough of how I set up EndeavourOS alongside Windows 10 on my desktop. What started as a standard dual-boot installation turned into the most technically difficult problem I’ve ever solved. It involved GRUB failures, kernel image issues, misdiagnosed bootloader errors, and lessons learned the hard way — including what happens when you ignore EFI warnings.

---

## 🧭 Goal

* Install EndeavourOS (KDE Plasma) next to my existing Windows 10 install
* Preserve all data and working Windows boot
* Build a long-term Linux environment for cybersecurity and development

---

## 🖥️ System Layout

* **nvme0n1** – Windows 10 OS (C:) with \~100MiB EFI partition
* **sda** – 1TB internal HDD, shrunk to reserve \~185GB for Linux (`/dev/sda2`)
* \**F:\** – External SSD holding GitHub projects and lab backups

---

## ⚙️ Final Setup (Working)

| Component           | Value                                  |
| ------------------- | -------------------------------------- |
| Linux Distro        | EndeavourOS (Arch-based)               |
| Desktop Environment | KDE Plasma (Mercury wallpaper)         |
| Bootloader          | GRUB (manually installed)              |
| Kernel Tool         | mkinitcpio (dracut removed)            |
| EFI Strategy        | Split-boot with corrected kernel paths |

---

## 🚧 Problems Encountered

### EFI Size Ignored & Initial Missteps

At the start, the installer warned me that my EFI partition (\~100MiB) was too small for Linux. I ignored it. That mistake spiraled into days of confusion. Initially, I thought GRUB wasn’t detecting my Linux install because only the Windows Boot Manager showed in `efibootmgr`. I assumed GRUB was misconfigured or missing essential boot entries.

This led me to try manually copying GRUB into the Microsoft EFI path to hijack the boot sequence. I also created a custom EndeavourOS manual boot entry, hoping to force the system to load the right kernel.

### Manual Boot Entry: Kernel Not Found

The custom GRUB entry looked correct, but every attempt failed with `kernel image not found`. This convinced me that GRUB was failing to detect my Linux partition — so I doubled down on troubleshooting GRUB config. But this was a red herring.

### Endless Loop: GRUB & Kernel Errors / Reinstalls 

I entered a frustrating cycle:

* Boot into EndeavourOS Live USB
* Mount root filesystem and EFI partition
* Chroot into the installed system
* Reinstall GRUB + Kernel
* Reinstall or regenerate kernel
* Reboot → still only Windows, or kernel panic, or `image not found`

Every time I rebuilt the kernel using `dracut`, it kept writing the kernel image to `/boot/efi` — which pointed to the tiny Windows EFI partition. That partition didn’t have space for a Linux kernel and initrd. Even though I had a separate `/boot` partition on `/dev/sda2`, `dracut` ignored it.

I thought GRUB was failing — but it was the kernel tool writing to the wrong place. A classic case of solving the wrong problem.

---

## 🧠 Final Fix (Step-by-Step)

Once I realized the real problem was how the kernel image was generated (not where GRUB pointed), the fix became clear:

1. **Remove dracut** – the default tool in EndeavourOS

   ```bash
   sudo pacman -Rns dracut
   ```

2. **Install mkinitcpio** – Arch’s traditional kernel image builder

   ```bash
   sudo pacman -S mkinitcpio
   ```

3. **Regenerate the kernel image**

   ```bash
   sudo mkinitcpio -P
   ```

   ✅ This wrote the kernel and initrd to `/boot`, not `/boot/efi`

4. **Reinstall GRUB manually**

   ```bash
   grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
   grub-mkconfig -o /boot/grub/grub.cfg
   ```

5. **Reboot → Success** 🎉
   KDE Plasma finally booted into a stable desktop.

---

## 🧠 Key Lessons

* **EFI Warnings Are Serious**: A 100MiB EFI partition isn’t enough for dual-boot. Resize or rebuild it if possible.
* **It Wasn’t GRUB**: I wasted hours trying to fix GRUB when the kernel image was the actual issue
* **Kernel Tools Matter**: `dracut` and `mkinitcpio` behave very differently — especially in where they write image files
* **Manual Recovery Is Real-World Practice**: I now know how to chroot, mount, inspect EFI paths, and rebuild kernels under pressure
* **Failing Forward**: The custom boot entry, GRUB path hijack, and trial/error cycle weren’t useless — each helped rule things out and gave me confidence debugging low-level boot issues

---

## 🌌 ColdLab Now

This system is now:

* My full-time Linux dev and cybersecurity workstation
* Riced with a custom KDE Plasma desktop
* Backed by Git, SSH keys, synced lab repos, and custom shell configs

---

## 📂 File Location

```
PERSONAL_STUDY/PROJECTS/COLD-LAB/coldlab-dualboot-tutorial.md
```

---

## 🔭 Next Step

Write a clean, troubleshooting and setup manual from this experience — something I can use years from now to recreate this environment with zero internet.

---

## 💬 Final Thoughts

This experience beat me up — but it gave me real, portable skill. I solved something that couldn’t be fixed by Googling a quick answer. It taught me to slow down, diagnose layer by layer, and validate every assumption. The system boots now, but the real win is everything I learned about EFI, GRUB, kernel generation, and what it actually takes to recover a broken Linux system.
