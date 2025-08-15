# 🧠 PROJECTS – Personal Systems Lab

This folder documents real-world systems I’ve built to support cybersecurity training, personal infrastructure, and hands-on experimentation. Every project was created to solve a specific problem — from remote access to log analysis — and is fully integrated into my daily workflow.

This page serves as both a **blueprint for others** and a **snapshot of systems I actively use**.

---

## 🔐 [`iris/`](./iris)
**IRIS – Incident Response Intelligence System**  
A local-first, AI-powered SOC assistant that automates alert triage, log parsing, IOC enrichment, and markdown-based report generation. Built as a modular CLI pipeline with memory-governed components.

> *Build it if:* you want a private SOC copilot that logs your shift and helps you respond faster.  
> *Status:* `v1.0` foundation complete (soft-frozen)

---

## 💻 [`mobile-soc-lab/`](./mobile-soc-lab)
**Hot Lab – MacBook Cyber Terminal**  
A minimal Linux setup (EndeavourOS + i3) running on my MacBook for portable cybersecurity work. It handles red/blue team practice, Git workflows, and remote access to the NAS and IRIS environments over Tailscale + SSH.

> *Build it if:* you want a mobile lab that can operate anywhere, integrate with home infrastructure, and run VMs securely.

---

## 🗃️ [`nas-server/`](./nas-server)
**OpenMediaVault NAS – Storage + Cyber Hub**  
A GMKtec mini PC running OpenMediaVault with a 2TB SSD. Functions as a centralized storage hub for IRIS logs, GitHub backups, and lab data — while doubling as a secure remote-access node and Linux scripting box.

> *Build it if:* you want your own private server that stores, syncs, and backs up your cyber projects.

---

> Maintained by [`00rders`](https://github.com/00rders)  
> All systems are real, integrated, and used in production-like environments.
