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

## 🔐 SSH Key Generation + GitHub Integration  

### Command Used:
```bash
ssh-keygen -t ed25519 -C "hot-lab"
```

### Why:  
- `ed25519` = modern, fast, and secure key algorithm  
- `"hot-lab"` = meaningful identifier for GitHub key tracking  

### Steps Completed:
- [x] Generated SSH key w/ passphrase  
- [x] Added key to SSH agent  
```bash
ssh-add ~/.ssh/id_ed25519
```

- [x] Configured SSH fallback to port 443 for GitHub (guest Wi-Fi blocked port 22)  
- [x] Verified authentication:
```bash
ssh -T git@github.com
```

### ~/.ssh/config:
```ssh
Host github.com
  Hostname ssh.github.com
  Port 443
  User git
  IdentityFile ~/.ssh/id_ed25519
  IdentitiesOnly yes
```

### Outcome:  
✅ Successfully authenticated with GitHub over restricted Wi-Fi using SSH fallback  
🛡️ Preserved security (trusted GitHub fingerprint, key stored locally)  

---

## 🔧 Tools Installed  

| Tool        | Method           | Purpose                                      |
|-------------|------------------|----------------------------------------------|
| `git`       | Homebrew          | Version control for all lab files            |
| `bitwarden` | App Store         | Store GitHub credentials & config secrets    |
| `proton vpn`| App Store         | Secure encrypted connection from any network |

---

## 🧰 Tools Planned (Not Yet Installed)  

| Tool        | Method           | Purpose                                      |
|-------------|------------------|----------------------------------------------|
| `micro`     | Homebrew          | Clean CLI editor for `.md` files             |
| `utm`       | Homebrew (cask)   | Run Kali & Ubuntu VMs locally                |
| `tailscale` | Homebrew (cask)   | Secure remote SSH access to home lab         |

---

## 🧠 Reflections  

> This isn't just a personal laptop anymore.  
> It's a version-controlled, portable command node for documenting, simulating, and connecting to my cybersecurity infrastructure — from anywhere.  

You’re not just learning tools. You’re building battlefield mobility.  

---

## 📅 Next Steps  

- [ ] Clone and push to GitHub via SSH (now unlocked)  
- [ ] Install `tailscale`, `utm`, and `micro`  
- [ ] Test remote SSH access to `nukebox`  
- [ ] Build Kali + Ubuntu lab VMs via UTM  
- [ ] Begin committing `.md` entries directly from this machine  

---

🧠 Logged by 00rders | `PERSONAL_STUDY/PROJECTS/macbook-hot-lab/lab-admin-setup.md`
