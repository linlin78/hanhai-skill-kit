---
name: seo-research-toolkit
description: Research SEO keyword opportunities and competitor domains with a repeatable, privacy-safe workflow. Use when Codex needs to prepare keyword research, inspect search intent and competitors, open approved public SEO research pages, or turn user-supplied research data into an SEO opportunity brief. Do not use to access another person's accounts, scrape restricted data, or bypass website permissions.
---

# SEO Research Toolkit

## Workflow

1. Ask for the target keyword, competitor domain if available, target country/language, and the user's goal.
2. Read [research-workflow.md](references/research-workflow.md). Use only the relevant steps.
3. If the user wants browser tabs opened on Windows, run `scripts/open-seo-research.ps1` with the supplied values. The script opens public research pages only; it never selects a browser profile or signs in.
4. Ask the user to sign in to any service they personally use and to paste only non-sensitive findings. Never request passwords, cookies, API keys, or account exports.
5. Read [opportunity-brief-template.md](references/opportunity-brief-template.md) and produce a concise brief with evidence, assumptions, priority, and next actions.

## Guardrails

- Do not embed or search for a specific Google account, browser profile, cookie, or credential.
- Do not treat a search-result count, KGR-style ratio, or one third-party metric as a decision by itself.
- Do not claim search volume, ranking difficulty, or competitor traffic without user-provided data or cited current sources.
- Use public pages and legitimate user-authorized sessions only. Do not scrape gated services or attempt to bypass rate limits, paywalls, or permissions.
- Label estimates and missing data clearly.
