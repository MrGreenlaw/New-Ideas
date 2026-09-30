# 06 — Experimentation Engine

Activity is not evidence. Each experiment has a pre-registered threshold; results are logged in
`execution/results/` (create when data exists). All currently **UNVALIDATED**.

| # | Hypothesis | Test | Metric | Success threshold | Failure condition | Next action |
|---|---|---|---|---|---|---|
| E1 | Mid-market industrial importers carry material in-window leakage + 232 exposure | Concierge scans on 10 importers (ES-003, 18 months) | Median $ found (in-window recoverable + annual 232 exposure); distribution by category | ≥6/10 >$50K | ≥6/10 <$15K | Pass → productise scan. Fail → kill wedge; test 232-only or rights-only product on 5 more before full kill |
| E2 | Importers will grant read-only ACE access to a start-up | Ask at end of 25 interviews | % saying yes and completing grant within 7 days | ≥8/25 grant | <3/25 | Fail → test via-broker access route and CPA-sponsored intros |
| E3 | Scans are worth paying for | Offer $2,500 scan (credited) after design-partner slots fill | Paid pilots in 30 days | ≥3 paid | 0 paid with positive scans | Fail → price is not the issue; value framing is — re-interview |
| E4 | Suppliers will certify metal/origin data | Request declarations from 30 suppliers of 3 pilots, via importer | Response within 14 days | ≥40% | <15% | Fail → drop network-moat claim; keep evidence ledger |
| E5 | Independent brokers will partner rather than resist | Pitch 15 small brokers | Signed white-label LOIs | ≥2 | 0 | Fail → CPA/fractional-CFO channel primary |
| E6 | Our checker adds value over free tools on hard cases | 200 SKUs adjudicated by licensed broker; compare vs Zonos free, CBP tool, frontier LLM zero-shot | Precision/recall on the hardest 20% | ≥15 pts better on hard 20% | Parity | Fail → never market AI accuracy; sell evidence + deadlines |
| E7 | Structure is lawful without our own licence at start | Customs counsel opinion (19 CFR 111 "customs business", supervision, contingency, UPL) | Written opinion | Workable with partner broker | Licence required first | Fail → acquire/partner licensed broker entity before launch |
| E8 | Customers will subscribe after the recovery | Offer Ledger at $1,500 / $3,500 / $7,000 tiers post-scan (randomised anchor) | Trial acceptance; paid conversion at 60 days | ≥30% trial; ≥15% paid | <10% trial | Fail → services model with success fees only (smaller company) |
| E9 | Regime-change content drives inbound | Publish impact brief within 24h of next proclamation/ruling (e.g., 301 FL decision) | Scan requests per brief | ≥10 qualified requests | <2 | Iterate channel |
| E10 | Landing page converts targeted traffic | Outbound links + $1–2K LinkedIn test to CFO titles at target firms | Visit → request | ≥4% | <1% | Rewrite value prop |

## Pricing experiments (inside E3/E8)
- **Scan:** free vs $2,500 credited vs $5,000 credited (alternate by week).
- **Success fee:** 15% capped at $150K/claim vs 10% uncapped — measure close rate and objections.
- **Ledger:** tiers by duty band vs flat $2,500 — measure acceptance and expansion intent.
- **Bundle:** Ledger 50% off with broker-partner referral — measure partner-sourced conversion.
- Van Westendorp questions in every interview (see interview guide Q18).

## Decision cadence
Weekly Friday review: each experiment's current value vs threshold; one go/modify/kill decision
logged per week. Day-30 memo is binding.
