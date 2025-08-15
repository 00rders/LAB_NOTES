# Micro Editor Config – Founder Manual

> **Purpose:** This document captures the intentional configuration of the Micro terminal editor as part of the Hot Lab’s AI-optional fallback system. It exists to ensure that if all AI tools become unavailable, the Hot Lab operator can still work efficiently with Markdown, Bash, and plaintext workflows in a clean, keyboard-driven environment.

---

## 🚀 Why Micro Was Chosen

Micro strikes the balance between:

* Minimal footprint (ideal for portable/offline systems)
* Smooth UX for Markdown editing
* Native support for syntax highlighting and clipboard
* Terminal-native with no GUI dependency

It functions as a **reliable fallback** to heavier tools like VSCode or Vim, and fits perfectly into a keyboard-first, Git-centric workflow.

This config reflects the lab philosophy: *simplicity, clarity, and full control over your environment.*

---

## ⚙️ Final Configuration

> File: `~/.config/micro/settings.json`

```json
{
  "colorscheme": "twilight",
  "filetype": "markdown",
  "tabsize": 2,
  "softwrap": true,
  "ruler": true,
  "statusline": true,
  "autosave": true,
  "clipboard": "external",
  "mouse": false,
  "scrollbar": false,
  "matchbrace": true,
  "autosu": true
}
```

---

## 🧠 Setting Breakdown

| Key            | Description                                                        |
| -------------- | ------------------------------------------------------------------ |
| `colorscheme`  | Uses `twilight` for calm, clear syntax display                     |
| `filetype`     | Prioritizes Markdown as the default editing mode                   |
| `softwrap`     | Ensures smooth paragraph editing without horizontal scrolling      |
| `tabsize: 2`   | Keeps indentation clean and portable across Markdown + scripts     |
| `autosave`     | Safety net for sudden system crashes or disconnection              |
| `clipboard`    | Enables Tmux/multiplexer-friendly copy/paste via system clipboard  |
| `autosu`       | Allows privilege escalation when editing system-level config files |
| `mouse: false` | Reinforces terminal-first, distraction-free habits                 |

---

## 🚫 AI Dependency: None

This config is:

* Fully standalone
* Backed up in GitHub
* Rebuildable from scratch in under 60 seconds

No plugins, external tooling, or online accounts required.

This makes it ideal for recovery-mode operations or travel use where internet or AI access is restricted.

---

## 🔄 Restore Protocol

If this config is lost:

```bash
mkdir -p ~/.config/micro
micro ~/.config/micro/settings.json
```

Then paste the JSON block above. Restart `micro`. You're operational again.

---

## 🔧 Future Enhancements (Optional)

* Git commit template snippets
* Syntax extensions for log, YAML, or Python analysis
* Macros for tagging or timestamping notes

---

📁 Logged under: `FOUNDER_manual/micro-config.md`
