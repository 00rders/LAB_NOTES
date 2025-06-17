# 05 — VirtualBox Snapshots & Shell Aliases

## 🧩 Scenario  
I need quick “save points” in my lab and faster command execution for daily tasks.

## 🔧 What I Did

1. Created Key Snapshots in VirtualBox - **How?**  
> *Right-click VM → Snapshots → Take Snapshot → name & description.*

2. Added Helpful Z-shell Aliases  
> Appended to `~/.zshrc` and re-loaded with `source ~/.zshrc`.

```bash
# update system quickly
alias updatekali='sudo apt update && sudo apt upgrade -y'

# check public IP
alias ipinfo='curl ifconfig.me'

# list listening ports
alias ports='sudo netstat -tuln'

# clear terminal
alias cls='clear'

# clean apt cache
alias cleanapt='sudo apt autoremove -y && sudo apt autoclean -y'
```

## 🧠 WHat I Learned
- **Snapshots** = instant time machine. If malware or mis-configs break the vm, I can restore it to a previously saved version
- **Aliases** boost efficiency, enforce good habits, and reduce typo risk on long commands
- Reloading shell configs "( source ~/.zshrc )" makes changes live without a reboot

## 🔒 Why It Matters
- Frequent snapshots protect the integrity of the lab during exploit testing
- Aliases hard-bake secure workflows ( ex. updatekali ) and keep OPSEC tasks fast and repeatable
