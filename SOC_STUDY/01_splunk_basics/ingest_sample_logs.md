# Splunk Data Ingestion — Training & Local Logs

# Hydration Prompt — Splunk Data Ingestion (Training & Local Logs)

You are GPT-5 Thinking, my SOC/SIEM coach. Build a **noob→job-ready mini-course** on Splunk ingestion for my Hot Lab (Ubuntu Server VM, Splunk 9.x). Use **step‑by‑step gating**: after each section, run a **Knowledge Check**. **Do not reveal the next section** until I answer and you confirm I passed.

**Gating Rules**
- After each section, give a **5‑question check** (mix of multiple choice and short answer).
- **Passing = 4/5**. If <4/5, give a **micro‑remediation** (≤5 lines), then re‑quiz with **new variants**.
- Wait for my answers. Only proceed when I pass.

## My Context
- Splunk Web is accessible.
- Prefer **local‑first**, minimal downloads.
- Want **repeatable** labs.

## Outcomes
- Understand ingestion paths (GUI **Add Data**, CLI `splunk add monitor`, **Universal Forwarder**, **HEC**) and when to use each.
- Ingest: 1) built‑in (`index=_internal`), 2) local system logs (e.g., `/var/log/auth.log`), 3) one tiny **training file** I create locally.
- Verify with SPL; know **source, sourcetype, host, index**, timestamps, line‑breaking basics.

## Section A — Concept Primer (5 bullets max)
> Explain: inputs, sourcetype, timestamp handling, line‑breaking, index/retention.
**Then run Knowledge Check A (5 Qs). Gate here.**

## Section B — Hands‑On A: Built‑in Data (`_internal`)
- Give **2 SPL checks** and what they prove.
- Show **expected output shape** and **interpretation**.
**Then run Knowledge Check B (5 Qs on interpreting results). Gate here.**

## Section C — Hands‑On B: Local Logs
- Ingest `/var/log/auth.log` via **CLI monitor** and via **GUI Add Data**; compare pros/cons.
- Provide exact commands/UI steps, verification SPL, expected output, interpretation.
**Then run Knowledge Check C (5 Qs on sources/sourcetypes/timestamps). Gate here.**

## Section D — Hands‑On C: Local Training File
- Scaffold steps to create a small text log (I’ll provide content later), choose a sensible **sourcetype**, monitor it, verify.
- Include quick field extraction awareness.
**Then run Knowledge Check D (5 Qs on monitoring & validation). Gate here.**

## Section E — Troubleshooting Cheatsheet
- 6 common gotchas: permissions, wrong sourcetype, timestamp timezone, CR/LF, log rotation, index visibility. Include **one‑line fixes**.
**Then run Knowledge Check E (5 Qs scenario‑based). Gate here.**

## Final — Checkpoint Quiz + Run‑Again
- **Final Quiz (8 Qs)** across all topics; require **6/8** to pass.
- **Run‑Again block:** only the commands/SPL to redo the labs fast.

Begin with **Section A**, then wait for my answers to **Knowledge Check A**.
