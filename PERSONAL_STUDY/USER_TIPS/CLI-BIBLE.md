# 🧠 FOUNDER Manual: Command & Syntax Cheatsheet
> Permanent offline reference for essential commands and workflows in the Hot Lab environment. Designed for zero-internet, zero-AI operation.

---

## 🔧 Shell Basics
```bash
pwd           # Current dir
ls -la        # List all files (detailed)
cd /path      # Change dir
touch file    # Create file
micro file    # Edit file
mkdir dir     # New folder
rm file/dir   # Remove file/dir (-rf for recursive)
cp src dest   # Copy
mv src dest   # Move
```

---

## ⚙️ Zsh / Git Aliases
```bash
alias gs='git fetch origin main --quiet && git status -sb'
alias ga='git add .'
alias gm='git commit -m'
alias gc='git checkout'
alias gp='git push origin main'
alias gpu='git pull origin main'
alias gbranch='git branch'
alias glog='git log --oneline --graph --decorate'
```

---

## 🔑 Persistent SSH Agent
```bash
SSH_ENV="$HOME/.ssh/agent_env"
start_agent(){
 eval "$(ssh-agent -s)" >/dev/null
 ssh-add ~/.ssh/gitops_ed25519
 echo "export SSH_AUTH_SOCK=$SSH_AUTH_SOCK" > $SSH_ENV
 echo "export SSH_AGENT_PID=$SSH_AGENT_PID" >> $SSH_ENV
 chmod 600 $SSH_ENV
}
[ -f $SSH_ENV ] && source $SSH_ENV && kill -0 $SSH_AGENT_PID 2>/dev/null || start_agent
```
```bash
ssh-add -l   # Verify key loaded
```

---

## 🛠 Git Essentials
```bash
gs           # Fetch + status
ga           # Stage all
gm "msg"     # Commit
gp           # Push main
gpu          # Pull main
gbranch      # Branch list
glog         # Graph log
gstatus-all  # Multi-repo status
```

---

## 🔐 SSH Essentials
```bash
ssh-keygen -t ed25519 -C "email"
ssh-add ~/.ssh/gitops_ed25519
ssh -T git@github.com   # Test
```
~/.ssh/config:
```ssh
Host github.com
 HostName github.com
 User git
 IdentityFile ~/.ssh/gitops_ed25519
```

---

## 🚑 Troubleshooting
```bash
git fetch origin main && git status   # Refresh status
git rm --cached file                  # Stop tracking file
rm -rf repo && git clone git@...      # Re-clone repo
ssh-add ~/.ssh/gitops_ed25519         # Reload key
```

---

## 📌 Best Practices
- Run `gs` before `gp`
- Commit before pulling
- `.ssh` dir chmod 700, keys chmod 600
- Backup `.zshrc`, SSH keys, and this file
