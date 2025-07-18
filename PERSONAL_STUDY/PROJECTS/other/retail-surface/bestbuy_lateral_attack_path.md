# 🛠️ Retail Surface Threat Simulation: Recon to Lateral Movement

## 🧭 Phase 1: Reconnaissance from Demo Wi-Fi

### 1. Identify Gateway
- Tool: `ip route`, `ipconfig`
- Extract IP and default gateway

### 2. Ping Sweep
- `nmap -sn 192.168.50.0/24`
- Purpose: discover live hosts

### 3. Hostname Discovery
- `nmap -sL`, `nbtscan`
- Risk: discovering `bby-pos-07` reveals internal device

## 🧨 Phase 2: Lateral Movement Attempt (Simulated)

### 1. Port Scan for RDP/SMB
- `nmap -p 445,3389 192.168.50.107`

### 2. SMB Enumeration
- `smbclient -L //192.168.50.107 -U guest`

### 3. Pivot Tools
- Tools: RDP, SMB, or internal web interface

## ✅ Outcome
If segmentation fails and internal hosts are discoverable from demo Wi-Fi, lateral movement to critical systems is plausible. This represents a serious breakdown in retail network architecture and compliance.

