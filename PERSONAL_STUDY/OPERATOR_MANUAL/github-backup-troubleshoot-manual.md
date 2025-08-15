# GitHub Backup Troubleshooting Manual

> **Purpose**: Use this manual to troubleshoot, audit, or reset your local GitHub backups. This guide applies to the `Cold Lab` GitOps setup as of July 21, 2025.

---

## �� Target Directory

```bash
/f/github-backup/
```

Expected subfolders:

* `ai-playbook/`
* `automation-and-tools/`
* `certifications/`
* `home-lab/`
* `iris/`
* `bundles/` (not a Git repo — used for `.bundle` backups)

---

## �� Audit: Check Repo Statuses

Run this to verify which folders are valid Git repos:

```bash
cd /f/github-backup
ls -d */ | while read d; do echo "$d" && test -d "$d/.git" && echo "✅ Git repo" || echo "❌ Not a Git repo"; done
```

### Confirm Clean Statuses

```bash
for repo in ai-playbook automation-and-tools certifications home-lab iris; do
  echo "�� Status check: $repo"
    cd "$repo"
      git status
        cd ..
          echo ""
          done
          ```

          ---

          ## �� Problem Encountered

          * Zombie `.git` folders existed in `github-backup/` root, causing false-positive Git context.
          * Branch confusion due to lingering `master` branch (should be `main` for all repos).
          * Stale uncommitted files in `cold lab` that weren’t synced with changes pushed from `hot lab`.
          * SSH key mismatch prevented cloning from GitHub via SSH.

          ---

          ## �� Solution: Full Local Wipe & Re-Clone

          ### 1. Clean up existing repos manually or run:

          ```bash
          cd /f/github-backup
          rm -rf ai-playbook automation-and-tools certifications home-lab iris
          ```

          > ⚠️ Be sure you've backed up any local-only changes before deletion!

          ### 2. Confirm SSH key works:

          ```bash
          ssh -T git@github.com
          ```

          If it fails with `Permission denied (publickey)`, run:

          ```bash
          ssh-add ~/.ssh/YOUR_KEY_NAME
          ```

          Then retry the test.

          ### 3. Clone all repos again:

          ```bash
          cd /f/github-backup

          git clone git@github.com:00rders/ai-playbook.git
          git clone git@github.com:00rders/automation-and-tools.git
          git clone git@github.com:00rders/certifications.git
          git clone git@github.com:00rders/home-lab.git
          git clone git@github.com:00rders/iris.git
          ```

          ---

          ## ✅ Final Validation

          Run:

          ```bash
          cd /f/github-backup
          for repo in ai-playbook automation-and-tools certifications home-lab iris; do
            echo "�� Verifying $repo..."
              cd "$repo"
                git status
                  git branch
                    git remote -v
                      cd ..
                        echo ""
                        done
                        ```

                        Expected output:

                        * On `main` branch
                        * Clean working tree
                        * Remote origin points to `git@github.com:00rders/REPO_NAME.git`

                        ---

                        ## �� Notes

                        * `.bundle` folder is **not a Git repo** — used for timestamped backups
                        * Future backups should use `gitbackupnow` script from `automation-and-tools`
                        * If any repo shows drift again, re-clone it from scratch using this guide

                        ---

                        ## �� Next Steps

                        * [ ] Create a `gbackup` alias to trigger `gitbackupnow`
                        * [ ] Build a Git sync status dashboard
                        * [ ] Regularly test push/pull access on both Hot Lab and Cold Lab

                        ---

                        *Last updated: 2025-07-21*

                        Author: 00rders
                        Location: Cold Lab
                        Context: Full GitHub repo sync + SSH recovery
                        
