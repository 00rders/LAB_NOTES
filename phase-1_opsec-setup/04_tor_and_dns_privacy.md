# 04 — Tor Browser & DNS Privacy

## 🧩 Scenario  
To enhance my anonymity and prevent tracking, I installed privacy-first browsing tools inside Kali Linux.

## 🔧 What I Did
- Installed **Tor Browser** through terminal using:
  ```bash
  sudo apt install torbrowser-launcher
  ```
  - Launched Tor and connected to the network using bridges for added stealth
  - Explored **DNS-over-HTTPS(DoH)** setting in Firefox:
    - Enabled **Max Protection** with cloudfare as the trusted resolver
    - Learned how Firefox encrypts DNS requests to prevent local network snooping
   
## 🧠 What I Learned
- **Tor** anonymizes traffic through volunteer nodes, making my IP much harder to trace.
- **DNS** is normally **unencrypted**. DoH prevents ISP's + attackers from seeing what sites I request
- Some Tor security features are OS-dependant. Kali may not support all of them due to root-user behavior. However, this shouldn't pose an issue since im working from a hardened vm system

## 🔒 Why It Matters
Without encrypted DNS and anonymous browsing:
- My traffic could be analyzed + profiled, or intercepted
- Malicious actors on shared public networks could hijack my requests or perform MITM attacks
This phase added resilience against surveillance and fingerprinting while teaching how to install secure packages and evaluate browser settings
