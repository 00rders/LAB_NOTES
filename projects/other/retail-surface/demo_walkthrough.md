# 🎥 IRIS Demo Walkthrough — Retail Threat Simulation

This doc outlines what to show in a short demo clip or live interview walkthrough.

---

## 🧭 Scenario Overview

> "Simulating a vulnerable vendor PC connected to a flat demo network inside a retail store. Demonstrating how an attacker could scan, move laterally, and reach sensitive devices — and how IRIS detects and reports it."

---

## 🖥️ Steps to Record

1. Show `Kali` scanning the network (nmap/smbclient)
2. Show target (`Windows VM`) being identified
3. Log fake alert as JSON (`demo_lateral_alert.json`)
4. Run `launchiris` command
5. Show triaged output and markdown report
6. End with a line like:
   > “This is how I modeled and detected a retail threat vector — fully offline.”

---

## 🎯 Talking Points

- Real observation → Simulated risk → Triaged output
- Could happen at *any* Best Buy, Target, Walmart
- IRIS flags it with no cloud agent — local, private, effective

---

## 📌 Optional

- Add voiceover or silent terminal demo (90s)
- Include QR code or link to GitHub markdown threat map
