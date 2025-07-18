# 🛠️ Portable Cyber Lab Setup — `hot-lab` (MacBook Air)

## 🎯 Purpose
Set up a clean, portable cybersecurity lab environment on my MacBook Air (2018) to:
- Write and push GitHub `.md` entries from anywhere
- Remotely access my home lab via SSH (Tailscale)
- Simulate attacks and logs in local VMs
- Serve as a dedicated lab device under the `lab-admin` user

---

## 🖥️ Device Setup Summary

- **Device name**: `hot-lab`
- **User account**: `lab-admin` (new, clean, lab-only identity)
- **macOS**: Preserved (for GUI + Git compatibility)
- **Terminal**: iTerm2 + Homebrew

---

## 🔐 SSH Key Generation

### Command:
```bash
ssh-keygen -t ed25519 -C "hot-lab"
```
### Reason:
- `ed25519` = modern, fast, secure algorithm
- `"hot-lab"` = clear comment for device tracking in GitHub

---

## 🔧 Tools Installed

| Tool        | Method           | Purpose                                      |
|-------------|------------------|----------------------------------------------|
| `git`       | Homebrew          | Version control for all lab files            |
| `micro`     | Homebrew          | Clean CLI editor for `.md` files             |
| `utm`       | Homebrew (cask)   | Run Kali & Ubuntu VMs locally                |
| `tailscale` | Homebrew (cask)   | Secure remote SSH access to home lab         |
| `bitwarden` | App Store         | Store GitHub credentials & config secrets     |
| `proton vpn`| App Store         | Route traffic through a secure VPN tunnel     |

---

## 🧠 Reflections

> This isn't just a personal laptop anymore.  
> It's a version-controlled, portable command node for documenting, simulating, and connecting to my cybersecurity infrastructure — from anywhere.

---

## 📅 Next Steps

- [ ] Clone and push to GitHub via SSH
- [ ] Test Tailscale SSH into `nukebox`
- [ ] Build lightweight Kali + Ubuntu VMs via UTM
- [ ] Begin committing new `.md` lab entries directly from this device
