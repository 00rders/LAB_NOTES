# ☁️ AWS S3 Bucket Exposure Investigation

## 📌 Scenario
Security scan revealed an open Amazon S3 bucket accessible without authentication.

## 🔍 Exposure Details
- **Bucket Name**: `company-internal-docs`
- **Access Level**: Public (read)
- **Sensitive Files Detected**:
  - `internal/onboarding.pdf`
  - `security/network-diagram.png`

## 🧪 Triage Steps
- [ ] Confirm exposure via `aws s3 ls s3://bucket-name --no-sign-request`
- [ ] Check bucket policy and ACLs
- [ ] Cross-reference access logs if enabled
- [ ] Check for previous unauthorized downloads (CloudTrail/Splunk)

## 🧠 MITRE Mapping
- `T1530` — Data from Cloud Storage Object
- `T1087` — Account Discovery (if user data leaked)

## 📝 Analyst Notes
> Document findings, who was alerted, how it was discovered.

---

### ✅ Outcome
- [ ] Bucket access set to private
- [ ] Logged for IR follow-up
- [ ] Owners notified for remediation

---
