# Phase 1: OPSEC Setup

## Module 08 — Final Hardening: Digital Hygiene & Exposure Control

> *"You don't have to vanish to be secure. You just have to be intentional."*

---

### 🧠 Why It Matters

After securing your devices, encrypting your files, and locking down your habits, the final step is deciding what exposure *you actually want.*

Digital hygiene isn't just about minimizing risk — it's about **controlling your surface area**. This module walks through actionable ways to reduce unnecessary data leakage, protect your privacy, and implement intentional identity segmentation online.

---

### 🔐 Goals

* Understand your real-world digital footprint
* Choose an intentional level of internet exposure
* Implement hardened privacy tools (ad blockers, Pi-hole, tracking filters)
* Learn how to segment identities (aliases, email, payment)
* Introduce anti-OSINT countermeasures

---

### 🧰 Tools and Techniques

#### 1. **Ad + Tracker Blocking**

| Tool            | Purpose                                    |
| --------------- | ------------------------------------------ |
| uBlock Origin   | Browser-level content and tracker blocking |
| Pi-hole         | Network-wide DNS-level ad blocking         |
| Mullvad Browser | Firefox-based anti-fingerprint browser     |

* **Install uBlock Origin** in all browsers
* **Optional:** Set up [Pi-hole](https://pi-hole.net/) on a Raspberry Pi for network-wide blocking

#### 2. **Device Surveillance Control**

* Avoid smart TVs, voice assistants, "connected" devices
* Use hardened Linux distros when possible
* Keep personal phones free of unnecessary apps (especially social, finance, and shopping)

#### 3. **Identity Segmentation**

| Purpose        | Action Example                              |
| -------------- | ------------------------------------------- |
| OPSEC Identity | ProtonMail + privacy-focused aliases        |
| Research       | Temporary ProtonMail, unique browser config |
| Shopping       | Privacy.com cards + separate Gmail          |

* Never reuse the same email, number, or card across identities
* Consider using **Bitwarden** with separate vault folders per identity

#### 4. **Offline Trust Boundary**

* Use airgapped or semi-airgapped devices for sensitive workflows
* Limit syncing between high-privacy systems and general devices
* Store backups on encrypted external SSDs

#### 5. **Paper Trail Minimization**

* Consider a decoy address (e.g., PO box, virtual mailbox)
* Never register online accounts using real address unless absolutely necessary
* Use alternate forms of ID for non-government services when legal

#### 6. **Fingerprint & Metadata Awareness**

* Strip EXIF metadata from files before uploading

  * `exiftool -all= image.jpg`
* Default to PDF for document sharing to reduce editing forensics
* Avoid using real names in file metadata

---

### 🧪 Optional: Going Deeper

These are not required for most users, but worth knowing about.

| Technique                | Description                                                            |
| ------------------------ | ---------------------------------------------------------------------- |
| Decoy Address            | Registering DMV/mail to a cheap apartment or PO Box                    |
| Digital Fasting          | Living without social accounts, cloud syncing, and real-world tracking |
| Trustless Ownership      | Buying assets under legal entities, not your name                      |
| Regular OSINT Self-Audit | Periodically research yourself to see what can be found                |

---

### ✅ Checklist: Basic Final Hardening

* [ ] Installed uBlock Origin and disabled unnecessary browser features
* [ ] Created a dedicated OPSEC identity (email, alias, metadata hygiene)
* [ ] Began using encrypted messaging (e.g., Signal, ProtonMail Bridge)
* [ ] Configured Firefox or hardened browser for fingerprint protection
* [ ] Started isolating identities by category (research, creative, ops)
* [ ] Understood what level of exposure you're comfortable with

---

### 📁 Logs, Notes & Experiments

> Document everything you implement here. Track tool performance, leaks you discover, and workflow changes. Reference this module when reassessing your privacy exposure.

Create an `08_final_hardening.md` log folder with sub-entries like:

* `pi-hole-setup.md`
* `identity-rotation.md`
* `signal-experiments.md`
* `osint-audit-2025-07.md`

---

### 📎 Related Modules

* [01\_lab\_setup.md](./01_lab_setup.md)
* [04\_tor\_and\_dns\_privacy.md](./04_tor_and_dns_privacy.md)
* [06\_github\_backup\_bundles.md](./06_github_backup_bundles.md)

---

### 🔚 Final Thought

Intentional exposure — not blind participation — is the new OPSEC.

Own your footprint. Don’t let it own you.
