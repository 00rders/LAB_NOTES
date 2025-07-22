# �� FOUNDER Manual: Command & Syntax Cheatsheet

> This file serves as a permanent, offline reference for essential commands and workflows used in the Hot Lab environment. Designed to operate without internet or AI assistance.

---

## �� Shell Basics

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

## ⚙️ Zsh Environment Essentials

### `~/.zshrc` Overview

* Primary configuration file for the Zsh shell.
* Executes every time a new interactive terminal is launched.
* Controls environment variables, theme settings, plugins, aliases, and custom scripts.

### Essential Load Order Knowledge

* Always declare environment variables (like `EDITOR`, `VISUAL`) **before** theme or plugin loading.
* If using Powerlevel10k, set `POWERLEVEL9K_INSTANT_PROMPT=off` **before** sourcing the instant prompt preamble.
* Custom scripts or banners should be sourced **after** Oh My Zsh is initialized.

### Example Zshrc Breakdown

```zsh
# Set default editor
export EDITOR="micro"
export VISUAL="micro"

# History behavior
export HISTCONTROL=ignoredups  # Avoid duplicate commands in history

# Disable Powerlevel10k's instant prompt to allow banner output
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

# Powerlevel10k instant prompt preloader (must be above everything else)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  fi

  # Oh My Zsh core setup
  export ZSH="$HOME/.oh-my-zsh"
  ZSH_THEME="powerlevel10k/powerlevel10k"
  plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
  source $ZSH/oh-my-zsh.sh

  # Load custom Hot Lab banner (if exists)
  [[ -f ~/.boot-banner/hotlab-banner.sh ]] && source ~/.boot-banner/hotlab-banner.sh
  ```

  ---

  ## ��️ Git Commands

  ### Repo Basics

  ```bash
  git clone <url>               # Clone a repo
  git status                    # See changes
  git add .                     # Stage all changes
  git commit -m "message"      # Commit with message
  git push                      # Push to remote
  git pull                      # Pull latest from remote
  ```

  ### Common Sync Errors

  ```bash
  git pull --rebase origin main   # Use this if local commits conflict with upstream
  git pull origin main            # Merge remote changes if push fails
  git log --oneline --graph       # Visualize commit history
  ```

  ### Git SSH Key Setup (Hot Lab)

  ```bash
  ssh-keygen -t ed25519 -C "gitops@hotlab"
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/gitops_ed25519
  ```

  Then add the public key `~/.ssh/gitops_ed25519.pub` to GitHub.

  ### `.ssh/config` Entry

  ```ssh
  Host github.com
    HostName github.com
      User git
        IdentityFile ~/.ssh/gitops_ed25519
        ```

        ### Repo Refresh / Reset (When in doubt)

        ```bash
        rm -rf ai-playbook automation-and-tools certifications cybersec-lab-notes iris  # Nuke local clones
        # Re-clone fresh copies of each repo
        cd /f/github-backup
        git clone git@github.com:00rders/ai-playbook.git
        git clone git@github.com:00rders/automation-and-tools.git
        git clone git@github.com:00rders/certifications.git
        git clone git@github.com:00rders/cybersec-lab-notes.git
        git clone git@github.com:00rders/iris.git
        ```

        ---

        ## �� SSH Essentials

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

              ### GitHub SSH Test

              ```bash
              ssh -T git@github.com    # Test if GitHub SSH access is working
              ```

              If `Permission denied (publickey)`:

              * Double check the key you added to GitHub matches the one in use
              * Confirm your `.ssh/config` is referencing the right key
              * Use `ssh-add -l` to list loaded keys
              * Run `ssh-add ~/.ssh/gitops_ed25519` if necessary

              ---

              ## �� General Tips

              * Use `tab` to auto-complete file names and commands
              * Use `Ctrl + C` to cancel a running command
              * Use `Ctrl + D` to logout of terminal
              * Use `Ctrl + L` to clear the screen

              ---

              ## ✏️ Bonus: Git Line Ending Fix

              If you see this warning:

              > `CRLF will be replaced by LF the next time Git touches it`

              That means Windows line endings will be converted to Linux-friendly ones. You can safely ignore it.

              To avoid future warnings:

              ```bash
              git config --global core.autocrlf true
              ```

              This tells Git:

              > "Store files with LF endings, but give me CRLF locally so things work nicely on Windows."

              ---

              ✅ Keep this file updated as your workflow evolves. Think of it as your offline co-pilot.
              
