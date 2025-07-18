# 🛒 Retail Attack Surface — Threat Map & Exploitation Methodologies  
**Author:** 00rders  
**Status:** WIP | v0.1 | Field-Validated  
**Purpose:** Simulate real-world, vendor-driven network exposure in retail environments for detection, triage, and reporting lab use.

---

## 🎯 Executive Overview

Retail stores represent one of the most overlooked digital attack surfaces in the U.S. Despite handling sensitive customer data and processing credit card applications, most chains rely on:

- Publicly named demo networks (`Best Buy Demo`, `Target Guest`, etc.)
- Third-party vendor-deployed devices (PCs, IoT, tablets)
- Unverified network segmentation practices
- Outdated or misconfigured display systems

This file maps out a **viable retail-based attack surface**, lists potential exploitation paths, and will serve as a blueprint for lab simulation using a Kali + IRIS stack.

---

## 🔓 Threat Surface Components

| Component | Description |
|----------|-------------|
| **Public Demo Wi-Fi** | SSID visible to customers, shared across displays |
| **Vendor PCs** | Windows machines installed with default creds, no endpoint protection |
| **IoT Devices** | Smart speakers, TVs, home hubs often on same SSID |
| **POS Systems** | Credit card apps, customer data entry — true target |
| **Partner Networks** | Retail card apps link directly to partner banks (TD, Citi, CapOne) |

---

## 🔁 Attack Methodology Flow (Simulated Plan)

> Based on real-world observations. Actual attack will only be modeled in a controlled offline lab.

### 🧭 Phase 1: Recon  
- Scan open SSIDs and active devices (passive sniffing)  
- Identify exposed vendor PCs or IoT devices via mDNS, UPnP, NetBIOS

### 🧪 Phase 2: Access (Demo Device)  
- Default creds (e.g., `admin/admin`)  
- Drive-by USB payload (dropper, reverse shell stub)  
- Exploitable services (SMBv1, RDP, unpatched browsers)

### 🧬 Phase 3: Lateral Movement  
- Internal ping sweeps  
- Broadcast packet analysis  
- SMB/NetBIOS discovery  
- Credential harvesting via Mimikatz or Wireshark

### 🎯 Phase 4: Target Discovery  
- Identify POS systems by naming convention, OS fingerprint  
- Locate CRM/credit card application endpoints  
- Attempt token interception or PII scraping in memory

### 🚨 Phase 5: Impact (Simulated Only)  
- Flag data exfil points (not executed)  
- Write IRIS-compatible logs for alert generation  
- Trigger triage + MITRE tagging pipeline

---

## ⚙️ Simulation Plan

| Component | Emulated In Lab |
|----------|------------------|
| Demo Wi-Fi | Host-only VirtualBox NAT/Bridge |
| Vendor PC | Windows 10 VM (vulnerable image) |
| Attacker | Kali VM (same subnet) |
| IRIS | Local CLI triage + reporting |
| Logs | Synthetic + real-time, converted to IRIS format |

---

## 🎯 IRIS Use Case:  
- Parse demo network alerts  
- Triage for MITRE tags: `Initial Access`, `Lateral Movement`, `Credential Access`  
- Generate markdown report  
- Present as **offline simulation of national retail risk scenario**

---

## 🧱 Next Steps

- [ ] Create `lab_setup_retail_demo.md` (Kali + Windows sim)  
- [ ] Generate fake logs from simulated discovery + lateral movement  
- [ ] Write IRIS alert parsing + report generation flow  
- [ ] Record optional terminal demo (GIF or mp4)

---

> “The retail attack surface is a national risk vector hiding in plain sight. This simulation makes that undeniable.”

