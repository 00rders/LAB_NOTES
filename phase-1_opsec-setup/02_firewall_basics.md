# 02 — Firewall Basics (UFW)

## 🧩 Scenario  
Block all inbound traffic to keep the VM invisible on the LAN.

## 🔧 What I Did
```bash
sudo apt update && sudo apt install ufw -y
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
sudo ufw status verbose
```
## 🧠 What I Learned
