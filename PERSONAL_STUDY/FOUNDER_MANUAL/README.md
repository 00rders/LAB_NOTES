# 🧠 hotgit-backup — Git Repo Storage for 00rders

> Centralized folder for GitHub repos used across all portable systems, SOC automation tools, and cybersecurity lab documentation. Enables version-controlled workflows from mobile terminals like the Hot Lab (MacBook Air).

---

## 📁 Folder Structure

```
hotgit-backup/
├── automation-and-tools/      # Scripts like gitbackupnow, gitstatus, pushall
├── cybersec-lab-notes/        # Full documentation of personal cybersecurity journey
├── ai-playbook/               # Prompt engineering strategies + workflow automation
└── iris/                      # IRIS: AI-powered SOC assistant (core system repo)
```

---

## 🔐 Access Method

This repo is cloned and synced using **SSH authentication over port 443**:

```bash
git@github.com:00rders/REPO_NAME.git
```

Uses dedicated key: `~/.ssh/gitops_ed25519` with secure passphrase.

---

## 🛠️ Common Commands

```bash
# View sync status
./gitstatus.sh

# Push all changes across all sub-repos
./gitpushall.sh

# Check commit status for each repo
./gitcheck.sh
```

> Each of these tools lives in `automation-and-tools/` and is executable from anywhere once `~/.local/bin` is configured.

---

## 🧠 Why It Matters

This setup allows for:

* Safe GitOps workflows from mobile or offline terminals
* Quick cloning of all repos to new systems
* SSH-authenticated, credential-less Git usage
* Full ecosystem control from one command line entry point

The Hot Git backup is your **personal GitHub portal on any machine you touch**.

---

## 📎 Reference

Stored in: `~/hotgit-backup/` on all systems where portable terminal workflows are enabled.

Built and maintained from: `MacBook Hot Lab` (lab-admin\@00rders)
