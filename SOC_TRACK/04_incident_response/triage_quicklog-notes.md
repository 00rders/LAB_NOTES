#  M-/ Phishing Alert Response Walkthrough

##  ~X Scenario
A suspicious email was reported by a user. SOC received a corresponding alert from the secure email gateway.

##  M-( Alert Summary
- **Source:** Email Gateway
- **Type:** Suspicious Email / Credential Phish
- **User Impacted:** jsmith@example.com
- **Subject Line:** "Important Payroll Update"
- **URL:** `http://malicious-link.com/login`

##  M-* Triage Actions
- [ ] Check headers and sending domain
- [ ] Analyze URL via threat intel sources
- [ ] Inspect email body for phishing markers
- [ ] Correlate login attempts from user’s machine

##  M-) MITRE Mapping
- `T1566.001` — Phishing: Spearphishing Attachment
- `T1059` — Command and Scripting Interpreter (if macro was involved)

##  M-  Analyst Notes
> Add your observations and decisions made during triage here.

---

### ✅ Outcome
- [ ] User warned
- [ ] URL blocked
- [ ] IOC added to SIEM


