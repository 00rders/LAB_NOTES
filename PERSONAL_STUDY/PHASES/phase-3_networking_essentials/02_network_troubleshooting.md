# Module 02: Network Troubleshooting

## 🧩 Context
In this module, I explored how to validate basic connectivity and investigate network issues using commands like `ping`, `traceroute`, `dig`, and `netstat`. These tools are essential in a SOC analyst’s toolkit for diagnosing whether issues stem from DNS, routing paths, or host-level services.

## 🔧 What I Did

### 1. Ping Tests
- Verified basic network connectivity by pinging both an external IP (`8.8.8.8`) and a domain name (`google.com`).
- Confirmed that:
  - `ping 8.8.8.8` bypasses DNS and confirms internet access.
  - `ping google.com` confirms DNS resolution is working.

### 2. Traceroute
- Ran `traceroute google.com` to visualize the path packets take to their destination.
- Observed each hop through local network, ISP infrastructure, and public internet.
- Identified potential latency or routing issues based on hop times or timeouts.

### 3. DNS Resolution (`dig`)
- Queried `dig google.com` to inspect DNS behavior.
- Reviewed QUESTION and ANSWER sections to verify resolution.
- Re-ran behind VPN to compare resolver behavior and check for anomalies.

### 4. Active Connections (`netstat`)
- Ran `sudo netstat -tulnp` to list all open/listening ports.
- Interpreted what services were bound to which ports.
- Recognized importance of minimizing listening services to reduce attack surface.

## 🧠 What I Learned
- **Ping** helps verify whether a target system (internal or external) is reachable, whether DNS is functioning (when using a domain), and gives you latency information via round-trip time.
- **Traceroute** shows the network path packets take to reach a target, which helps identify slow or failing routers, understand ISP routing, or pinpoint misconfigurations in a multi-hop path.
- **Dig** reveals detailed DNS resolution data including question and answer sections, TTL values, and authoritative servers. It's powerful for spotting spoofed domains or verifying DNS trustworthiness.
- **Netstat** displays which ports/services are actively listening on your system — this is crucial for determining what’s exposed on the host and assessing potential security risks.
- **Default-deny firewall mindset**: I reinforced the importance of minimizing the attack surface by only allowing required traffic and using tools like `netstat` to audit what’s exposed.

## 🔒 Why It Matters
- **SOC Triage**: As a SOC analyst, the first 5 minutes of triage often involve checking whether a system is reachable, whether DNS resolution is functioning, and what services it’s exposing to the network.

- **Security Posture**: Understanding what ports are open and what services are listening helps enforce a **reduced attack surface**, minimizing risk from lateral movement or exposed services.

- **Root Cause Analysis**: These tools give direct insight into whether the issue is **network-related**, **DNS-related**, or **host-specific** — essential for reducing downtime and isolating threats quickly.

## 🏦 Real-World Application Scenario(s)

- A user in the org reports they "can't access the internet." You start with `ping` to check if the system can reach the gateway and then `dig` to ensure DNS is resolving properly. You use `traceroute` to verify packet routing, and `netstat` to ensure no abnormal services are exposed.

- During a security audit, you use `netstat` to validate that unnecessary ports (e.g., FTP, Telnet) are not open. You use `dig` to ensure no DNS leaks or spoofing is happening and confirm with `ping` that internal servers are reachable.

## 🤖 What Could IRIS do?
- ✅ Automatically run `ping`, `traceroute`, and `dig` commands on suspected endpoints during triage.
- ✅ Cross-reference DNS results with threat intelligence feeds to flag suspicious IPs or domains.
- ✅ Monitor `netstat` output over time and alert on new or unexpected listening services.
- ✅ Provide a visual network map from traceroute data to aid analyst understanding.
- ✅ Bundle all this into a summarized incident report for Tier 1 SOC use.

