# ✅ SOC Alert Triage Checklist

> A step-by-step checklist for analyzing security alerts and determining next actions during live triage.

---

## 📥 1. Intake & Initial Review

- [ ] Confirm **alert source** (SIEM, EDR, custom script, etc.)
- [ ] Check **timestamp** for recency
- [ ] Identify affected **host, user, and IP**
- [ ] Note the **alert category** (e.g., malware, login anomaly, suspicious process)

---

## 🔍 2. Enrichment & Context

- [ ] Pull associated **log entries** (from EDR, firewall, system logs)
- [ ] Run **WHOIS** / **GeoIP** on external IPs
- [ ] Check asset tagging (e.g., is host high-value or domain controller?)
- [ ] Look up hashes/IPs in threat intel tools (e.g., VirusTotal, AbuseIPDB)
- [ ] Review user behavior history (first-time login, country mismatch, etc.)
- [ ] Cross-reference against known false positives or tuning notes

---

## ⚖️ 3. Assessment

- [ ] Determine if the alert is:
  - [ ] ✅ Benign / Expected
  - [ ] ⚠️ Suspicious / Needs investigation
  - [ ] ❌ Confirmed malicious / Escalate

- [ ] Apply **MITRE technique mapping** if possible
- [ ] Note any **related alerts or patterns** across time or assets

---

## 🚨 4. Escalation & Response

- [ ] Document decision and justification in ticket or shift log
- [ ] If escalation is needed:
  - [ ] Notify appropriate team (IR, Tier 2, etc.)
  - [ ] Contain asset or user if applicable
  - [ ] Collect forensic artifacts (memory, disk, process tree, etc.)

---

## 🧾 5. Reporting

- [ ] Add alert outcome to **shift report**
- [ ] Log any new IOCs or TTPs discovered
- [ ] Note detection gaps or response delays
- [ ] Flag for tuning or rule update if needed

---

### 🧠 Tips for Effective Triage

- Don’t chase low-fidelity noise; trust enrichment steps
- Prioritize alerts involving:
  - Domain controllers
  - Lateral movement signs
  - Unusual login behavior
  - Malware detections with execution

---

### 🤖 IRIS Integration Ideas

- Auto-fill checklist based on alert log fields
- Score alert severity and suggest MITRE techniques
- Maintain memory of previous alert decisions to reduce redundancy
- Include checklist responses in auto-generated report

