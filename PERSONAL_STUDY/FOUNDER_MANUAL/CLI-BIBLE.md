# 🧠 FOUNDER Manual: Command & Syntax Cheatsheet

> This file serves as a permanent, offline reference for essential commands and workflows used in the Hot Lab environment. Designed to operate without internet or AI assistance.

---

## 🔧 Shell Basics

### Navigation

```bash
pwd          # Print working directory
ls -la       # List all files with details (including hidden)
cd ~         # Go to home directory
cd ..        # Go up one directory
cd /path/to  # Go to specific path
```

### File Management

```bash
touch file.txt              # Create new empty file
micro file.txt              # Open/edit file with Micro
mkdir folder                # Make a new folder
rm file.txt                 # Delete a file
rm -rf folder/              # Delete folder recursively (⚠️ careful)
cp file.txt newname.txt     # Copy file
mv file.txt ~/Documents/    # Move file
```

---

## 🛠️ Git Commands

### Repo Basics

```bash
git clone <url>             # Clone a repo
git status                  # See changes
git add .                   # Stage all changes
git commit -m "message"    # Commit with message
git push                    # Push to remote
git pull                    # Pull latest from remote
```

### Useful Aliases *(to define later)*

```bash
gitpushall    # Add, commit, and push all changes
gitstatus     # Shortcut for git status
gitcheck      # Check current branch & sync state
```

---

## 🔐 SSH Essentials

### Key Auth Workflow

```bash
ssh-keygen -t rsa -b 4096             # Generate new key pair
ssh-copy-id user@remote               # Copy key to remote host
ssh user@host                         # Connect to remote
```

### Config File (`~/.ssh/config`)

```ssh
Host cyber-nas
  HostName 100.x.x.x
  User 00rders
  IdentityFile ~/.ssh/id_rsa
```

Then connect with:

```bash
ssh cyber-nas
```

---

## 🧠 General Tips

* Use `tab` to auto-complete file names and commands
* Use `Ctrl + C` to cancel a running command
* Use `Ctrl + D` to logout of terminal
* Use `Ctrl + L` to clear the screen

---

✅ Keep this file updated as your workflow evolves. Think of it as your offline co-pilot.
