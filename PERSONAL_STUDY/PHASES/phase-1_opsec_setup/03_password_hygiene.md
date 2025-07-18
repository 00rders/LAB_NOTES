# 03 — Password Hygiene & Management

## 🧩 Scenario  
OPSEC starts with eliminating weak points in authentication. I needed a secure, cross-platform password manager to replace browser-based and Apple iCloud storage.

## 🔧 What I Did
- Created a **ProtonMail** account with a strong, unique password.
- Chose **Bitwarden** as my primary password manager (free, secure, open-source).
- Set a master password using a secure formula, combining:
  - Length (20+ characters)
  - Symbols, numbers, upper/lowercase
  - No reused elements
- Installed Bitwarden clients:
  - **Firefox (Linux)** browser extension
  - **iPhone** Face ID autofill
  - **Desktop client** for quick access on my host OS

## 🧠 What I Learned
- Password managers eliminate human error while promoting strong credential practices.
- Bitwarden uses end-to-end encryption and zero-knowledge architecture.
- Browser-based password storage (e.g., Chrome, iCloud) is vulnerable to OS-level attacks or social engineering.

## 🔒 Why It Matters
Without strong passwords, everything else in an OPSEC workflow can fall apart. Bitwarden also prepares me for later phases where I’ll need to manage:
- SSH keys
- API tokens
- Encrypted notes
