# 05 — MVP Specification (8 weeks, 2 engineers + 1 licensed broker)

## Objective
Test the core economic hypothesis: *mid-market industrial importers have ≥$50K of in-window
recoverable or avoidable duty exposure, will grant data access to find it, and will pay to keep it
found.* Not "build the platform."

## Scope

| In (weeks 1–8) | Out (later) |
|---|---|
| ES-003 CSV ingestion + normalisation | Direct ACE automation / RPA |
| Item-master CSV ingestion | ERP connectors |
| HTSUS + Chapter 99 effective-dated rate tables (USITC data) | Full global tariff coverage |
| Stacking engine: MFN, 301 (legacy China + forced-labour), 232 (metals full-value + 15% rule, furniture/cabinets), AD/CVD flag, MPF/HMF | Automated AD/CVD rate lookup |
| Deadline engine: liquidation date, PSC eligibility, protest window, 1520(d), drawback window | Automated filing of PSC/protests |
| Classification **checker** (second opinion on filed HTS) with CROSS retrieval + cited evidence | Greenfield classification at entry time |
| 232 evidence list (SKUs near/above 15%; missing evidence) | Supplier portal automation (manual email in MVP) |
| Litigation watch: 301 FL entries + liquidation dates | Automated CIT docket integration |
| Reviewer UI: queue by $ × deadline; approve/reject/annotate | Multi-tenant self-serve |
| Exposure Report (PDF + CSV) and evidence packs | Dashboards beyond a single page |
| Append-only evidence log (hash-chained) | Full evidence vault product |

## Manual behind the scenes (concierge)
Onboarding calls; ACE access walkthrough; supplier emails for metal/origin declarations; final
determinations by licensed broker; hand-off memos to customer's broker and counsel.

## Data model (core tables)
- `importer(id, name, ior_number_hash, duty_band, broker_name)`
- `entry(id, importer_id, entry_no, entry_date, port, filer_code, liquidation_status, liquidation_date)`
- `entry_line(id, entry_id, line_no, hts_filed, ch99_lines[], origin, value, duty_paid, qty)`
- `sku(id, importer_id, sku_code, description, attributes_json, supplier_id)`
- `sku_entry_link(sku_id, entry_line_id, confidence)`
- `rate_table(hts, ch99, program, rate, effective_from, effective_to, source_url)`
- `finding(id, importer_id, type[PSC|protest|1520d|drawback|232_exposure|301_rights|underpayment], $amount, deadline, status, evidence_ids[])`
- `evidence(id, kind[ruling|document|supplier_decl|note], uri, hash, prev_hash, created_by, created_at)`
- `review(id, finding_id, reviewer_license_no, decision, rationale, signed_at)`

## Pipeline
1. Upload ES-003 CSV(s) → validate columns → normalise → `entry`, `entry_line`.
2. Upload item master → fuzzy-link SKUs to lines (description + HTS + supplier) → human confirm low-confidence links.
3. For each line: recompute expected duty from `rate_table` at entry date and origin → delta vs `duty_paid`.
4. Deadline engine → eligibility per mechanism.
5. Checker: for high-$ lines, LLM with retrieval over HTSUS notes + CROSS → alternative HTS with citations + confidence; only surface if Δduty × confidence > threshold.
6. 232 module: flag SKUs in derivative scope; estimate metal share from descriptions/BOMs; mark evidence gaps.
7. Findings ranked by $ × urgency → reviewer queue → licensed broker decision → report.

## Stack (suggested)
Python (FastAPI), Postgres, pgvector, object storage; LLM via 2 vendors behind a router; batch
inference; single-tenant schemas per customer; SOC 2-ready logging from day 1.

## Sprint plan
| Week | Deliverable |
|---|---|
| 1 | ES-003 parser; rate-table loader for Ch.99; test on public sample data + 1 design partner |
| 2 | Stacking engine v0 (MFN, 301, 232); deadline engine; unit tests against broker-worked examples |
| 3 | Findings + ranking; reviewer UI v0; first concierge scans |
| 4 | CROSS ingestion + retrieval; checker v0; evidence log |
| 5 | 232 module; report generator (PDF/CSV) |
| 6 | Benchmark set (200 SKUs, broker-adjudicated) → E6 |
| 7 | Ledger alpha: rights calendar + alerts; supplier declaration tracker (manual) |
| 8 | Hardening; security review; pilot conversions |

## Success metrics
- Scan turnaround ≤14 days (MVP), ≤5 days (by day 100)
- Reviewer minutes per $10K of findings (baseline, then trend)
- Recompute accuracy: ≥99% agreement with broker-worked duty on a 100-line test set
- Checker: precision ≥80% on surfaced alternatives (broker-adjudicated)

## Kill / pivot signals
See BLUEPRINT "KILL CRITERIA". Technical kill: recompute accuracy <95% after week 4 (rules too
volatile to model cheaply) → narrow scope to 232 + deadlines only.

## Estimated cost (90 days, C)
2 engineers (or founders) + contract licensed broker (~$15–25K) + counsel (~$15–30K) + data/BOL
subscription (~$3–10K) + cloud/LLM (~$3–8K) + E&O (~$5–15K bound) ≈ **$50–100K cash excluding
founder salaries**; ~$250–350K fully loaded.
