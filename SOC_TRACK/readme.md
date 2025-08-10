# SOC_TRACK — AI-Driven SOC/SIEM Course Library

This folder is now a **self-contained SOC/SIEM training program**.  
Every module is split into two files:

- **`*-prompt.md`** — Universal, gated hydration prompt. Paste into ChatGPT to start a **noob → job-ready course** for that topic.  
- **`*-notes.md`** — Your notes, lab results, screenshots, and reflections from completing that course.

> **Usage:** Open the `*-prompt.md` for the module you want to study, paste it into ChatGPT, answer “What module are we studying today?” with the module name, and follow the gated learning flow.

---

## 📚 Course Modules

### **00_foundations/**
- [soc_roles_and_workflow-prompt.md](00_foundations/soc_roles_and_workflow-prompt.md) | [notes](00_foundations/soc_roles_and_workflow-notes.md)  
- [soc_triage_checklist-prompt.md](00_foundations/soc_triage_checklist-prompt.md) | [notes](00_foundations/soc_triage_checklist-notes.md)  
- [what_is_a_siem-prompt.md](00_foundations/what_is_a_siem-prompt.md) | [notes](00_foundations/what_is_a_siem-notes.md)  

### **01_splunk_basics/**
- [basic_spl_queries-prompt.md](01_splunk_basics/basic_spl_queries-prompt.md) | [notes](01_splunk_basics/basic_spl_queries-notes.md)  
- [fields_sourcetypes_events-prompt.md](01_splunk_basics/fields_sourcetypes_events-prompt.md) | [notes](01_splunk_basics/fields_sourcetypes_events-notes.md)  
- [ingest_sample_logs-prompt.md](01_splunk_basics/ingest_sample_logs-prompt.md) | [notes](01_splunk_basics/ingest_sample_logs-notes.md)  
- [splunk-hotlab-setup-prompt.md](01_splunk_basics/splunk-hotlab-setup-prompt.md) | [notes](01_splunk_basics/splunk-hotlab-setup-notes.md)  
- [splunk_cheatsheet-prompt.md](01_splunk_basics/splunk_cheatsheet-prompt.md) | [notes](01_splunk_basics/splunk_cheatsheet-notes.md)  
- [understanding_indexes-prompt.md](01_splunk_basics/understanding_indexes-prompt.md) | [notes](01_splunk_basics/understanding_indexes-notes.md)  

### **02_soc_queries/**
- [failed_login_investigation-prompt.md](02_soc_queries/failed_login_investigation-prompt.md) | [notes](02_soc_queries/failed_login_investigation-notes.md)  
- [file_change_monitoring-prompt.md](02_soc_queries/file_change_monitoring-prompt.md) | [notes](02_soc_queries/file_change_monitoring-notes.md)  
- [phishing_alert_response-prompt.md](02_soc_queries/phishing_alert_response-prompt.md) | [notes](02_soc_queries/phishing_alert_response-notes.md)  
- [suspicious_ip_lookup-prompt.md](02_soc_queries/suspicious_ip_lookup-prompt.md) | [notes](02_soc_queries/suspicious_ip_lookup-notes.md)  
- [suspicious_login_investigation-prompt.md](02_soc_queries/suspicious_login_investigation-prompt.md) | [notes](02_soc_queries/suspicious_login_investigation-notes.md)  
- [ssh_bruteforce-prompt.md](02_soc_queries/ssh_bruteforce-prompt.md) | [notes](02_soc_queries/ssh_bruteforce-notes.md)  

### **03_alerting_and_dashboards/**
- [building_dashboards-prompt.md](03_alerting_and_dashboards/building_dashboards-prompt.md) | [notes](03_alerting_and_dashboards/building_dashboards-notes.md)  
- [creating_alerts-prompt.md](03_alerting_and_dashboards/creating_alerts-prompt.md) | [notes](03_alerting_and_dashboards/creating_alerts-notes.md)  
- [mitre_mapping_cheatsheet-prompt.md](03_alerting_and_dashboards/mitre_mapping_cheatsheet-prompt.md) | [notes](03_alerting_and_dashboards/mitre_mapping_cheatsheet-notes.md)  
- [ssh_bruteforce_dashboard-prompt.md](03_alerting_and_dashboards/ssh_bruteforce_dashboard-prompt.md) | [notes](03_alerting_and_dashboards/ssh_bruteforce_dashboard-notes.md)  

### **04_incident_response/**
- [incident_simulation_template-prompt.md](04_incident_response/incident_simulation_template-prompt.md) | [notes](04_incident_response/incident_simulation_template-notes.md)  
- [triage_quicklog-prompt.md](04_incident_response/triage_quicklog-prompt.md) | [notes](04_incident_response/triage_quicklog-notes.md)  

### **05_misc_techniques/**
- [aws_s3_bucket_exposure-prompt.md](05_misc_techniques/aws_s3_bucket_exposure-prompt.md) | [notes](05_misc_techniques/aws_s3_bucket_exposure-notes.md)  
- [detecting_wpa_cracking-prompt.md](05_misc_techniques/detecting_wpa_cracking-prompt.md) | [notes](05_misc_techniques/detecting_wpa_cracking-notes.md)  
- [edr_tuning_noise_reduction-prompt.md](05_misc_techniques/edr_tuning_noise_reduction-prompt.md) | [notes](05_misc_techniques/edr_tuning_noise_reduction-notes.md)  
- [sql_injection_detection-prompt.md](05_misc_techniques/sql_injection_detection-prompt.md) | [notes](05_misc_techniques/sql_injection_detection-notes.md)  
- [xss_payload_alerting-prompt.md](05_misc_techniques/xss_payload_alerting-prompt.md) | [notes](05_misc_techniques/xss_payload_alerting-notes.md)  

---

## 🛠 Workflow

1. **Pick a Module**  
   Browse the index above, click the `*-prompt.md` for the module you want to study.

2. **Run the Prompt in ChatGPT**  
   Paste the full prompt into ChatGPT.  
   When it asks *“What module are we studying today?”*, answer with the module name from the index.

3. **Follow the Gated Learning Flow**  
   Complete each section, pass the knowledge checks, and do the hands-on activities.

4. **Log Your Work**  
   Record notes, outputs, and reflections in the paired `*-notes.md` file.

---

> **Tip:** This structure makes it easy to resume any module, export notes to your portfolio, or even train someone else on your workflow.
