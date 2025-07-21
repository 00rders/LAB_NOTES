# 🧠 FOUNDER MANUAL | Full Terminal Environment Setup (Hot Lab)

> This is a self-sufficient, offline-safe setup guide to fully customize and configure a productive, secure, and visually enhanced Zsh-based terminal environment from scratch. Use this after a clean OS reinstall or lab setup.

---

## ✅ Goal

Build a complete terminal environment with the following:

* Oh My Zsh with Powerlevel10k theme
* Autosuggestions and syntax highlighting plugins
* Clean boot with custom ASCII banner
* Functional SSH + GitOps setup (see `hotgit-foundermanual.md`)
* Micro editor as default editor

---

## ⚡ Step 1: Install Required Tools

From a clean macOS terminal:

```bash
xcode-select --install       # Install developer tools (includes Git)
brew install git micro       # Install Git + Micro (if Homebrew is available)
```

If offline, use `.pkg` or `.tar.gz` backups from flash drive or USB.

---

## 💻 Step 2: Install Oh My Zsh

Use the one-liner:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

If offline:

* Restore `~/.oh-my-zsh` from a backup
* Manually place `.zshrc` in home directory

---

## ✨ Step 3: Install Powerlevel10k

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

Set in `.zshrc`:

```zsh
ZSH_THEME="powerlevel10k/powerlevel10k"
```

> ⚠️ Must appear **after** defining `$ZSH` but **before** sourcing Oh My Zsh.

---

## 🔹 Step 4: Install Plugins

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```

Add to `.zshrc`:

```zsh
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
```

---

## 🎨 Step 5: Setup `.zshrc` Custom Config

Ensure the following key elements exist:

```zsh
# Set default editor
export EDITOR="micro"
export VISUAL="micro"

# History control
export HISTCONTROL=ignoredups

# Powerlevel10k instant prompt fix
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

# Zsh core setup
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Optional banner
[[ -f ~/.boot-banner/hotlab-banner.sh ]] && source ~/.boot-banner/hotlab-banner.sh
```

> ✅ `typeset -g POWERLEVEL9K_INSTANT_PROMPT=off` disables visual glitch warnings.

---

## 🚀 Step 6: Optional Boot Banner

Create directory:

```bash
mkdir -p ~/.boot-banner
```

Example banner file: `~/.boot-banner/hotlab-banner.sh`

```bash
echo "
 ___  ___  ________  _________        ___       ________  ________
|\  \|\  \|\   __  \|\___   ___\     |\  \     |\   __  \|\   __  \
\ \  \\\  \ \  \|\  \|___ \  \_|     \ \  \    \ \  \|\  \ \  \|\ /_
 \ \   __  \ \  \\\  \   \ \  \       \ \  \    \ \   __  \ \   __  \
  \ \  \ \  \ \  \\\  \   \ \  \       \ \  \____\ \  \ \  \ \  \|\  \
   \ \__\ \__\ \_______\   \ \__\       \ \_______\ \__\ \__\ \_______\
    \|__|\|__|\|_______|   \|__|        \|_______|\|__|\|__|\|_______|
"
echo "~ 00rders: INTERLOCK INITIATED ~"
```

---

## ⛓️ Troubleshooting Tips

### Terminal shows P10k instant prompt warning

* Fix permissions: `sudo chmod g-w,o-w /usr/local/share/zsh/site-functions/_git`
* Ensure `typeset -g POWERLEVEL9K_INSTANT_PROMPT=off` is placed high in `.zshrc`

### Plugins not loading

* Verify plugins exist under `$ZSH_CUSTOM/plugins`
* Run `source ~/.zshrc` to reapply changes

### Boot banner not loading

* Ensure file path is correct
* Run manually: `source ~/.boot-banner/hotlab-banner.sh`

---

## 🔍 Validation Checklist

* [x] Micro editor launches with `micro`
* [x] Git works with `git --version`
* [x] P10k theme active and styled
* [x] Syntax + autosuggestion plugins active
* [x] No boot errors
* [x] Custom ASCII banner displays on shell launch

---

## 🔐 Why It Matters

Your terminal is your cockpit.

* Syntax help = fewer bugs
* Visual cues = faster decisions
* Offline-first = resilient recovery

With this guide, you can rebuild your shell from **bare metal** in under 20 minutes.
