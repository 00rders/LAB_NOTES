# 06 — GitHub Backup Bundles (`gitbackupnow`)

## 🧩 Context

In pursuit of full operational security and independence from platform availability, I recognized an early need to **back up my cybersecurity lab repo outside of GitHub**. Version control is only as reliable as the availability of the platform it's hosted on — and GitHub, while powerful, is still a third-party service.

To address this, I built a custom script-based workflow that creates timestamped `.bundle` backups of my entire lab repository, stored locally on an external SSD. This workflow enables **offline restoration**, **air-gapped archiving**, and **long-term resilience** against GitHub outages, account issues, or repo deletion.

## 🔧 What I Built

### 🛠️ `gitbackupnow` — A Bash-Based Backup Workflow

- ✅ Writes to `~/.local/bin/` and integrates with `$PATH`
- ✅ Handles missing SSDs gracefully with user-facing errors
- ✅ Creates timestamped `.bundle` files using ISO 8601
- ✅ Leverages native `git bundle` for complete repo capture
- ✅ Stores backups securely to an external SSD

```bash
# Example output:
✔️ Created bundle: home-lab-backup-2025-06-21.bundle
```

### 📂 Files & Paths

- **Wrapper script path**: `~/.local/bin/gitbackupnow`
- **Target repo**: `/f/github-backup/home-lab/`
- **Destination for bundles**: `/f/github-backup/home-lab-backups/`

### 📁 Companion Repository

I created a new public repository to house this and future reusable automation tools.

🔗 [View on GitHub → `automation-and-tools`](https://github.com/00rders/automation-and-tools)  
Relevant file: `scripts/gitbackupnow.sh`

---

## 🧠 What I Learned

- How to use `git bundle` to create standalone backup files
- How to detect missing drives and handle failure conditions in Bash
- How to structure CLI tools that are reusable, testable, and path-aware
- How to register global CLI shortcuts using `$PATH` and custom script directories

---

## 🔒 Why It Matters

- **GitHub-Independent Recovery**: I can restore my full repo even if GitHub goes offline or my account is suspended.
- **Offline Access**: Bundles can be carried or transferred without internet access.
- **Redundancy**: Even if my VM or online repo is lost, my SSD holds a complete, restorable snapshot.
- **Operational Readiness**: This practice mirrors real-world DevSecOps behavior where tools and data must be resilient under constraints.

---

## 🧩 Real-World Application Scenario

> You’re preparing for a field assignment where you won’t have stable internet access.  
> You run `gitbackupnow`, plug your SSD into a fresh Kali VM on-site, and restore the bundle using:
>
> ```bash
> git clone home-lab-backup-YYYY-MM-DD.bundle my-lab
> ```
> ⚠️ **Note**: You must have Git installed on the target machine when restoring.  
> Use `git clone --bundle <filename>.bundle <folder>` for full commit history restoration.

---

✅ This wasn’t just a learning exercise — it was about making sure I don’t lose my work. The more I build, the more I care about having solid, practical systems in place.

