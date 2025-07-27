# 🖥️ Slow Laptop Troubleshooting — Internal Technician Reference

> 📂 Location: `cybersec-lab-notes/personal_study/projects/geek-squad-binder/slow_pc_troubleshooting.md`  
> 🗓️ Logged by: **Julian Smith** — 2025-07-27  
> 🏷️ Category: Performance Issue / System Slowness  
> 🔗 Resources Used: Task Manager, Chrome Extensions, `msconfig`, Windows Updates, CrystalDiskInfo

---

## 🚩 COMMON SYMPTOMS
- Long boot times
- Chrome/Edge freezing or slow to load
- Applications taking forever to open
- General lag or poor responsiveness

---

## 🛠️ POTENTIAL TOOLS & RESOURCES
| Tool | Purpose |
|------|---------|
| **Task Manager** | Identify CPU/RAM/Disk usage bottlenecks |
| **Chrome Extension Manager** | Remove bloatware and high-memory extensions |
| **`msconfig`** | Disable unnecessary startup apps |
| **Task Scheduler** | Remove junk scheduled tasks |
| **Windows Update** | Ensure performance patches applied |
| **CCleaner** (optional) | Clean temp files, streamline startup |
| **CrystalDiskInfo** | Diagnose aging or failing HDDs |
| **Malwarebytes** | Check for malware if system behavior is abnormal |

---

## 🧠 TECHNICIAN TIPS
- Don’t assume malware — check RAM first
- Chrome + Teams is a common RAM overload combo on low-spec machines (4GB or less)
- If Disk is 100% and CPU is low → suspect HDD bottleneck
- Educate without lecturing — make the customer feel smart
- Always ask what data is important to preserve before starting

---

## 🔧 STEP-BY-STEP WORKFLOW

### ✅ Step 1: Ask the Right Questions
- When did the issue begin?
- What were you doing when it started?
- Any recent downloads, popups, or strange activity?
- What’s important to you on the device (docs, pictures, etc)?

### 🔍 Step 2: Open Task Manager (`Ctrl + Shift + Esc`)
Check the following:
| Resource | Red Flag | What to Do |
|----------|----------|-------------|
| CPU | 90–100% | Identify top processes → End Task if safe |
| Memory | 85%+ | Chrome tabs? Microsoft Teams? Remove excess |
| Disk | 100% | Windows update, old HDD — investigate further |
| Startup tab | High-impact apps | Disable non-essentials (Teams, OneDrive, etc) |

### 🧹 Step 3: Clean It Up
- Open Chrome → `chrome://extensions/`
  - Remove any coupon tools, PDF converters, or sketchy add-ons
- Run `msconfig` → disable unnecessary startup items
- Clear temp files: `Run > %temp%`, `prefetch`, `temp`
- Open Task Scheduler → remove unknown scheduled tasks

### 🔄 Step 4: Update + Restart
- Run Windows Update fully
- Restart device
- Retest slowness symptoms post-cleanup

---

## ✅ SUCCESS CHECKLIST
- [ ] Startup apps cleaned
- [ ] Browser extensions removed
- [ ] Temp files cleared
- [ ] System updated
- [ ] Customer informed and educated

---

## 💬 CUSTOMER-FRIENDLY EXPLANATION TEMPLATE
> “Good news — no virus here. What we found is your system was loading a bunch of background apps when it turned on, like Microsoft Teams and OneDrive, even if you weren’t using them. We disabled those so your computer has more breathing room.”

> “We also found a browser extension or two that might’ve been hogging memory, and once those were removed your system started running much smoother. All your files are safe — nothing was deleted.”

> “Next time, just be cautious about what extensions or apps you install. This kind of slowdown is super common and very fixable.”

---
