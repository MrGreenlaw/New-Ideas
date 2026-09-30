# 09 — KPI Dashboard Specification

One page, reviewed weekly. Green/amber/red thresholds from the experiment plan and blueprint.

## North-star
**Duty dollars under management with evidence** (sum of annual duty for SKUs in active Ledgers
with signed determinations). Captures adoption, depth and value in one number.

## Funnel (weekly)
| Metric | Definition | Green | Amber | Red |
|---|---|---|---|---|
| Targeted contacts | New scored prospects contacted | ≥150/wk (month 1) | 75–149 | <75 |
| Meetings | First meetings held | ≥8/wk | 4–7 | <4 |
| ACE grants | Access granted within 7 days of ask | ≥30% of asks | 15–29% | <15% |
| Scans delivered | Completed, broker-signed | ≥2/wk by week 3 | 1 | 0 |
| Scan hit rate | Scans >$50K | ≥60% | 40–59% | <40% |
| Scan → paid | Paid pilot or Ledger within 30 days | ≥30% | 15–29% | <15% |

## Revenue & retention (monthly)
| Metric | Green | Red |
|---|---|---|
| Ledger ARR | on base-case path ($0.6M exit Y1) | <50% of path |
| Success fees invoiced / collected | collection lag ≤120 days | >240 days |
| NRR (from month 12) | ≥110% | <95% |
| Logo churn (annualised) | ≤12% | >25% |
| CAC payback (GP) | ≤12 months | >18 months |

## Quality & risk (monthly)
| Metric | Green | Red |
|---|---|---|
| Deadlines missed | 0 | any |
| Determination error rate (blind sample) | ≤1% | >3% |
| CBP challenges on our determinations (CF-28/29 adverse) | tracked; ≤ industry baseline | trend rising |
| Reviewer minutes per SKU | falling ≥10%/quarter | flat/rising |
| Supplier declaration response | ≥40% | <15% |

## Implementation
Postgres views over CRM + product DB; a simple Metabase/Grafana board; Friday review writes a
one-line decision per red metric into `execution/results/decision-log.md`.
