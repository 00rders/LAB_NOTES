# 🛡️ SOC_STUDY — AI-Driven SOC/SIEM Course Library

Welcome to your **self-contained SOC/SIEM training system** — built for mastering security analyst skills through guided, hands-on modules.

---

## 🎓 How It Works

Each module in this repo follows a universal learning format:

- 🗣️ **`universal_prompt.md`** — The master prompt to start any course. Paste this into ChatGPT to generate a gated, hands-on learning path.
- 📝 **Module `.md` files** — Your actual training: notes, walkthroughs, queries, and lab output.

You only need one prompt — everything else lives in clearly named topic files.

---

## 📚 Modules

### 📂 00_foundations
- [soc_roles_and_workflow.md](00_foundations/soc_roles_and_workflow.md)  
- [soc_triage_checklist.md](00_foundations/soc_triage_checklist.md)  
- [what_is_a_siem.md](00_foundations/what_is_a_siem.md)

### 📂 01_splunk_basics
- [basic_spl_queries.md](01_splunk_basics/basic_spl_queries.md)  
- [fields_sourcetypes_events.md](01_splunk_basics/fields_sourcetypes_events.md)  
- [ingest_sample_logs.md](01_splunk_basics/ingest_sample_logs.md)  
- [splunk-hotlab-setup.md](01_splunk_basics/splunk-hotlab-setup.md)  
- [splunk_cheatsheet.md](01_splunk_basics/splunk_cheatsheet.md)  
- [understanding_indexes.md](01_splunk_basics/understanding_indexes.md)

### 📂 02_soc_queries
- [failed_login_investigation.md](02_soc_queries/failed_login_investigation.md)  
- [file_change_monitoring.md](02_soc_queries/file_change_monitoring.md)  
- [phishing_alert_response.md](02_soc_queries/phishing_alert_response.md)  
- [suspicious_ip_lookup.md](02_soc_queries/suspicious_ip_lookup.md)  
- [suspicious_login_investigation.md](02_soc_queries/suspicious_login_investigation.md)  
- [ssh_bruteforce.md](02_soc_queries/ssh_bruteforce.md)

### 📂 03_alerting_and_dashboards
- [building_dashboards.md](03_alerting_and_dashboards/building_dashboards.md)  
- [creating_alerts.md](03_alerting_and_dashboards/creating_alerts.md)  
- [mitre_mapping_cheatsheet.md](03_alerting_and_dashboards/mitre_mapping_cheatsheet.md)  
- [ssh_bruteforce_dashboard.md](03_alerting_and_dashboards/ssh_bruteforce_dashboard.md)

### 📂 04_incident_response
- [incident_simulation_template.md](04_incident_response/incident_simulation_template.md)  
- [triage_quicklog.md](04_incident_response/triage_quicklog.md)

### 📂 05_misc_techniques
- [aws_s3_bucket_exposure.md](05_misc_techniques/aws_s3_bucket_exposure.md)  
- [detecting_wpa_cracking.md](05_misc_techniques/detecting_wpa_cracking.md)  
- [edr_tuning_noise_reduction.md](05_misc_techniques/edr_tuning_noise_reduction.md)  
- [sql_injection_detection.md](05_misc_techniques/sql_injection_detection.md)  
- [xss_payload_alerting.md](05_misc_techniques/xss_payload_alerting.md)

---

## 📦 Assets

### 📂 [SPLUNK/](SPLUNK/)
- Hands-on assets: dashboards, log samples, lookups, SPL queries
- Includes [RESOURCES](SPLUNK/RESOURCES/README.md) for official docs and generators

---

## 🧠 Start Learning

Begin any course by opening [`universal_prompt.md`](universal_prompt.md) and pasting it into ChatGPT.  
Then pick a module, follow the prompt’s guidance, and document your learning inside the corresponding `.md` file.

---

## 🛠️ Status

> Built and maintained by a self-directed SOC analyst in training.  
> This repo is actively evolving as part of a larger cybersecurity lab environment.
