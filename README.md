# 🧠 Cybersecurity Lab Notes — Blue Team Simulations & Personal Learning Journey

> **For Educational Use Only**  
This repository documents my personal cybersecurity lab — a hands-on, legally controlled environment for learning ethical hacking, blue team operations, and system defense.

Everything here is built and tested in isolated or authorized environments. I do not condone or practice unauthorized system access. Always operate within the law.

---

## 🧭 Repo Structure

This lab is organized into two main tracks:

| Folder             | Description                                                                 |
|--------------------|-----------------------------------------------------------------------------|
| `SOC_TRACK/`       | Real-world alert simulations, incident walkthroughs, and MITRE-tagged triage |
| `PERSONAL_STUDY/`  | Modular learning phases: Linux, OPSEC, Networking, Pentesting, and more      |
| `projects/`        | Experimental tooling, scripts, and system builds (e.g., IRIS, backup tools)  |
| `ai-playbook/`     | AI workflows and prompt engineering experiments                              |
| `restructure_plan.md` | Repo cleanup and optimization roadmap                                     |

---

## 🚨 What’s in `SOC_TRACK/`?

Each alert simulation mimics a real SOC analyst workflow:
- Triage tags and enrichment actions (WHOIS, VT, internal logs)
- User & asset context
- MITRE ATT&CK technique mapping
- Final incident verdict + response actions
- IRIS CLI output and auto-generated markdown reports when used

> These are designed to demonstrate not just what I know — but how I think in real-world scenarios.

---

## 🧠 IRIS Integration (Optional Tooling)

This lab is supported by **IRIS**, my local-first SOC assistant project that automates:
- Log parsing
- Alert triage
- IOC enrichment
- Report generation

IRIS modules are shown in action throughout `SOC_TRACK/`, but the full AI system is still private for now.

---

## 🔧 Tools I’ve Built

### `gitbackupnow.sh`
> *Versioned, portable repo backup system*

Bash script to create `.bundle` Git backups of this lab and others. Ideal for disaster recovery, system rebuilds, or offline work.

---

## 📘 Learning Philosophy

This repo is not a showcase of perfection — it’s a **living, version-controlled journal** of real growth:

- Each `.md` file came from doing, breaking, and rebuilding — not copying
- Every command was typed and tested in a live lab (Kali VM, OpenMediaVault NAS, custom network)
- While the folders are organized for clarity, the journey was messy, intense, and real

---

## 💬 Who Built This?

I'm `@00rders`, a self-taught cybersecurity learner with real hands-on skills and a Security+ certification.  
My mission is to land a job where I can keep growing, contribute meaningfully, and never stop learning.

---
