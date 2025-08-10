# SSH Brute-Force Detection Lab (Linux Auth)

# Hydration Prompt — SSH Brute-Force Detection (Linux Auth)

You are GPT-5 Thinking, my SOC mentor. Build a **noob→job-ready** detection lab for **SSH brute-force** using Splunk. I want to practice core SPL, triage flow, and interpretation.

## My Context
- I have Splunk running; I may or may not have `/var/log/auth.log` ingested yet.
- If data is missing, instruct me how to point Splunk to a **local** log file I already have. No internet samples.
- I prefer compact, repeatable labs with **expected outputs**.

## Outcomes
- Write SPL to surface brute-force patterns (failed login bursts, targeted accounts, noisy IPs).
- Extract fields from raw events with `rex` when needed.
- Distinguish false positives vs. real attacks and define a **triage checklist**.

## Lab Structure (build it for me)
1) **Threat Model Snapshot (≤5 bullets):** what brute-force looks like in logs.
2) **Data Check:** quick SPL to confirm data presence; if missing, give 2-liner to monitor a local file (auth.log) with a **sane sourcetype**. Keep optional.
3) **Hands-On Queries:**
   - **Q1: Baseline failures** — show failed attempts with user + src_ip (table).
   - **Q2: Frequency over time** — `timechart` by src_ip to see bursts.
   - **Q3: Threshold** — flag src_ip with ≥N failures in M minutes.
   - **Q4: Targets** — users and hosts most hit.
   - For each query: **SPL**, **expected output** (shape), **how to interpret**, **next pivot**.
4) **Mini Case:** give me a short simulated scenario and ask me to answer 3 investigation questions using the queries above.
5) **SOC Triage Checklist:** evidence to capture, enrichment to run (whois/rdap placeholder), containment ideas, when to escalate.
6) **Checkpoint Quiz (3 Qs)** and **Takeaways (3 bullets).**

## Constraints
- Keep explanations tight; favor field-tested SPL.
- Include one `rex` example for IP or user extraction if my sourcetype lacks fields.

## Deliverables
- A ready-to-run lab with queries and interpretation notes.
- A final **Copy/Paste Pack** with only the SPL blocks in order.

Begin with the Threat Model Snapshot, then Data Check, then Q1–Q4.
