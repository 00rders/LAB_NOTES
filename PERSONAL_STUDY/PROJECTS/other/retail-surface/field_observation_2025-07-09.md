# 🧾 Field Observation — Best Buy Demo Laptop (2025-07-09)

While testing an in-store demo laptop (publicly accessible), I connected to the active `Best Buy Demo` SSID.

### 🧠 Key Observations:
- Windows reports connection as `Public Network`
- Device IP and MAC address were visible in settings
- Connection details and subnet were exposed without elevated privileges
- No warning or access barrier was triggered for inspecting this information

### 🔒 Initial Reflections:
- Labeling the network as "Public" only protects the **individual device**
- It does **not** guarantee network segmentation from internal systems
- If any internal systems share this subnet or routeable path, lateral exposure becomes possible

### 🧨 Risk Scenario:
If a compromised demo laptop exists on the same subnet as a POS system or inventory endpoint, a threat actor could:
- Discover internal IPs
- Probe open ports (e.g. RDP, SMB, HTTP)
- Attempt lateral movement toward higher-value assets

---

📝 Logged for use in:  
- `retail_attack_surface.md`  
- Demo alert: `demo_lateral_alert.json`
