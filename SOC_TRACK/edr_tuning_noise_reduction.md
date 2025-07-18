# 🧹 EDR Tuning & Noise Reduction

## 📌 Scenario
Your SOC team is overwhelmed by low-fidelity alerts from the EDR platform — mostly benign PowerShell activity from IT automation tools and repetitive detections from known admin behavior. You’ve been tasked with reducing noise **without suppressing real threats**.

## 🔍 Symptoms of Poor Tuning
- Daily alert volume exceeds triage capacity
- High false positive rate (FP > 80%)
- Frequent alert fatigue among analysts
- Alert rules triggered by known-good tools (e.g., PDQ, RMM)

## 🛠️ Tuning Actions
| Action | Example |
|--------|---------|
| **Whitelist safe hashes/scripts** | Allow IT automation scripts that trigger PowerShell alerts |
| **Suppress known-good behavior** | Suppress alerts from `\\fileserver\deploy.ps1` run by admin accounts |
| **Scope alerts by asset group** | Exclude dev/test VMs from prod rules |
| **Adjust thresholds or frequency** | Alert only on repeated command execution, not single instance |
| **Customize alert logic** | Add parent process conditions to reduce noise |

## ⚖️ Do *Not* Suppress If...
- Alerts include unusual child process behavior
- Alert frequency spikes unexpectedly
- The context differs from expected usage (e.g., wrong time, wrong user)

## 🧠 MITRE Mapping (Contextual Tuning)
- `T1059` Command and Scripting Interpreter
- `T1203` Exploitation for Client Execution (distinguish from patch testing)
- `T1566.001` Phishing Attachments (flag when part of user behavior)

---

## 🎯 Before vs After Metrics (Track Impact)
| Metric        | Before | After |
|---------------|--------|-------|
| Avg. daily alerts | 300    | 110   |
| False Positive Rate | 82%    | 30%   |
| Mean Triage Time | 9 min  | 4 min |

## 📋 Tuning Checklist
- [ ] Inventor
