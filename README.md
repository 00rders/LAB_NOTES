# 🧠 Cybersecurity Lab Notes — Blue Team Simulations & Real-World Growth

> 📄 **[View My Resume](./RESUME.md)** — **Full breakdown of my self-taught journey, skills, projects, and learning system.**

> ⚠️ **For Educational Use Only**
> This repository is my cybersecurity learning ground — a version-controlled environment where I built, broke, and rebuilt real systems.
> All work is performed in **legally controlled labs** and never touches unauthorized infrastructure. I don’t condone illegal access — this is strictly hands-on learning with purpose.

---

## 📁 Lab Structure

This repo is divided into three major tracks:

| Folder            | Description                                                                 |
| ----------------- | --------------------------------------------------------------------------- |
| `SOC_TRACK/`      | Alert triage simulations, MITRE-tagged reports, and SOC-style exercises     |
| `PERSONAL_STUDY/` | My structured self-study roadmap — Linux, Networking, OPSEC, SIEM, and more |
| `PROJECTS/`       | Custom tooling and lab builds — IRIS, automation scripts, NAS setup         |

---

## 🚨 SOC\_TRACK — Job-Aligned Workflows

This is where I simulate SOC analyst tasks using real logs or handcrafted alerts:

* Parsing logs and enriching IOCs (WHOIS, VirusTotal, etc.)
* MITRE ATT\&CK mapping for detection coverage
* Triage narratives and markdown-based report writing
* Alert decision-making practice using ambiguous signals
* Powered by **IRIS**, my local SOC assistant (private for now)

> Built to demonstrate how I triage, investigate, and communicate like an analyst.

---

## 🛠️ Personal Study — Structured Learning by Phase

This folder is my long-term roadmap. Each phase is a full learning module with:

* What I learned
* What I built
* Why it matters in real roles

### 📚 Current Structure

* **Phase 1** — OPSEC & Lab Setup (ProtonMail, air-gap, snapshot workflows)
* **Phase 2** — Linux Essentials (permissions, navigation, shell commands)
* **Phase 3** — Networking Foundations (IP, NAT, segmentation, firewall labs)
* **Phase 4** — SIEM/SOC Concepts (log types, alerting logic, report writing)
* **Phase 5** — Offensive Basics (Nmap, enumeration, basic exploitation)
* **Phase 6–8** — Hardening, soft skills, resume polish, and job readiness

Each entry is written for both retention and reference — designed for job prep and future recall.

---

## 🔧 Custom Tools & Scripts

### _IRIS_ — SOC Copilot (Private for Now)

A CLI tool I designed to:

* Parse logs, extract IOCs, assess alert severity
* Enrich data from local or API sources
* Generate markdown reports with context and summaries
* Create end-of-shift logs to track analyst performance

_Code will be made public in future updates. For now, see `SOC_TRACK/` for its real outputs._


### `gitbackupnow.sh`

> Git bundle backup script to snapshot this entire lab to external storage

* Auto-discovers local repos
* Creates timestamped `.bundle` files
* Runs rotation logic to retain only latest copies
* Bash-compatible, GitHub-safe, and offline-capable

### **Git Commit Workflow (Custom Aliases)**

I use custom Git aliases to keep commits fast and frequent while working across multiple repos:

- `gadd` → `git add .`
- `gmessage` → `git commit -m "<message>"`
- `gpush` → `git push`

_These simplify version control in my CLI environments (Hot Lab and Cold Lab) and reinforce clean, consistent Git habits — critical for working across SOC projects and personal labs._

---

## 🤖 AI-Augmented Learning Workflow

Everything in this repo was built using a modern, AI-integrated workflow:

* I use ChatGPT as a **real-time assistant** — documenting while I build
* I pause to ask, reflect, and rewrite until concepts stick
* AI accelerates my work, but I control every command and decision
* Projects are hands-on first, with AI as a second brain — not a shortcut

> Want a deeper look? [Learn more here →](./README_AI.md)

---

## 📘 Philosophy

This repo isn’t just a portfolio. It’s a record of work — good, bad, real.

* Built in real lab environments (Kali VM, Linux boxes, remote NAS)
* Each `.md` file documents what happened, why it mattered, and what I learned
* Optimized for clarity, not fluff — every entry was written to be revisited

---

## 🙋 About Me

I’m `@00rders`, a self-taught security learner with a passion for systems, blue team defense, and process automation.

* Passed **CompTIA Security+** in 2025
* Built every tool, lab, and workflow from scratch
* Currently sprinting through SIEM and SOC-aligned skills to get job-ready

This repo is both my journey and my reference manual. Thanks for reading.
