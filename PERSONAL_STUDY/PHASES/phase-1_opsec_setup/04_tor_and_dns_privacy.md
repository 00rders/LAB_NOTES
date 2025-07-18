# 04 — Tor Browser & DNS Privacy

## 🧩 Scenario
You want to browse the internet anonymously and protect your DNS queries from being monitored or tampered with by ISPs, attackers, or local networks. In this module, the goal was to install Tor and enable encrypted DNS (DoH) within Kali Linux to improve online privacy and defend against tracking or surveillance.

## 🔧 What I Did

### 🌐 Installed and Configured Tor Browser
```bash
sudo apt install torbrowser-launcher
```
- Launched Tor and successfully connected to the network.
- Enabled bridge mode for extra stealth and censorship circumvention.

### 🔒 Configured Encrypted DNS (DoH) in Firefox
- Opened Firefox → Settings → Network Settings → Enabled DNS-over-HTTPS
- Set mode to Max Protection using Cloudflare as the trusted resolver.
- Verified that DNS queries were encrypted and no longer visible to the local network.

## 🧠 What I Learned
- **Tor** anonymizes internet traffic by routing it through multiple volunteer nodes, obscuring your IP and location.
- **DNS-over-HTTPS (DoH)** encrypts DNS queries to prevent ISPs or local attackers from seeing what domains you request.
- Not all Tor security features are available in Kali due to its default root user. However, using a hardened VM still provides strong baseline privacy for OPSEC and research purposes.

## 🔒 Why It Matters
Without DNS encryption or anonymized browsing:
- DNS queries can be logged, hijacked, or manipulated by ISPs, malicious hotspots, or threat actors.
- Your IP address and browsing behavior can be used for surveillance, profiling, or targeted attacks.

*By enabling Tor and DNS-over-HTTPS, you create multiple layers of protection against passive monitoring, fingerprinting, and man-in-the-middle attacks. This is especially important in red team operations, whistleblowing research, or when working on sensitive projects that require discretion.*

## 🌐 Real-World Application Scenario
As a SOC analyst or security researcher, you may need to investigate domains, threat intel, or forums on the dark web without revealing your identity or workplace IP. Tor and DoH provide safe browsing conditions for such tasks. Likewise, understanding DNS visibility helps you detect when users or attackers are trying to bypass corporate controls using encrypted DNS or anonymizers — a common tactic in insider threats or advanced evasion.

## 🤖 What could IRIS do?
- **DNS Monitoring**: Passively inspect DNS queries for suspicious domains, DNS tunneling, or signs of malware using encrypted DNS to evade detection.
- **Anonymity Auditing**: Detect DNS leaks or traffic routing issues that bypass Tor, helping maintain operational anonymity.
- **Threat Feed Cross-Referencing**: Analyze DNS queries and compare them against real-time threat intelligence to flag connections to malicious infrastructure.
