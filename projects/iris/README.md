# IRIS – Incident Response Intelligence System

IRIS is a personal AI-powered SOC copilot designed to streamline the daily workflow of security analysts. It automates alert triage, log analysis, threat-intel enrichment, and incident report generation — all with a local-first, privacy-respecting design.

## Key Features (MVP)

- Alert triage from SIEM logs (e.g., Splunk, Sentinel)
- Log parsing with anomaly detection (Windows, Linux, network)
- IOC enrichment from local cache or APIs (VirusTotal, AbuseIPDB)
- Terminal command recommendations with explanation
- Markdown-formatted incident report generation
- End-of-shift log export for personal tracking

## Architecture Overview

Log files and alerts are parsed and summarized. Indicators of compromise are extracted and optionally enriched. Based on the inputs, incident reports are auto-generated and shift activity is logged. The system is CLI-driven, with future plans for a dashboard interface.

## Getting Started

Clone the repository:

    git clone https://github.com/00rders/iris.git
    cd iris

Set up your environment:

    python -m venv .venv
    source .venv/Scripts/activate
    pip install -r requirements.txt

Run the assistant:

    python assistant/main.py --help

## Requirements

- Python 3.10+
- Git
- Optional: API keys for enrichment services (stored in config.toml)

## Project Structure

- assistant/
  - main.py
  - modules/
    - alert_triage.py
    - log_parser.py
    - intel.py
    - command_helper.py
    - report_writer.py
  - utils/
    - config.py
    - io_handler.py
- data/
  - sample_logs/
  - sample_alerts/
  - mappings/
- docs/
  - architecture.md
  - modules.md
  - roadmap.md
- scripts/
  - setup.sh
  - run_local.sh
- tests/
  - __init__.py
- requirements.txt
- README.md

## Roadmap

Phase 1: Core Foundation
- CLI interface
- Alert ingestion and summary
- Log parsing
- Markdown incident report generator
- Shift log exporter

Phase 2: Intelligence and Automation
- Threat intel enrichment
- MITRE tactic mapping
- Command suggestion engine

Phase 3: AI Integration
- GPT or local LLM assistant interface
- Natural language input

Phase 4: UI and Packaging
- Terminal dashboard (TUI)
- Installable package support
- Config-driven setup

Phase 5: Release and Docs
- Contributor guide
- Sample data and test runs
- Public documentation and licensing

## Contributing

Contributions are welcome. Please open an issue or submit a pull request. See `docs/roadmap.md` for project plans and task breakdowns.

## License

MIT License. See LICENSE for full terms.

## Credits

Inspired by real-world SOC analyst workflows, the MITRE ATT&CK Framework, and the DFIR open-source community.

