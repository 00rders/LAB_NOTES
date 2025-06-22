# Module 02: Network Troubleshooting

## 🧩 Context
In this module, I learned how to diagnose and verify basic network connectivity using commands like `ping`, interpreting results for both internal and external targets. These tools are essential for confirming whether a system is reachable and connected to the wider internet or isolated due to misconfiguration or firewall restrictions.

This kind of troubleshooting is a foundational part of SOC analyst workflows and helps validate that networking components (DNS, gateway, internet, etc.) are functioning as expected.

---

## 🔧 What I Did

### 1. **Pinged an IP Address Directly**
- Tested connectivity to Google's DNS server at `8.8.8.8`:
  ```bash
  ping 8.8.8.8
  ```
- **Result**
  ```python
  64 bytes from 8.8.8.8: icmp_seq=1 ttl=114 time=28.8 ms
  ...
  4 packets transmitted, 4 received, 0% packet loss
  ```
- **Observation**
  - *The network is online and functional*
  - *No DNS is needed for this test, since we're using a direct IP address*
 
### 2. **Pinged a Domain Name**
- Tested *DNS* resolution and connectivity to `google.com`:
  ```bash
  ping google.com
  ```
- **Result**
  ```python
  64 bytes from atl26s14-in-f14.1e100.net (172.217.12.110): icmp_seq=1 ttl=114 time=20.5 ms
  ...
  4 packets transmitted, 4 received, 0% packet loss
  ```
- **Observation**
  - *The system successfully resolved the domain name to an IP*
  - *Confirms that DNS is working properly and outbound traffic is allowed*

---

## 🧠 What I Learned

- **Ping** tests let you verify:
  - If your system can reach another device on the network or internet.
  - If DNS is working (when using a domain name).
  - Round-trip latency (network responsiveness).
- **TTL** and **time** values show how many hops exist and the response time.
- **Packet loss** indicates potential issues with connectivity or routing.

---

## 🔒 Why It Matters

- **Critical for SOC Analysts**: Quick ping tests help analysts confirm if a reported issue is network-related before escalating or taking further action.
- **Diagnostic Foundation**: Understanding how to interpret ICMP responses is a must for effective troubleshooting, especially when working with remote endpoints or investigating alerts.

---

## 🏦 Real-World Application Scenario(s)

- **Scenario**: You're working in a SOC and receive an alert that a production web server is down. Your first step is to `ping` the server’s IP address to confirm it’s reachable.
  - If it fails, you try the default gateway or an external IP (like `8.8.8.8`) to see if it’s a local network or full internet issue.
  - If `ping google.com` fails but `ping 8.8.8.8` works, you can narrow it down to a **DNS issue**.

- **Outcome**: This kind of quick triage saves time, narrows scope, and avoids unnecessary escalations — a key skill for any junior SOC analyst.

---

## ✅ Next Steps

- Test failed ping scenarios (e.g., blocked by firewall or DNS failure).
- Use `traceroute` to understand path tracing.
- Begin exploring `netstat`, `ss`, and `ifconfig/ip a` for deeper troubleshooting.

