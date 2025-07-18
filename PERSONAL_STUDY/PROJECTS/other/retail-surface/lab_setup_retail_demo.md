# 🧪 Lab Setup — Retail Attack Surface Simulation

This guide sets up a home lab to simulate vulnerable retail demo environments. The goal is to test IRIS detection on lateral movement and exposed endpoints.

---

## 🖥️ Virtual Machine Requirements

| VM         | OS        | Purpose               |
|------------|-----------|------------------------|
| Kali Linux | Latest    | Attacker / Scanner     |
| Windows 10 | Pro/Home  | Simulated Vendor PC    |
| (Optional) | pfSense   | Simulated segmentation |

---

## 🛠️ Configuration

### ✅ Network Settings
- Set both VMs to **Host-Only Adapter** or **Internal NAT**
- Ensure both machines are on the **same subnet**
- No internet access needed

### ✅ Windows 10 Hardening
- Disable firewall
- Enable RDP, SMB, NetBIOS (for lateral movement simulation)
- Use weak credentials (`user: vendor / pass: demo123`)

---

## 📂 Directory Mapping

| File                         | Role                           |
|------------------------------|--------------------------------|
| `dummy_logs/*.json`          | Simulated IRIS inputs          |
| `IRIS/scripts/*.py`          | Alert parser, triage, reporter |

---

## ✅ Next Steps
- Use Kali to simulate a scan & lateral probe
- Generate `.json` alert from findings
- Feed into IRIS CLI tool
