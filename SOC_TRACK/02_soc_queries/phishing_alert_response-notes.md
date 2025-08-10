# 🎣 Phishing Alert Response — Simulated Walkthrough

---

## 🚨 1. Alert Summary

- **Detection Source:** Microsoft Defender for Office 365  
- **Alert Type:** Suspicious Email with Malicious Link  
- **Triage Tags:** `phishing`, `url_obfuscation`, `first-time_sender`  
- **Alert Time:** 2025-07-18T10:03:00Z  

---

## 🔍 2. Triage & Enrichment

- **Targeted User:** jsmith@company.com  
- **Sender Domain:** secure-docs-mail[.]com  
- **Email Subject:** “Important HR Policy Update”  
- **Email Link:** `hxxps://secure-docs-mail[.]com/hr-policies-update.pdf`  
- **WHOIS Info:** Domain registered 3 days ago, offshore registrar  
- **VirusTotal:** URL flagged by 7/70 engines  
- **Host Context:** User endpoint is domain-joined, low privilege

---

## 🧪 3. Investigation

- **Email Headers Analyzed:** Show spoofed internal sender  
- **Firewall Logs:** No outbound connection to malicious IP  
- **Authentication Logs:** No successful logins from external IPs  
- **User Confirmation:** Target did not click the link  

---

## 🧨 4. Outcome & Response

- **Final Verdict:** ⚠️ **Suspicious**  
- **Actions Taken:**
  - [x] Quarantined email across all recipients  
  - [x] Blocked domain via email gateway  
  - [ ] No account reset needed  
  - [ ] No endpoint isolation required

---

## 🧾 5. Reporting

**Summary:**  
An attempted phishing attack was detected via Microsoft Defender. The email contained a spoofed sender and a malicious URL. It was quarantined before the user engaged, and the domain was blocked at the gateway level. No compromise occurred.

**Lessons Learned / Detection Gaps:**  
- Defender correctly caught the threat, but email gateway didn’t auto-quarantine  
- URL evaded detection until clicked in sandbox

**Tuning Recommendations:**  
- Improve sandbox analysis for newly registered domains  
- Add stricter URL scanning rules for unknown senders

---

## 🧠 IRIS Notes

- Modules Run: `log_parser`, `alert_triage`, `ioc_enricher`, `report_writer`  
- Parsed Output: ✅  
- Final Triage Score: 6/10  
- IRIS Response Generated: ✅  

---

## 📁 File Location

```
SOC_TRACK/
└── phishing_alert_response.md
```
