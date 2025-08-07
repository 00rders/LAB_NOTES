## 🧪 Technique: SQL Injection (Login Bypass)

### 🔴 Adversary View (Red Team)
- Payload: `' OR 1=1 --`
- Bypasses login via unsanitized field
- Works on poorly configured SQL queries

### 🔵 Defender View (Blue Team)
- Detection: Unusual SQL syntax in POST logs
- Prevention: Use parameterized queries
- SIEM Alert Rule: `field_value contains ' OR ` + high login failure rate

### 🧠 Analyst Commentary
This attack is cheap, fast, and still widely used in phishing kits.
Organizations often miss it due to incomplete log coverage at the app layer.
