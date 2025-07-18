# 01 — Lab Setup (VirtualBox + Kali)

## 🧩 Scenario  
I need a safe environment for hands-on cybersecurity practice that won’t endanger my host OS.

## 🔧 What I Did
1. Installed **Oracle VirtualBox** on Windows host.  
2. Imported the official **Kali Linux OVA** (2025-03 release).  
3. Allocated **2 CPU / 4 GB RAM / 25 GB disk**.  
4. Verified network (NAT by default) and USB passthrough disabled.  
5. Booted Kali, changed default passwords, updated packages.

## 🧠 What I Learned
- VMs isolate experiments from the real machine.  
- Choosing NAT vs Bridged changes how the VM sees the network.  
- Snapshotting keeps a clean “restore point.”

## 🔒 Why It Matters
A hardened, disposable VM lets me test malware, exploits, or misconfigurations without risking my daily driver.
