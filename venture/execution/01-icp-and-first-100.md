# 01 — Ideal Customer Profile and the First 100 Customers

Status: **UNVALIDATED.** Archetypes are hypotheses built from sourced regulation and simulated buyers
(`research/03-role-analysts/D-customer.md`). No named company below is a confirmed prospect; the
list-building method produces the names.

## Qualification scorecard (score every prospect 0–2 per line; pursue ≥9/14)

| Signal | 0 | 1 | 2 |
|---|---|---|---|
| Annual imports (BOL data) | <$5M | $5–20M | $20–150M |
| 232 derivative exposure (HTS ch. 72–76, 84–85, 94 with metal) | none | some lines | core product lines |
| Origin count | 1 | 2 | 3+ incl. CN/VN/MX |
| Compliance staff | dedicated team of 3+ | 1–2 | 0 (ops/finance owns it) |
| Broker model | single large broker with audit service | forwarder-bundled | local/independent broker |
| Trigger in last 90 days | none | industry-level | company-specific (job post, earnings mention, bond, CIT suit) |
| Decision-maker reachable | no | via intro | direct (CFO/Controller) |

## Five archetypes

| # | Archetype | Size | Buyer / user | Current solution | Pain | Economic impact (C) | Trigger | Procurement | Expected WTP | Objections | Switching barriers |
|---|---|---|---|---|---|---|---|---|---|---|---|
| A1 | **Industrial distributor** (fasteners, fittings, electrical, HVAC/R parts, bearings, tools) | $50–500M rev; 2–20K SKUs | CFO/Controller / purchasing or compliance analyst | Local broker; Excel | 232 cliff across thousands of SKUs; supplier data poor | $0.2–1.5M/yr exposure | New derivative inclusion; CF-28 | CFO + legal; 8–14 wks | $2.5–7K/mo + success | "Will this trigger CBP?" "My broker does it" | Broker POA; ERP integration |
| A2 | **Small/mid manufacturer** importing metal components (machinery, pumps, motors, auto aftermarket, equipment) | $30–300M rev | CFO / supply-chain or engineering | Forwarder broker; engineering holds BOMs | BOM-level metal & origin determination; USMCA flows | $0.1–1M/yr | Sourcing shift to MX/VN; margin pressure | CFO + ops; 6–12 wks | $1.5–5K/mo | Data-sharing fear; bandwidth | Engineering time to supply BOMs |
| A3 | **Consumer durables brand** (furniture/cabinet hardware, cookware, outdoor, fitness) | $30–300M rev | CFO / VP ops | Forwarder-bundled brokerage | 232 furniture/cabinet rules (25% → 30–50% Jan 2027), multi-origin | $0.2–2M/yr | Jan 2027 rate step-ups; retailer price pressure | VP Ops + CFO; 6–10 wks | $1.5–5K/mo | Forwarder politics | Bundled freight contract |
| A4 | **Litigation-aware importer** (already sued or considering CIT suit on 301 FL) | any in band | GC/CFO | Trade counsel | Tracking liquidation, protests and suits across thousands of entries | Preserved refunds could be 10–12.5% of duty paid since Jul 24, 2026 | CIT 301 ruling (pending) | GC; 4–8 wks | $3–7K/mo | "Our lawyer handles it" | Law-firm relationship (→ partner, don't fight) |
| A5 | **Exporter-importer** (imports inputs, exports finished goods) | $50–500M | CFO / tax | None for drawback | Unclaimed drawback on 301/232 duties | 99% of duty on exported inputs | New export contracts | CFO; 6–10 wks | success fee + $1.5–3.5K/mo | Complexity | None significant |

**Priority order for the first 10:** A1 ×4, A2 ×3, A3 ×2, A4 ×1. A5 only if found incidentally.

## Building the first 100 (method — produces real names)

1. **Bill-of-lading data** (ImportGenius / Panjiva / ImportYeti free tier for testing):
   filter US consignees by HTS ch. 72, 73, 76, 74, 84, 85, 94 lines; origins CN/VN/MX/TW/IN;
   estimated annual import value $5–150M. Export ~600 names.
2. **Enrich** (Apollo/ZoomInfo/LinkedIn): revenue $30–500M, US HQ, CFO/Controller + any
   "trade compliance", "import", "customs" title.
3. **Trigger overlay:**
   - Job postings: "trade compliance", "customs analyst", "import compliance" (Indeed/LinkedIn).
   - EDGAR full-text search (efts.sec.gov): "Section 232", "tariff", "derivative" in 10-Q/10-K
     of small caps → then target *their private suppliers and peers* (small caps themselves
     are often above band).
   - CIT dockets (CourtListener): plaintiffs in 301 FL and IEEPA suits → A4.
   - Trade press: margin warnings citing tariffs (Supply Chain Dive, Sourcing Journal,
     Industrial Distribution, Modern Distribution Management).
4. **Associations and warm paths:** NAW (National Association of Wholesaler-Distributors),
   Industrial Fasteners Institute, Power Transmission Distributors Association, HARDI (HVAC),
   NAED (electrical), AHFA (furniture), MEMA (auto aftermarket); regional manufacturing
   extension partnerships (MEP centres); fractional-CFO networks; CPA firms with manufacturing
   practices.
5. **Score** with the scorecard; keep top 100; assign archetype; record trigger and source.

## Tracking sheet schema (CRM fields)

`company, archetype, est_import_value, hts_chapters, origins, revenue, cfo_name, compliance_contact,
broker_name, trigger, trigger_source_url, score, warm_path, status, ace_access(y/n), scan_date,
scan_findings_$, pilot_paid(y/n), ledger_tier, notes`
