# 🛡️ SOC Triage Checklist Module Notes

## 🔢 Concept Primer

* Triage is the Tier 1 analyst's core responsibility: assess alerts quickly with limited context
* Checklist use ensures speed, consistency, and accurate decisions
* Alerts must be evaluated for credibility, risk, asset/user context, and required action
* Triage feeds Tier 2 investigations or closes false positives
* Clear documentation is essential for downstream clarity and auditability

---

## 📅 Triage Workflow

1. Read alert title and rule logic
2. Identify asset and user
3. Check alert source and confidence level
4. Determine if behavior is abnormal or known bad
5. Assess asset criticality
6. Check org-wide pattern or context
7. Decide: escalate or close
8. Document action with rationale

---

## 📝 Sample Triage Checklist

*

---

## 💼 Triage Example

**Alert:** Suspicious login via RDP
**Asset:** LAPTOP-DEV23
**User:** \[DEV-23]
**Time:** 14:06 UTC
**Source IP:** 185.24.39.101 (Ukraine)
**Decision:** Escalate — Critical user asset, off-hours access, foreign IP, RDP method

---

## 🔧 Tier 1 Playbook Draft (Suspicious Executable Download)

```markdown
### ⚡ Triage Playbook: Suspicious Executable Download

- [ ] Check alert source (e.g., Defender, EDR)
- [ ] Determine if software is known malicious → escalate if confirmed
- [ ] If not known: validate filename + hash → escalate if integrity fails
- [ ] Confirm whether file was executed or only downloaded
- [ ] Check for similar detections across the org → escalate if widespread
```

---

## 🔹 Operational Realities

* SOC Tier 1 is fast-paced and volume-heavy
* Repetition and structure = better triage outcomes
* Checklists reduce escalation noise and missed threats
* Triage notes feed incident reports and audit trails

---

## 📌 Common Triage Mistakes & Fixes

| Mistake                                      | Fix                                          |
| -------------------------------------------- | -------------------------------------------- |
| Escalating without enough context            | Add asset, user, action, and alert source    |
| Ignoring recurring low-severity alerts       | Check for patterns or campaign activity      |
| Assuming user intent                         | Confirm with behavior logs or ticket history |
| Closing based on filename only               | Always verify hash or behavior               |
| Escalating before checking asset criticality | Use CMDB or ask Tier 2                       |
| Missing alert correlations                   | Scan SIEM for related events in time window  |

---
