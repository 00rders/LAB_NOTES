# 🧠 MITRE ATT&CK Mapping Cheatsheet

> Quick reference for mapping alerts and incidents to MITRE ATT&CK techniques during triage or report writing.

---

## 🎯 Common Tactics & Techniques

| Tactic (Category)         | Technique (ID)              | Description |
|---------------------------|-----------------------------|-------------|
| Initial Access            | `T1566.001` — Phishing: Attachment | Malicious file via email |
|                          | `T1078` — Valid Accounts         | Use of stolen credentials |
| Execution                 | `T1059` — Command Line/Scripting | PowerShell, bash, etc. |
|                          | `T1203` — Exploitation for Client Execution | Using software vulnerabilities |
| Persistence               | `T1547` — Boot or Logon Autostart | Registry, scheduled tasks |
| Privilege Escalation      | `T1068` — Exploitation for Privilege Escalation | Abuse of OS vulnerabilities |
| Defense Evasion           | `T1027` — Obfuscated Files or Info | Base64, encoded scripts |
|                          | `T1070.004` — File Deletion | Log tampering or cleanup |
| Credential Access         | `T1003` — OS Credential Dumping | LSASS memory dump |
| Discovery                 | `T1083` — File and Directory Discovery | Enumeration |
|                          | `T1018` — Remote System Discovery | Lateral scope mapping |
| Lateral Movement          | `T1021.001` — Remote Desktop Protocol | RDP session usage |
|                          | `T1077` — Windows Admin Shares | Lateral move via shares |
| Collection                | `T1113` — Screen Capture | Spyware, RATs |
| Exfiltration              | `T1041` — Exfiltration over C2 Channel | Data theft via outbound C2 |
| Command and Control       | `T1071.001` — Web Protocols | C2 using HTTP/HTTPS |

---

## 🧠 Mapping Tips

- **Start with behavior, not tool**  
  > Don't assume "PowerShell" = `T1059`; context matters.

- **Use multi-technique mapping if needed**  
  > A lateral movement attempt could involve `T1021.001`, `T1078`, and `T1027`.

- **Include MITRE tags in reports**  
  > Standardizes your write-ups and improves SOC searchability.

---

## 📘 Helpful Resources

- [MITRE ATT&CK Navigator](https://attack.mitre.org/navigator/)
- [MITRE ATT&CK Matrix (Enterprise)](https://attack.mitre.org/matrices/enterprise/)
- [Atomic Red Team](https://github.com/redcanaryco/atomic-red-team) – Test examples

---

### 🤖 IRIS Integration Ideas

- Suggest MITRE technique(s) during alert triage
- Auto-tag parsed logs with mapped tactics/techniques
- Track most frequent tactics in shift summary reports
- Use MITRE tags to prioritize detection engineering needs
