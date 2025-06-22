### ✅ Section 1A: ping — Connectivity Check

Ran the following commands:

```bash
ping 8.8.8.8
ping google.com
```
#### Observations:
- Packets were successfully sent and received.
- 0% packet loss.
- DNS resolution from `google.com` to `172.217.12.110` confirms DNS is functioning.
- RTT (Round-Trip Time) was within a healthy 20–36 ms range.

#### Real-World Takeaway:
Basic ping checks verify both local connectivity and DNS resolution. If packet loss or resolution fails, it indicates either physical/network interference or DNS server misconfiguration — often the first steps in triaging SOC alerts.
