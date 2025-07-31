# 🖥️ Slow Laptop Troubleshooting — Internal Technician Reference

**Logged by:** (employee name) — (date_  
**Category:** Performance Issue / System Slowness  
**Resources Used:** Task Manager, Chrome Extensions, msconfig, Windows Updates, CrystalDiskInfo

---

## 🚩 Common Symptoms
- Long boot times  
- Chrome/Edge freezing or slow to load  
- Apps taking a long time to open  
- General lag or poor responsiveness  

---

## 🛠️ Tools & Resources
| Tool | Purpose |
|------|---------|
| **Task Manager** | Identify CPU/RAM/Disk usage bottlenecks |
| **Chrome Extension Manager** | Remove high-memory or suspicious extensions |
| **msconfig** | Disable unnecessary startup apps |
| **Task Scheduler** | Remove junk scheduled tasks |
| **Windows Update** | Apply performance/security patches |
| **CCleaner** (optional) | Clean temp files, streamline startup |
| **CrystalDiskInfo** | Diagnose HDD/SSD health |
| **Malwarebytes** | Scan if abnormal behavior is suspected |

---

## 🧠 Technician Tips
- Don’t jump straight to “it’s malware” — check RAM first.  
- Chrome + Teams is a common RAM overload combo (especially on 4GB machines).  
- Disk at 100% but low CPU → suspect HDD bottleneck.  
- Educate without lecturing — keep customer confident.  
- Always confirm important data before starting.

---

## 🔧 Step-by-Step Workflow

### ✅ Step 1: Ask the Right Questions
- When did the issue start?  
- What were you doing at the time?  
- Any recent downloads, pop-ups, or odd behavior?  
- What files/apps do you want preserved?  

### 🔍 Step 2: Open Task Manager (`Ctrl + Shift + Esc`)
| Resource | Red Flag | Action |
|----------|----------|--------|
| CPU | 90–100% | Identify top process → End Task if safe |
| Memory | 85%+ | Too many Chrome tabs/Teams → close/remove |
| Disk | 100% | Investigate for Windows update or HDD issue |
| Startup tab | High-impact apps | Disable non-essentials (Teams, OneDrive, etc) |

### 🧹 Step 3: Clean It Up
- Chrome → `chrome://extensions/` → remove junk add-ons  
- Run `msconfig` → disable unnecessary startup items  
- Clear temp files: `%temp%`, `prefetch`, `temp`  
- Task Scheduler → remove unknown jobs  

### 🔄 Step 4: Update + Restart
- Run Windows Update  
- Restart & retest  

---

## ✅ Success Checklist
- Startup apps cleaned  
- Browser extensions removed  
- Temp files cleared  
- Windows updated  
- Customer informed & educated  

---

## 💬 Customer-Friendly Script
> “Good news — no virus here. Your system was loading background apps like Teams and OneDrive every time it started, even when you weren’t using them. We disabled those so your computer runs smoother.”  

> “We also removed a couple of browser extensions that were hogging memory. All your files are safe. This kind of slowdown is common and easy to fix once we clean it up.”
