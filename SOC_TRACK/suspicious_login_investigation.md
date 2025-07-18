# 🔐 Suspicious Login Investigation

## 📌 Scenario
Anomalous authentication detected: user account successfully logged in from a geo-location never before observed *5 min* after a failed MFA attempt from another region.

## 🔍 Alert Metadata
- **Source**: IdP / SIEM (Okta, Entra ID, etc.)
- **User**: jsmith@example.com
- **Successful Login IP**: 203.0.113.45 (Country: NL)
- **Failed MFA IP**: 198.51.100.27 (Country: US)
- **Device**: Unknown / New
- **Timestamp (UTC)**: 2025-07-17T03:22:18Z
- **Auth Method**: Password + MFA push

## 🧪 Triage Steps
- [ ] Verify if user is traveling (contact user or HR travel feed).
- [ ] Check historical login geo & device fingerprint.
- [ ] Compare source IPs to threat intel / known proxies / TOR exit nodes.
- [ ] Review MFA logs: push fatigue? multiple prompts?
- [ ] Inspect recent password reset / enrollment changes.
- [ ] Pull endpoint EDR telemetry for associated host (if corporate device).
- [ ] Review downstream activity (email rules, VPN, data pulls).

## ⚖️ Escalation Decision Matrix
| Indicator | Action |
|-----------|--------|
| New geo + new device + user denial | **Escalate IR (possible compromise)** |
| Geo plausible (travel) + device known | Close w/ comment |
| Multiple MFA pushes + unusual forwarding rules | Escalate, reset credentials |

## 🧠 MITRE Mapping
- `T1078` Valid Accounts  
- `T1110` Brute Force / Password Spray (if seen prior)  
- `T1621` Multi-Factor Authentication Request Generation (push fatigue)  

## 📝 Analyst Notes
> User confirmed / denied? Device corporate-owned? Any suspicious inbox rules? Capture all decisions here.

---

### ✅ Outcome Tracking
- [ ] Forced password reset
- [ ] Revoke active sessions / tokens
- [ ] Monitor for reauthentication attempts
- [ ] Add IOC IPs to blocklist / watchlist

---

### 🤖 Optional: IRIS Automation Ideas
- Auto-geo compare current vs historical logins
- Auto-enrich IP reputation + ASN
- Auto-generate user-verification email template
