# 🧠 Cybersecurity Lab Notes — Blue Team Simulations & Real-World Growth

> **For Educational Use Only**  
This repository is my cybersecurity learning ground — a version-controlled environment where I built, broke, and rebuilt real systems.  
All work is performed in **legally controlled labs** and never touches unauthorized infrastructure. I don’t condone illegal access — this is strictly hands-on learning with purpose.

---

## 📁 Lab Structure

This repo is divided into three major tracks:

| Folder             | Description                                                                 |
|--------------------|-----------------------------------------------------------------------------|
| `SOC_TRACK/`       | Realistic alert triage drills, MITRE-tagged reports, and analyst-style workflows |
| `PERSONAL_STUDY/`  | Structured learning phases (Linux, Networking, OPSEC, etc.) — fully hands-on |
| `PROJECTS/`        | Custom tooling and builds (e.g., IRIS SOC Assistant, backup automation, NAS lab) |

---

## 🚨 SOC_TRACK — Job-Aligned Workflows

This is where I simulate real SOC analyst tasks using alerts I created or modified myself:

- Parsing and enriching logs (WHOIS, VT, IPs, usernames)
- Mapping to MITRE ATT&CK tactics and techniques
- Writing markdown-style incident reports
- Practicing decision-making in ambiguous scenarios
- Optional: Running alerts through **IRIS**, my local CLI SOC assistant

> I built these to demonstrate how I **triage, think, and communicate** like someone already on the job.

---

## 🧠 IRIS — Custom SOC Assistant (Private for Now)

Many `SOC_TRACK/` files were processed using **IRIS**, a tool I built that:

- Parses raw logs
- Scores alerts by severity, asset criticality, and IOC reputation
- Generates markdown reports
- Helps analysts get to the point faster

The code for IRIS isn’t public yet, but you can see its output in action throughout the lab.

---

## 🛠️ Personal Study — Modular Phases

My `PERSONAL_STUDY/` folder is where I documented each skill as I learned it:

- **Phase 1** — OPSEC & lab setup (air-gap workflows, snapshots, secure email)
- **Phase 2** — Linux (permissions, terminal workflows, Bash scripts)
- **Phase 3** — Networking (subnetting, private IPs, NAT labs)
- **Phase 4** — SIEM/SOC foundations (logs, use cases, alert types)
- **Phase 5** — Offensive techniques (scanning, enumeration, basic payloads)
- **Phase 6–8** — Advanced techniques, soft skills, and job readiness

Each module includes: what I did, what I learned, and a real-world example of where it matters.

---

## 🔧 Custom Tools

### `gitbackupnow.sh`
> Versioned `.bundle` backups for this entire lab

Built for offline safety, disaster recovery, or snapshot-style archiving — all automated via Bash.

### Git Commit Workflow (Custom Aliases)

I use custom Git aliases to keep commits fast and frequent while working across multiple repos:

- `gadd` → `git add .`
- `gmessage` → `git commit -m "<message>"`
- `gpush` → `git push`

These simplify version control in my CLI environments (Hot Lab and Cold Lab) and reinforce clean, consistent Git habits — critical for working across SOC projects and personal labs.

---

## 📘 Learning Philosophy

This repo is not just a portfolio — it’s a **record of real work**:

- Every module was built in a real lab (Kali VM, NAS server, isolated net)
- Every `.md` file documents *why* each command or step mattered
- No bloat, no fluff — just progression backed by sweat, mistakes, and iteration

---

## 🙋 About Me

I’m `@00rders`, a self-taught cybersecurity learner with a Security+ cert and a passion for the blue team side of defense.  
I specialize in thinking through problems, building practical tools, and documenting everything like it matters — because it does.

This lab was my starting point. 
