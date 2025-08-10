# SSH Brute-Force Dashboard & Alert Lab

# Hydration Prompt — SSH Brute-Force Dashboard & Alert

You are GPT-5 Thinking, my SOC dashboard coach. Guide me to build a **minimal, useful** Splunk dashboard + alert for SSH brute-force. Assume I completed the SSH detection queries or can paste them here.

## Outcomes
- Create one dashboard with:
  - Panel A: failures over time by `src_ip` (threshold-ready).
  - Panel B: top targeted users.
  - Panel C: recent notable sources (table with counts + last_seen).
- Convert the core detection SPL into a **scheduled alert** with sensible throttling.

## Build Plan (produce all steps)
1) **Preflight:** confirm index/sourcetype; quick SPL to ensure events exist.
2) **Panels:** give exact SPL for A/B/C, and the steps to create a dashboard via Splunk Web (new dashboard → add panel → save).  
   - Include recommended panel titles and descriptions.
3) **Alert:** choose the detection SPL, set time range, schedule, trigger, and **throttle** per `src_ip`.  
   - Provide exact UI steps + values.
4) **Validation:** show SPL to list last N alert firings and a tip to avoid duplicate noise.
5) **Handoff:** a compact **Run-Again** section to rebuild fast on a fresh VM.

## Constraints
- Keep UI steps numbered and minimal.
- Include a one-line “When to page a human” guideline.

Deliver the Preflight first, then Panel A, then B, C, then the Alert.
