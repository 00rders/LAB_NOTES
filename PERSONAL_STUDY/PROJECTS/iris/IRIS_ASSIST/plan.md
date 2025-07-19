# 🤖 IRIS Assist – AI-Powered Self-Service Kiosk (Customer-Facing)

A lightweight triage assistant designed for in-store Geek Squad customers. IRIS Assist helps reduce agent bottlenecks by allowing users to describe their tech issues, attempt quick fixes, or escalate to an agent when necessary.

---

## 🎯 Purpose

- Offer self-triage for simple tech problems  
- Free up Geek Squad agents for complex issues  
- Improve service flow and customer satisfaction  
- Auto-generate cleaner issue descriptions for agent intake  

---

## 🧠 Core Modules (Planned)

- **🗣️ Describe My Issue**  
  Natural language prompt where customers type or speak their issue

- **🛠️ Quick Fix Wizard**  
  Guided self-help steps based on symptom analysis

- **🚨 Agent Required Filter**  
  Determines if a problem is solvable via kiosk or needs escalation

- **🧾 Auto-Ticket Generator**  
  Pre-fills support ticket with customer input + preliminary diagnosis  

---

## 🛠️ Logic Flow

1. Customer scans QR code or walks up to in-store tablet/kiosk  
2. IRIS Assist welcomes them and prompts: “What seems to be the problem?”  
3. Customer describes the issue in their own words  
4. System processes the input and checks against known quick-fix paths  
5. If match found → display fix steps  
6. If issue appears complex or customer opts out → escalate  
7. System generates service slip for Geek Squad intake with clear notes  

---

## 🧩 Technical Considerations

- Must run offline or on local network (no cloud dependency)  
- Sanitizes and deletes user inputs after session ends  
- Modular logic allows update of fix-paths without full re-deployment  
- Could be built in Python + TUI or lightweight web frontend  

---

## 🌱 Future Ideas

- Add speech-to-text input support  
- Option for email/text summary of fix attempt  
- Metrics dashboard to track common issues or self-fix success rate  
