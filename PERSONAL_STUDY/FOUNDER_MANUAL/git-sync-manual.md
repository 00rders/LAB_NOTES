# 🧠 FOUNDER MANUAL | Git Sync & Workflow Reference

> This guide explains how to safely keep your Git repositories in sync between your Hot Lab and GitHub. It covers committing, pushing, pulling, handling divergence, and avoiding conflicts.

---

## ✅ Daily Sync Workflow (Safe Default)

1. **Check status and changes**:

```bash
git status
```

2. **Pull latest remote changes** *(to avoid divergence)*:

```bash
git pull origin main --no-rebase
```

3. **Stage and commit your changes**:

```bash
git add filename.md  # or '.' for all changes
git commit -m "Your commit message here"
```

4. **Push changes to GitHub**:

```bash
git push origin main
```

---

## 🚨 If You Forget to Pull First

You may see:

```
! [rejected]        main -> main (fetch first)
error: failed to push some refs to 'github.com:00rders/repo.git'
```

Fix it safely:

```bash
git pull origin main --no-rebase
# Resolve any merge conflicts if prompted
# Then push again:
git push origin main
```

> ✅ Tip: `--no-rebase` keeps commit history clean and conflict-free.

---

## 🧪 Troubleshooting Common Git Sync Issues

### ❌ "fatal: Need to specify how to reconcile divergent branches."

Run one of the following to fix permanently:

```bash
git config pull.rebase false  # use merge
```

Or just fix it one-time with:

```bash
git pull origin main --no-rebase
```

---

## 🔁 Verifying SSH Access Before Pushing

Test your current SSH identity:

```bash
ssh -T git@github.com
```

You should see:

```
Hi 00rders! You've successfully authenticated.
```

List loaded SSH keys:

```bash
ssh-add -l
```

If your key isn’t loaded:

```bash
ssh-add ~/.ssh/gitops_ed25519
```

---

## 🧠 Why This Matters

* Prevents Git divergence and merge conflicts
* Ensures smooth offline/online workflow from your portable lab
* Saves time by keeping commit history clean and intuitive

> This is your Git ops cheat sheet. Use it before every push.

---

## ✅ Hot Lab Git Sync Checklist

* [x] SSH key added and active
* [x] Always pull before pushing
* [x] Commit messages are clean and descriptive
* [x] No merge conflicts in history

---

Stay sharp, operator. This is Git discipline.
