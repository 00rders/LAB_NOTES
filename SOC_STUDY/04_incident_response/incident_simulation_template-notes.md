# 🧪 Incident Simulation Template

> Use this template to document a full-cycle simulated security incident from alert to resolution. Ideal for personal labs, IRIS module testing, or job portfolio walkthroughs.

---

## 🧠 Simulation Overview

- **Title:** *(e.g., Suspicious Lateral Movement via PsExec)*
- **Sim Type:** `Phishing | Malware | Recon | C2 | Lateral Movement | Exfiltration`
- **Tools Involved:** *(e.g., Splunk, Zeek, Wireshark, EDR, IRIS pipeline)*
- **MITRE Techniques:** *(e.g., T1569.002 – Service Execution)*

---

## 📡 1. Initial Alert

- **Source:** *(e.g., SIEM, email gateway, EDR)*
- **Alert Details:**  
  ```json
  {
    "event_type": "brute_force",
    "source_ip": "185.101.1.10",
    "username": "jdoe",
    "timestamp": "2025-07-XXTXX:XX:XXZ"
  }
```
### 🔍 2. Triage & Enrichment

- **Assets Involved:** (e.g., HR-LAPTOP-23, AD-01)  
- **User/Account:** (e.g., jdoe, svc-backup)  
- **Enrichment Actions:**
  - WHOIS lookup: (result)
  - VirusTotal hash: (score/result)
  - Host role/context: (e.g., domain joined, high-value asset)

---

### 🧪 3. Investigation

- **Related Logs Pulled:**
  - Firewall: (summary)
  - Auth logs: (summary)
  - EDR: (summary)  
- **Correlated Activity:** (e.g., suspicious PowerShell within 5 min)

---

### 🧨 4. Outcome & Response

- **Final Verdict:**  
  ✅ Benign  
  ⚠️ Suspicious  
  ❌ Confirmed Malicious

- **Response Taken:**
  - User account disabled: yes/no
  - Host isolated: yes/no
  - Ticket escalated to IR team: yes/no
  - Artifacts collected: yes/no

---

### 🧾 5. Reporting

- **Summary Paragraph:**  
  (Narrative of what happened and why it matters)

- **Lessons Learned / Detection Gaps:**  
  (e.g., no alert for lateral movement from this subnet)

- **Tuning Recommendations:**  
  (e.g., increase failed login detection sensitivity on DCs)

---

### 🧠 IRIS Notes (if used)

- Parsed log: ✅  
- Triage rank: (e.g., 8/10 high severity)  
- Auto-generated markdown report: ✅  
- Modules used: `log_parser`, `alert_triage`, `ioc_enricher`, `report_writer`

---

### 📁 File Structure (optional)

```
SOC_STUDY/
└── simulated_incidents/
    └── suspicious_psexec/
        ├── raw_alert.json
        ├── parsed_alert.json
        ├── enriched_output.json
        ├── incident_simulation_walkthrough.md
```

> ✍️ Customize this file per incident and include screenshots, logs, or IRIS output for credibility when showcasing in interviews or portfolios.

