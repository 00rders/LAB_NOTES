# 🧠 CYBERSEC LAB RESTRUCTURE PLAN — POST-SEC+ OPTIMIZATION

This file outlines the full migration and refactor plan for the `cybersec-lab-notes` repo to better align with real-world SOC analyst skills, Henry Davis’ breakdown, and job-readiness in blue team workflows.

---

## 🗂️ REPO STRUCTURE CHANGES

### ✅ 1. Create Top-Level Folders
- [ ] `SOC_TRACK/` — Main focus going forward (real-world simulations, alert walkthroughs)
- [ ] `PERSONAL_STUDY/` — Where all previous Phase-based foundational learning will go

---

### 📦 2. Move Existing Phases to `PERSONAL_STUDY/`

| From Root                | ➡️ To                                 |
|-------------------------|--------------------------------------|
| `Phase1_OPSEC_SETUP/`   | `PERSONAL_STUDY/Phase1_OPSEC_SETUP/` |
| `Phase2_LINUX_ESSENTIALS/` | `PERSONAL_STUDY/Phase2_LINUX_ESSENTIALS/` |
| `Phase3_NETWORKING/`    | `PERSONAL_STUDY/Phase3_NETWORKING/`  |
| `Phase8_PORTFOLIO_POLISHING/` | `PERSONAL_STUDY/Phase8_PORTFOLIO_POLISHING/` |

---

### 🛠️ 3. Create Initial Files in `SOC_TRACK/`

#### 📁 `SOC_TRACK/` should include:
- [ ] `phishing_alert_response.md`
- [ ] `aws_s3_bucket_exposure.md`
- [ ] `suspicious_login_investigation.md`
- [ ] `edr_tuning_noise_reduction.md`
- [ ] `mitre_mapping_cheatsheet.md`
- [ ] `soc_triage_checklist.md`
- [ ] `incident_simulation_template.md` *(optional template for reuse)*

---

### 🧹 4. Clean Up Root Directory
- [ ] Move any standalone `.md` files not in a phase into `PERSONAL_STUDY/` or delete/archive them
- [ ] Ensure all filenames use consistent kebab-case or snake_case
- [ ] Delete or consolidate any empty folders left behind

---

## 📝 README OVERHAUL

- [ ] Update project title:  
  `cybersec-lab-notes — SOC Analyst Simulation Lab & Blue Team Portfolio`

- [ ] Add new description:
  > A hands-on cybersecurity lab journal that documents foundational learning, real-world alert triage, and blue team simulations.  
  > Features include: custom SOC case walkthroughs, IRIS tool integration, MITRE mapping, and modular documentation of security workflows.

- [ ] Add structure breakdown:
  ```markdown
  ## 📁 Repository Structure

  - `SOC_TRACK/`: Real-world simulations, triage modules, alert walkthroughs
  - `PERSONAL_STUDY/`: Foundational Linux, networking, OPSEC, and tooling
  - `PORTFOLIO/`: Resume drafts, Medium outlines, IRIS feature ideas
