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
