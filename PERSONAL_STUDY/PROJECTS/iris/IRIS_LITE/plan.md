# 🧠 IRIS Lite – Internal Geek Squad Assistant

A lightweight assistant built to empower Geek Squad agents with quick, local tools for troubleshooting, documentation, and reducing escalations — no internet required.

---

## 🎯 Purpose

- Help agents solve common issues without escalation  
- Speed up new agent onboarding  
- Automate repetitive support logic  
- Operate entirely offline (no cloud dependency)

---

## 🧠 Core Features (Planned)

- **Symptom Helper**: Ask agent for issue description → suggest probable causes  
- **Device Checklist**: Guided walkthroughs based on device type  
- **Escalation Check**: Determines if issue should be passed to higher tier  
- **Report Builder**: Auto-generate basic service documentation  
- **AI Notes (Optional)**: Summarize customer problem into clean notes  

---

## 🛠️ Logic Outline

- Launch tool → show options (Symptom Helper, Device Checklist, etc.)  
- User selects Symptom Helper → types issue → system searches known issues  
- Checklist module guides through structured steps by device type  
- If issue takes too long or fits escalation criteria → escalate  
- Tool can save session notes or generate printable output for agent use  

---

## 🚧 Future Ideas

- Add internal KB (knowledge base) per product line  
- Tie into IRIS Core logic or escalate to full IRIS  
- Build as `.pkg`, `.app`, or USB-portable script  
- Align with Best Buy tech workflows  


# 🤖 IRIS Assist – Geek Squad AI Kiosk (Customer-Facing)

A guided self-service triage tool that customers can use in-store to describe their tech issue, attempt fixes, or request an agent.

---

## 🎯 Purpose

- Let customers try self-help for simple problems  
- Free up agent time for real issues  
- Improve service flow and reduce waiting frustration  
- Guide customers to describe problems clearly  

---

## 🧠 Key Modules (Planned)

- **Describe My Issue**: Natural language input → matches to known symptoms  
- **Self-Fix Paths**: Offer easy walkthroughs for common problems  
- **Agent-Needed Check**: Decide if agent is needed based on problem type  
- **Ticket Generator**: Auto-fill pre-service form for agent handoff  

---

## 🛠️ Logic Outline

- Customer walks in → sees optional QR code or kiosk  
- Enters their issue in plain English  
- System analyzes: is it a simple fix or needs agent?  
- If simple: provides fix steps (e.g. reboot router, clear cache)  
- If complex: logs the issue and notifies the next available agent  
- Can generate printed summary for customer or agent handoff  

---

## 🧩 Deployment Concepts

- Could run from touchscreen or iPad  
- Entirely offline-friendly  
- Optional cloud sync for internal use  
- Respects data privacy → no customer data stored long-term  
