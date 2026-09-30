# E — Technical Architect (Sonnet analyst, 2026-09-30)

## 1. Data access
- Importer creates an ACE Secure Data Portal account (days to 2–3 weeks, C); account owner can grant Reports access to a third party as a user (B).
- **ES-003 "Entry Summary Line Tariff Details"** report is the workhorse (A/B): entry summary number, dates, line, HTS, line goods value, line duty, liquidation status/date; designer can add origin, MID, MPF/HMF, AD/CVD, Chapter 99 lines (C).
- No public REST API for ACE Reports; CSV export or scheduled delivery; RPA pulls are a terms risk (C). Retention depth UNVERIFIED — test before promising lookback.
- **Importer sees all entries under its IOR regardless of broker** (B) → an audit needs no broker licence.
- CF-28/29 notices go to filer; not cleanly exportable → **proprietary outcome-data opportunity**.

## 2. Filing
- Routes: (1) partner licensed broker (fastest; broker must exercise "responsible supervision and control", 19 CFR 111.1); (2) buy ABI via certified vendor (CBP ABI vendor list Sept 2025, A); (3) build own ABI (9–18 months, $300–800K; not recommended).
- Corporate licence needs ≥1 licensed officer; months of CBP approval; national permit; filer code. De novo: 6–12+ months. Acquiring a small broker transfers liabilities.

## 3. AI capability
- **ATLAS benchmark (arXiv 2509.18400, A)**: fine-tuned LLaMA-3.3-70B on 18,731 CROSS examples → 40% fully-correct 10-digit, 57.5% 6-digit on hard rulings; beats GPT-5-Thinking by ~15 pts at 5–8x lower cost. Hard benchmark ≠ production accuracy on well-specified SKUs.
- Vendor 90–95% claims unaudited (D).
- Pipeline: attribute extraction → structured GRI 1–6 walk → ruling retrieval (exclude revoked) → exclusionary-note check → ranked output with cited authority + confidence; HTSUS versioned by effective date.
- Auto-approve only repeat SKUs with unchanged attributes matching a broker-approved decision; expect 30–60% human review on novel SKUs initially.
- 232/301: automate evidence collection (BOMs, mill certs, process evidence), not final legal determination.

## 4. Architecture (summary)
Ingest (ES-003 CSV, invoices/BOMs via OCR+LLM, supplier portal) → SKU knowledge graph → classification engine (HTSUS versioned, CROSS index, CSMS/FR feed) → broker review queue → tariff rules engine (232/301/AD-CVD/MPF/HMF/FTAs) → entry generator → ABI vendor/partner → ACE → outcome capture (CF-28/29, liquidation, rejects) → audit engine; append-only hash-chained evidence vault (≥5-yr retention, 19 USC 1508).
Audit engine must also find **underpayments → counsel-reviewed prior-disclosure workflow** (ethical/legal gate).

**Commodity**: LLMs, OCR, embeddings, HTSUS/CROSS text, ABI transport. **Proprietary/compounding**: outcome data (CF-28/29, liquidation, protest/PSC results by SKU/port), supplier-certified origin/metal data, broker-approved SKU classification graph, override logs.

## 5. Scope
- **8 weeks / 2 engineers**: ES-003 ingestion; HTSUS+Ch.99 versioned rate engine; CROSS retrieval; LLM classification *checker*; audit engine ranking by $ and deadline; reviewer UI + evidence-pack export. No filing.
- **6–12 months**: ABI via vendor + partner filer code; PSC/protest workflow; drawback; supplier portal; evidence vault; outcome ingestion.
- Bottlenecks: ACE pull friction; ground truth (historical filings often wrong); legal reasoning accuracy; product-data quality; liability of discovering underpayments.
- Existential dependencies: LLM vendors (mitigate: multi-vendor + fine-tuned open-weight fallback), ABI vendor/partner broker, ACE policy/outages, 19 CFR 111 supervision rules.

## 6. Costs (C)
Infra $2–8K/month pilot; LLM $0.05–0.50/line; 5-yr audit inference $1–30K per importer before SKU dedup (10–50x dedup); ABI vendor hundreds–few $K/month + $2–10/entry; E&O $5–25K/yr small; licensed qualifier $120–200K salary.
