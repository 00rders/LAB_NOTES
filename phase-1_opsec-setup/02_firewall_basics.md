# 02 — Firewall Basics (UFW)

## 🧩 Scenario
You’ve just set up your Kali VM and want to ensure it's not exposed to other devices on your local network. The goal is to configure a basic host firewall that **blocks all inbound traffic by default**, making the VM “invisible” on the LAN while still allowing outbound connections (e.g., updates, web browsing).

## 🔧 What I Did

### 🛡️ Install and Configure UFW
```bash
sudo apt update && sudo apt install ufw -y
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
sudo ufw status verbose
```
### ✅ Verified:
1. Firewall status and current rules with ufw status verbose
2. Outbound connectivity still worked (APT updates, browser access)

## 🧠 What I Learned
- **UFW (Uncomplicated Firewall)** is a simplified frontend for managing `iptables` rules — ideal for basic host-level protection.
- Setting a **default deny inbound** policy is a best practice to reduce the attack surface, especially on a shared or untrusted network.
- Firewalls operate at the **kernel level**, filtering traffic before it even reaches user-space services or applications.

## 🔒 Why It Matters
Without a firewall, your VM could unknowingly expose open ports, services, or vulnerabilities to the rest of the LAN. This puts your system at risk of being scanned, exploited, or used as a pivot point in lateral movement attacks. Even during local experimentation, a properly configured firewall is a non-negotiable part of a secure environment — especially for penetration testing or red team labs.

## 🌐 Real-World Application Scenario
As a SOC analyst or junior security engineer, you may be tasked with validating host firewall configurations across employee workstations or servers. If a new system suddenly becomes reachable on unexpected ports, this could indicate a misconfiguration or an early stage of compromise. Understanding firewall rule logic prepares you to detect and escalate such anomalies quickly.

## 🤖 What could IRIS do?
- **Monitor Firewall Logs**: Continuously parse logs (e.g., `ufw.log`, `iptables`) to detect port scans, brute-force attempts, or denied outbound traffic.
- **Alert on Anomalies**: Automatically flag when non-standard ports are opened, closed, or if existing rules deviate from a known-good baseline.
- **Automate Rule Validation**: Periodically audit current firewall configurations against policy and recommend remediations for drift or misconfigurations.
