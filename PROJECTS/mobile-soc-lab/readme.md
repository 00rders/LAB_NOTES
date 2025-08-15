# 🛰️ Mobile SOC Lab — Blueprint for a Lightweight Blue Team Environment

This folder is a living blueprint for building a portable, SOC-ready lab environment.  
Designed to run on minimal Linux setups (e.g., i3 window manager, Micro editor), this lab acts as a lightweight incident response station for real-world SOC tasks.

---

## 🎯 Purpose

The **Mobile SOC Lab** enables on-the-go analysts and students to:

- Simulate alert triage using real logs and Splunk
- Practice detection and investigation workflows
- Deploy lightweight tools for field diagnostics
- Work across remote systems via SSH or VPN (Tailscale)
- Log and test incident workflows in a reproducible way

---

## 📦 Current Components

| File                     | Purpose                                                   |
| ------------------------ | --------------------------------------------------------- |
| `linux-home-repair.md`   | Blueprint for recovering and securing compromised Linux systems |
| `ssh-nas-access.md`      | Step-by-step: Tailscale setup and secure remote NAS access |

---

## 🔮 Roadmap

Planned expansions:

- ✅ Add **Splunk log ingestion and parsing scripts**
- ✅ Build **log-based triage methodologies** (alert > log > IOC > action)
- ✅ Curate real-world **test data and incident scenarios**
- ✅ Embed SOC cheat sheets and detection patterns
- ✅ Integrate with `SOC_TRACK` to run modular simulations

---

> All personal dotfiles, terminal banners, and CLI customizations have been moved to [`founder-notes`](https://github.com/00rders/founder-notes) for separation of system config from SOC tooling.
