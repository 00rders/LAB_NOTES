# Micro Editor Configuration – Hot Lab Terminal

This document captures the finalized configuration of the **Micro terminal-based editor** as used in the Hot Lab portable cyber lab environment. This setup is optimized for Markdown documentation, Git workflows, and terminal-first cybersecurity operations.

---

## 🎯 Purpose

Micro was selected as the primary terminal editor due to its balance of power and simplicity. This config supports:

* Writing structured Markdown documentation
* Editing config files and scripts in a clean, minimal UI
* Efficient Git commit workflow without switching to GUI tools

---

## ⚙️ Final Settings
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

## 🧠 Key Features

| Setting               | Purpose                                                                 |
| --------------------- | ----------------------------------------------------------------------- |
| `colorscheme`         | Uses `twilight` for a clean, low-contrast look in terminal environments |
| `softwrap`            | Ensures long Markdown lines wrap neatly on screen                       |
| `tabsize: 2`          | Consistent indentation, Markdown-friendly                               |
| `autosave`            | Reduces friction during frequent task switching                         |
| `clipboard: external` | Enables system clipboard use, including Tmux or SSH sessions            |
| `autosu`              | Allows auto-elevation when editing protected system files               |
| `mouse: false`        | Preserves keyboard-driven workflow                                      |

---

## ✅ Status

* Fully tested in Hot Lab environment (`macOS terminal`)
* Integrated into Git-based workflow
* Configured for Markdown, Bash, and config editing
* Validated for clean launch and visual clarity

---

## 🔄 Next Steps

Further enhancements may include:

* Custom snippets/macros
* Plugin support (if needed)
* Task-based editor shortcuts (e.g. Git commit message templates)

---

📁 Logged under: `projects/HOT_LAB/micro-config.md`
