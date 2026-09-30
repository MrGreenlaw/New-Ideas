# Keelson — Company Blueprint

*Working name; trademark not yet checked. Date: 2026-09-30.*

**Evidence convention.** Every material claim is graded:
- **A** — directly verified, with source.
- **B** — strongly supported.
- **C** — reasonable inference.
- **D** — speculative.

**UNVERIFIED / UNVALIDATED** marks anything not yet tested against the real world. **No customer validation has occurred yet. Every customer statement in this document is a hypothesis or a simulation.**

Research trail: `venture/research/`
- `00` long list
- `01a–g` seven landscape analysts
- `02` scorecard
- `03-role-analysts/A–H` eight adversarial analysts
- `04` debate resolution

Model: `venture/model/`. Execution kit: `venture/execution/`.

---

## EXECUTIVE SUMMARY

**The opportunity.** US customs duty has become a first-order cost line for mid-market manufacturers and distributors. The system that manages it is still a clerical per-entry service, built for a world of 2–3% average duty. **Keelson** is a broker-neutral system of record for three questions:
- What duty should each SKU bear?
- Can we prove it?
- Which refund rights are open, and when do they expire?

It is operated with licensed customs brokers and sold to the CFO.

**Why it exists now.**
- **Duty collections.** They rose to ~$195B in FY2025, versus roughly $80B before the tariff escalation (A/B, CRFB/Treasury).
- **Volatility.** The legal basis of US tariffs has changed more than 50 times since January 2025 (B, Tax Foundation):
  - The Supreme Court struck down IEEPA tariffs on 20 Feb 2026 (A).
  - A Section 122 surcharge was then struck down by the Court of International Trade (CIT) and expired (A/B).
  - Section 301 "forced-labour" tariffs of 10–12.5% on 60 economies took effect on 24 July 2026 (A).
  - Those 301 tariffs were argued before a sceptical CIT panel today, 30 Sept 2026 (B).
- **Section 232 created a cliff.** Since 6 Apr 2026, a derivative product with more than 15% foreign metal by weight pays 25% of its **entire** customs value. At 15% or less it pays nothing (A). That makes supplier bill-of-materials (BOM) evidence worth real money per SKU.
- **Refund rights are perishable, and most importers lose them.** In July 2026 the CIT ordered IEEPA refunds on finally liquidated entries only for the ~3,700 importers that had sued (A/B). Everyone else waits on an appeal.
- **Labour cannot scale.** The April 2026 customs-broker exam pass rate was 22% (A).
- **AI can now do the heavy reading.** Current models can read invoices, BOMs and CBP rulings well enough to assemble evidence packs for a licensed human to sign. Hard 10-digit classification is still only ~40% fully correct on a difficult benchmark (A, ATLAS arXiv 2509.18400). So the product is evidence plus human sign-off, not autopilot.

**The wedge.**
- A 14-day **Tariff Exposure Scan** of the importer's last 18 months of ACE entry data, which needs no customs licence.
- It finds three things: in-window recoveries (post-summary corrections, protests, USMCA 1520(d) claims, drawback), Section 232 cliff exposure, and open refund rights under pending litigation.
- It converts to a **subscription**. The subscription covers:
  - a SKU-level evidence ledger;
  - supplier metal and origin certifications;
  - a refund-rights calendar that tracks liquidation dates and protest deadlines, and routes cases to partner counsel for CIT filings;
  - accrual-grade exposure reporting.
- A capped 10–15% success fee applies only to in-window recoveries.

**First customer.** A US manufacturer or distributor with $50–500M revenue, importing steel, aluminium or copper derivative products and multi-origin components. It typically has one or no in-house trade-compliance people (simulated as the most receptive buyer; UNVALIDATED).

**Economics** (base case, `venture/model/output.md`, all C/D):

| Metric | Value |
|---|---|
| Revenue | $0.6M in year 1, $11M in year 3, $60M in year 5 |
| Gross margin | 72% |
| Recurring share | 85% by year 5 |
| Peak burn | ~$13M |

**Ceiling, stated honestly.**
- Base-case outcome: a $0.5–2B company (C).
- A $10B+ outcome requires becoming the cross-border compliance system of record, the "Avalara of customs". That means a supplier evidence network, transaction-level filing and global reach. I put the probability at ~5% (D).
- This is the best evidence-backed opportunity found across 35+ candidates in 7 territories. It is **not** a sure multi-billion-dollar business. It is a fast-to-revenue, capital-efficient business with a real but narrow path to one.

**The first test.** In 30 days, pull ACE data from 10 target importers.
- **Proceed** if at least 6 of 10 show more than $50K of in-window recoverable duty or 232 exposure, and at least 3 sign paid pilots.
- **Kill or pivot** if at least 6 of 10 show under $15K.

---

## THE COMPANY

**Name.** Keelson, after the timber that runs the length of a ship's hull and keeps its shape under load.

**One sentence.** Keelson tells mid-market importers what duty every product should bear, proves it with supplier evidence, and makes sure no refund right expires unclaimed.

**One paragraph.** Keelson is a broker-neutral tariff exposure and refund-rights platform for US manufacturers and distributors.
- It connects to the importer's ACE entry history, ERP item master and supplier base.
- It builds a SKU-level ledger: classification with cited authority, country of origin with substantial-transformation evidence, Section 232 metal content with mill certificates, and Section 301/232/AD-CVD stacking.
- Every correction window (post-summary correction, protest, 1520(d), drawback) and every litigation-dependent refund right is tracked against a deadline.
- Licensed customs brokers, on staff or under partnership, sign every determination, and partner trade counsel handles litigation.
- The customer's existing broker keeps filing entries. Keelson makes that filing cheaper, safer and refundable.

**Long-term vision.** The system of record for cross-border product compliance. Every SKU that crosses a border would carry a verified, portable compliance identity:
- classification
- origin
- material content
- forced-labour traceability
- preference eligibility

Suppliers certify it once. Importers, brokers, customs authorities and lenders rely on it. On top of that record sit transaction-level filing, duty financing and global expansion as the EU and UK dismantle their low-value exemptions (2026–2028, B).

---

## THE PROBLEM

**Who has it.** Roughly 35,000 US importers pay $250K–$25M of duty a year (C/D, derived from Census totals; must be validated against Census Table 1). The sharpest pain sits with manufacturers and distributors importing metal-bearing derivatives and multi-origin components.

**How painful** (C, from sourced mechanics plus simulated buyers, UNVALIDATED):
- **Section 232 cliff.** One BOM error turns 0% into 25% of full value on a line, or creates a penalty exposure if under-declared. Sourced example: a $15K engine with $1K of steel went from $500 to $3,750 of duty (B, sourced via customer analyst).
- **Stacking.** 301 on 60 economies, plus 232, plus AD/CVD, plus MFN, plus MPF/HMF, all changing by proclamation. The customer's broker files "what they filed last time" (C).
- **Perishable rights.**
  - Post-summary corrections are only possible before liquidation (≤300 days) (A).
  - A protest must be filed within 180 days of liquidation (A).
  - USMCA 1520(d) claims must be made within 1 year of importation (A).
  - Refunds on finally liquidated entries went only to litigants (A/B).
- **Bonds.** Continuous-bond sufficiency is reviewed monthly, with a 30-day cure period. A record ~$3.5–3.6B of insufficiencies was flagged in FY2025 (A/B).
- **Enforcement.** The DOJ-DHS Trade Fraud Task Force, formed 29 Aug 2025, uses the False Claims Act against misclassification and origin fraud and reports ~$1B of recoveries (B).

**What it costs.**
- A mid-market importer spends ~$200–600K a year on brokerage, bonds, consulting and 1–3 compliance staff, excluding duty (C).
- Leakage from misclassification, missed preferences and lost refund rights is estimated at 1–3% of duty, about $1–3B a year across the segment (C/D; unmeasured, and the key experiment below measures it).

**How it is solved today.** A forwarder-bundled or local broker paid ~$100–250 per entry (B). One analyst works in Excel, with an outside trade lawyer for hard calls and a tariff newsletter.

**Why that is inadequate.**
1. **Brokers are paid per entry, not per dollar of duty saved or right preserved.** That incentive mismatch was cheap at 2% duty and is expensive at 10–50% (C).
2. **ACE shows what was filed, not why.** No one holds the evidence (C).
3. **Nobody owns the deadline calendar for refund rights across brokers and entries** (C).
4. **Enterprise trade suites cost $50–250K+ a year and are built for large companies**, such as Descartes, ONESOURCE and SAP GTS (B).

---

## THE INSIGHT

**Tariff volatility, not the tariff level, is the durable product.** Every change of legal authority creates three events for every affected SKU: a new determination, a new stacking calculation, and a new refund right that expires if untracked.
- The US has shown it will keep changing authorities, and courts have shown they will keep striking some down.
- Each strike-down creates a refund wave that pays importers in proportion to the evidence they kept and the deadlines they tracked.
- Competitors sell classification (being commoditised: Zonos gives away 1,000 classifications free, and CBP has its own tool) or refund recovery (a one-off, with prices falling to 4–15%) (C/B).
- **Nobody sells the thing that compounds: a per-SKU evidence and rights ledger that pays out at every regime change.**

**Second insight: the 232 cliff turns supplier data into money.** Metal content by weight decides whether a product pays 0% or 25% of full value (A).
- Evidence has to come from suppliers.
- A supplier who certifies once can be reused by every importer that buys from them.
- That creates a cross-importer network effect that classification tools do not have (C/D; needs validation that suppliers will participate).

**Why this is not obvious yet.**
- Before 2025, duty was a rounding error, so no CFO would buy a duty ledger.
- The 2026 IEEPA refund rush pointed every competitor at a one-off refund pool rather than a recurring rights ledger (C).
- The lesson that "only importers who sued got refunds on liquidated entries" arrived only in July 2026 (A/B).

---

## WHY NOW

| Structural change | Evidence | Grade |
|---|---|---|
| Duty became material | ~$195B FY25 duties; ~11% average statutory rate post-301 (Yale Budget Lab) | A/B |
| Legal authority keeps changing | IEEPA struck (Feb 2026), 122 struck/expired, 301 FL under challenge (heard 30 Sept 2026) | A/B |
| 232 cliff (full value, 15% by weight) | Proclamation effective 6 Apr 2026 | A |
| Refund rights demonstrably perishable | CIT July 2026 orders limited to litigants | A/B |
| 301 FL duties are drawback-eligible | Alliance CHB | B |
| Broker labour constrained | 22% exam pass rate (Apr 2026) | A |
| AI can read trade documents and retrieve rulings | ATLAS benchmark; vendor tools | A/C |
| De minimis repealed by statute from 1 Jul 2027; EU €150 exemption ended 1 Jul 2026; UK by Oct 2028 | OBBBA; EU Reg. 2026/382; HMT | B |

**Could this have been built 10 years ago?** Technically, partly. Economically, no. Average duty was ~2–3%, authorities were stable, and nobody lost material refund rights. The payoff did not exist (C).

---

## PRODUCT

**Initial product (months 0–6): Keelson Scan → Keelson Ledger.**

1. **Connect (day 0–3).**
   - The importer's ACE account owner grants Keelson ACE Reports access (no licence needed; B). Keelson pulls ES-003 line-level entry data for 18 months.
   - The importer uploads the item master (CSV/ERP export) and a supplier list.
2. **Scan (day 3–14).**
   - The engine recomputes every line's duty under the correct stacking, by effective date.
   - It flags:
     - (a) in-window recoveries: post-summary correction candidates (unliquidated), protest candidates (≤180 days after liquidation), USMCA 1520(d) claims (≤1 year), and drawback where goods were exported;
     - (b) 232 cliff SKUs where metal-content evidence is missing or likely wrong;
     - (c) open refund rights tied to pending litigation, currently the 301 forced-labour tariffs, with liquidation dates;
     - (d) underpayment exposure, routed to a counsel-reviewed prior-disclosure workflow and never hidden.
   - A licensed broker reviews and signs.
   - Output: a board-ready Exposure Report giving dollars by category and deadline, plus an evidence pack per finding.
3. **Ledger (subscription).**
   - SKU evidence records: HTS with cited rulings, origin evidence, metal content with certificates.
   - Supplier certification portal.
   - Rights calendar with alerts at T-60, T-30 and T-7 days.
   - Exposure and accrual report for month-end close.
   - Monthly "regime change" impact reports: which SKUs a new proclamation hits, and by how many dollars.
   - Hand-offs to the customer's broker (corrected classification instructions) and to partner counsel (protests, CIT filings).
4. **Later (months 9–24).** Filing through a partner broker's filer code, then through Keelson's own corporate licence and a certified ABI vendor; ongoing drawback.

**User experience (CFO view).**
- The home screen shows: *Duty paid (trailing 12 months) $6.2M · Recoverable now $184K (7 items, next deadline in 23 days) · Refund rights preserved $1.1M (301 FL, pending CIT) · 232 cliff SKUs lacking evidence: 38 ($420K annual exposure).*
- Each item opens an evidence pack, then an approve/route action. The analyst view is a work queue sorted by dollars × deadline.

Full MVP spec: `venture/execution/05-mvp-spec.md`.

---

## INITIAL CUSTOMER

- **Company type.** US manufacturer or industrial distributor of machinery parts, fasteners, fixtures, HVAC and electrical components, auto aftermarket parts, furniture/cabinet hardware, or metal consumer durables.
- **Revenue.** $50–500M.
- **Imports.** $10–150M a year from 3+ countries (China, Vietnam, Mexico, Taiwan, India).
- **Exposure.** Section 232 derivative exposure (HTS chapters 72–76 and 84–85 lines with metal content).
- **Team.** 0–2 trade-compliance staff.
- **Buyer.** CFO or Controller, who owns the budget.
- **User.** The trade-compliance analyst or supply-chain manager.
- **Current solution.** A forwarder or local broker, spreadsheets, and an outside trade lawyer.
- **Trigger events.**
  - A new 232 derivative proclamation or inclusion.
  - A CF-28/CF-29 request from CBP.
  - Bond insufficiency notice.
  - Analyst departure.
  - An auditor question on the duty accrual.
  - Earnings or margin pressure.
  - A pending court decision (the 301 FL ruling).

The full archetype set (5 archetypes, first 100 targets, and list-building method) is in `venture/execution/01-icp-and-first-100.md`.

---

## BUSINESS MODEL

| Stream | Price (initial hypothesis, to be tested) | Gross margin now → scale (C) |
|---|---|---|
| **Scan** | $2,500, credited against success fees; waived for design partners | ~50% |
| **Ledger subscription** | $1,500/mo (<$1M duty) · $3,500/mo ($1–5M) · $7,000+/mo (>$5M); annual prepay | 70% → 82% |
| **Success fee** | 15% ≤$250K recovered, 10% above; capped per claim; **only on in-window retrospective claims**; cash-received basis | 55% → 70% |
| **Brokerage** (year 2+) | ~$95/entry + line fees, via partner revenue share, then own licence | 55% → 80% |
| **Later** | Supplier-network fees, drawback-as-a-service, bond placement commissions | — |

**Rules that are never broken** (from the business-model analyst; they protect against 19 USC 1592 and False Claims Act exposure):
1. No share of ongoing duty "savings" on live entries.
2. Never front a client's duty; the importer pays CBP directly through its own periodic monthly statement.
3. Revenue is booked net of duty.

---

## MARKET

All C/D until the Census band table and scan data replace the assumptions (see `research/03-role-analysts/A-market-researcher.md`).

| Layer | Calculation | Size |
|---|---|---|
| **TAM** (US mid-market, all-in compliance spend) | ~35K importers × ~$300K | ~$10.5B/yr (~$7.5B is internal headcount) |
| **SAM** (software + managed compliance) | 35K × ~$35K ACV | ~$1.2B/yr (range $0.7–1.8B) |
| + recurring recovery fees | | $0.06–0.2B/yr |
| + brokerage (mid-market share of $5.2–5.5B US market) | | ~$1.9B |
| **SOM** (year 5, base model) | 850 customers ≈ 2.4% of segment | ~$60M revenue |
| Expansion | Upmarket (~600 importers >$25M duty); EU/UK after the 2028 data-hub dates; supplier network | Upside |

**The honest read.** The US mid-market alone supports a very good $50–150M ARR business. Getting beyond that requires upmarket expansion, brokerage attach and international expansion.

---

## COMPETITION

| Category | Players (evidence in `03-role-analysts/B`) | Their strength | Our differentiation |
|---|---|---|---|
| AI-native recovery / brokers | **Caspian** (licensed, ABI, $5.4M seed, 200+ merchants, >$40M refunds filed), Pax, Tarifflo, Alchemize, Forge | Licence, recovery focus | Industrial 232/BOM evidence; broker-neutral; rights ledger, not one-off refunds |
| Well-funded forwarder/broker | **Flexport** ($2.7B raised; refund calculator; "Audit Your Customs Broker" agent; drawback) | Scale, bundling | Flexport *is* a broker, so its audit is conflicted; freight-first; weak on industrial BOM evidence |
| AI for brokers | Altana (+Cervo), Amari, Gaia | Arm incumbents | Their AI makes our partner brokers better; we own the importer relationship and data |
| Software incumbents | Descartes ($729M FY26 revenue), WiseTech/e2open, ONESOURCE, SAP GTS | Enterprise depth, ABI | Price ($50–250K+) and complexity exclude the mid-market |
| Services | Big 4, trade law firms, drawback specialists | Trust | Partners for litigation; we are the always-on layer they lack |
| Substitutes | Existing broker + spreadsheet + newsletter | Zero switching | Zero-risk scan; keep your broker |
| Internal build | Large importers only | Control | Mid-market lacks the staff |

**Most dangerous: Flexport.** It can give an audit away free to win freight and brokerage. Our defence:
- Serve importers who do not want a freight provider auditing its own filings.
- Go deep where Flexport is shallow: supplier metal and origin evidence, and deadline-tracked rights.
- Partner with the non-Flexport broker ecosystem, which sees Flexport as a threat.

---

## MOAT

It is weak at the start, and that should be said plainly. It compounds in five layers:
1. **Deadline-bearing workflow lock-in** (C). Once the rights calendar and accrual report run a customer's close, switching risks missing a protest deadline. Customers do not churn from the system that holds their deadlines.
2. **Supplier evidence network** (D, the key unvalidated moat). Supplier metal and origin certifications are reusable across every importer buying from that supplier. Each new importer makes onboarding the next one cheaper.
3. **Outcome data** (C). Only a system in the loop sees CF-28/29 questions, liquidation changes, protest results and litigation outcomes by SKU, port and ruling. That becomes a training set and an underwriting signal nobody else has at mid-market scale.
4. **Broker-approved SKU graph** (C). Licensed sign-offs create trusted classifications. Overrides become training data.
5. **Trust and licensing** (C). A clean record, E&O cover, a licensed bench and a law-firm network take years to build.

What is **not** a moat: the LLM, OCR, classification alone, or being first.

---

## GO-TO-MARKET

- **First 10.** Founder-led outbound to industrial importers found through:
  - bill-of-lading data filtered on HTS chapters 72–76, 84–85 and chapter 99 lines;
  - EDGAR full-text search for "Section 232" and "tariff" among small caps and their suppliers;
  - trade-compliance job postings.
  The offer is: "a 14-day scan, free for design partners; keep your broker." Warm routes: CPAs and fractional CFOs serving manufacturers, and industry associations (NAW, FIA, PMA). Scripts: `execution/02-outreach-scripts.md`.
- **First 100.**
  - **Channel partners.** Independent customs brokers (~11K licensed individuals, many small firms) get a white-label scan and a revenue share, which neutralises the "replace your broker" objection. Mid-market CPA firms with manufacturing practices and ERP consultancies (NetSuite, Epicor, SYSPRO, Acumatica) also refer.
  - **Content tied to regime-change events**, published within 24 hours of each proclamation or ruling: "Which of your SKUs does today's 301 ruling hit?" A free public 232-cliff calculator.
- **First 1,000.**
  - Productised self-serve scan and an ERP marketplace listings.
  - Broker partner network: 50+ brokers.
  - Supplier-driven virality: suppliers certified for one importer are invited to share with their other US buyers, who become leads.
  - Webinars within 24 hours of each regime change.
- **First 10,000** (global and upmarket). EU and UK expansion timed to the 2028 data-hub dates. Transaction-level API for ERPs and brokers. Enterprise tier.
- **Why distribution gets cheaper at scale.** Supplier certifications arrive already populated for new importers, the broker partner network refers customers, and regime-change content compounds as organic search (C/D).

---

## MVP

The smallest experiment that proves willingness to pay is a **concierge scan**:
- ES-003 CSV plus item master, run through a thin rules engine and an LLM checker.
- A licensed-broker contractor reviews and signs.
- The report is delivered as a PDF.
- Price: $2,500, credited against success fees.

Built in 8 weeks by 2 engineers plus 1 licensed broker (contract).
- **Automated:** ingestion, stacking recomputation, deadline computation, ruling retrieval.
- **Manual:** customer onboarding, supplier outreach, final determinations, counsel hand-off.
- **Cost:** ~$250–350K for the first 90 days, fully loaded, excluding founders' salaries (C).
- **Success metrics:**
  - ≥6 of 10 scans find >$50K in in-window recoveries or annual 232 exposure;
  - ≥3 paid pilots;
  - ≥2 subscription conversions by day 100.
- **Kill criteria:** see KILL CRITERIA below.

Spec: `execution/05-mvp-spec.md`.

---

## TECHNICAL ARCHITECTURE

Mermaid diagram and full notes: `research/03-role-analysts/E-technical-architect.md` and `execution/05-mvp-spec.md`.

- **Ingest.** ES-003 CSV, invoices/BOMs/spec sheets (OCR + LLM extraction), supplier portal.
- **SKU knowledge graph.** Attributes, materials, origin, suppliers, history.
- **Reference layer.**
  - HTSUS and Chapter 99, versioned by effective date (USITC JSON).
  - CROSS rulings index (vector + BM25, with revocation status).
  - CSMS and Federal Register feeds.
  - CIT docket watcher.
- **Engines.**
  - Classification checker: GRI walk plus ruling retrieval, producing cited evidence.
  - Stacking/rules engine: 232, 301, AD/CVD, MPF/HMF, FTAs.
  - Deadline engine: liquidation date + 180 days; ≤300-day post-summary correction; 1-year 1520(d); 5-year drawback.
  - Audit engine.
- **Human layer.** Licensed-broker review queue with an evidence pack. Counsel hand-off.
- **Evidence vault.** Append-only, hash-chained, retained at least 5 years (19 USC 1508).
- **Outputs.** CFO dashboard, exposure/accrual report, instructions to the customer's broker. Later, entries through a certified ABI vendor.

| Dependency | Risk | Mitigation |
|---|---|---|
| LLM vendors | Price, terms, outages | Multi-vendor router; fine-tuned open-weight fallback (ATLAS shows a 70B fine-tune beats frontier models on this task, A) |
| ACE access | No public API; report caps; retention unverified | CSV-first design; test retention in week 1 |
| ABI vendor / partner broker | Single point of failure | Two partners; contract data ownership |
| Tariff rule churn | Engine correctness | Effective-dated rules; 24-hour update SLA; broker sign-off |

**Build / buy / partner.**

| Action | What |
|---|---|
| Build | Rules, deadline and audit engines; evidence ledger; supplier portal; SKU graph |
| Buy | OCR, LLM APIs, ABI transmission (Descartes / CargoWise / Customs City) |
| Partner | Licensed brokers, trade counsel, sureties |
| Open-source | A public 232-cliff calculator and an HTS change-feed, as marketing and trust |
| Manual at first | Determinations, supplier outreach, litigation hand-offs |

---

## UNIT ECONOMICS

Per customer, from the business-model analyst's tables adapted to the refined model; all C/D.

| | Conservative | Base | Aggressive |
|---|---|---|---|
| Subscription ACV (year 1) | $24K | $30K | $36K |
| Success fees, year of acquisition (cash) | $12K | $25K | $40K |
| Success fees, ongoing per year | $4K | $8K | $12K |
| Blended gross margin | ~66% | ~72% | ~76% |
| Blended CAC (incremental to sales salaries) | $14K | $10K | $8K |
| Logo churn | 18% | 12% | 8% |
| LTV:CAC excluding success fees, fully loaded (planning gate) | ~2.5x | ~4x | ~7x |
| Payback on gross profit | ~16 months | ~9 months | ~5 months |

Gate: do not scale spend until **LTV:CAC ≥3x excluding success fees** and payback ≤18 months on a real cohort.

**Working capital.**
- Success fees arrive 3–12 months after the work.
- Refunds go to the importer of record, so contracts must include a direction-to-pay.
- Reserve 10–15% of fees against clawback.
- Never front a client's duty.

---

## FINANCIAL MODEL

The output is in `venture/model/output.md` and is reproducible with `python3 venture/model/model.py`. Headcount is sized to $200–500K of revenue per employee.

| Scenario | Y1 revenue | Y3 revenue | Y5 revenue | Y5 customers | Y5 gross margin | Peak burn |
|---|---|---|---|---|---|---|
| Conservative | $0.2M | $3.8M | $19.4M | 459 | 66% | ~$21M (not yet profitable in Y5) |
| **Base** | $0.6M | $11.1M | $60.4M | 850 | 72% | ~$13M (near breakeven in Y5) |
| Aggressive | $1.5M | $37.4M | $234M | 2,274 | 76% | ~$1.5M (assumes low sales friction; treat sceptically) |

**Honest caveat.** The spread between conservative and base comes almost entirely from new-customer velocity, and that is **UNVALIDATED**. The 30-day plan exists to replace this assumption with a measured number.

---

## SCALE PATH

| Milestone | Customers × ARPA | What changes | Team | Gross margin | Bottleneck |
|---|---|---|---|---|---|
| **$1M ARR** | ~30 × $33K | Concierge scans become a product; 1 licensed broker; 2 broker partners | 6–8 | ~65% | Founder selling time; scan throughput |
| **$10M** | ~250 × $40K | Supplier portal live; partner-broker channel; own corporate licence and filer code | 35–50 | ~72% | Licensed reviewer capacity; onboarding data quality |
| **$50M** | ~800 × $62K (brokerage attach ~35%) | Filing via own licence plus ABI vendor; drawback service; mid-market enterprise tier | 150–180 | ~74% | Sales capacity; keeping error rates flat with volume |
| **$100M** | ~1,300 × $77K | Upmarket (>$25M duty); supplier network effects; transaction API for ERPs | 250–300 | ~76% | Competition with Descartes/Flexport upmarket; share of the 35K segment |
| **$500M** | ~4,500 × $110K incl. filing, network fees, finance | EU/UK (post-2028 data hub), Mexico; duty-deferral/bond products with partners | 1,000+ | ~70% | International regulation; capital for finance products |
| **$1B+** | Global transaction-level compliance, "Avalara of customs" | Per-transaction pricing; suppliers and importers on one network | — | — | Becoming a standard; the most speculative stage (D) |

---

## ENTERPRISE VALUE LOGIC

A scenario analysis, not a prediction. Comps are from the investor analyst:

| Comp | Multiple / value |
|---|---|
| Descartes | ~7–8x EV/revenue, 45% EBITDA margin, 93% recurring (A/B) |
| Avalara take-private | ~8.8x NTM revenue (A/B) |
| e2open, bought by WiseTech | ~3–3.5x (C) |
| Flexport | ~0.55x gross revenue (B/C) |
| Brokerage services | ~6–12x EBITDA (C) |

| Business quality at scale | Multiple | $100M revenue | $500M revenue | $1.4B revenue |
|---|---|---|---|---|
| Services-heavy (brokerage >50% of gross profit, GM <55%) | 1.5–2.5x | $0.15–0.25B | $0.75–1.25B | $2–3.5B |
| Blended (subscription 50–70% of gross profit) | 3–5x | $0.3–0.5B | $1.5–2.5B | $4–7B |
| Software/network (>70% recurring gross profit, NRR >115%, supplier network) | 7–10x | $0.7–1.0B | $3.5–5B | **$10–14B** |

**What must be true for $10B+:**
1. About $1.4B+ of revenue.
2. More than 70% of gross profit from subscription and network fees.
3. NRR above 115%.
4. The supplier evidence network becomes a de facto standard, used by brokers and eventually accepted by customs authorities.
5. Successful international expansion.

Each is individually uncertain. Together they are low-probability (D).

---

## COMPETITIVE WAR GAME

| If… | They do… | We do… |
|---|---|---|
| **Flexport** notices | Free audits bundled with freight; mid-market tier | Position as the broker-neutral second opinion ("don't let your broker grade its own homework"); partner with every broker Flexport is taking share from |
| **Caspian** raises a $20M+ Series A | Adds monitoring and brokerage; price war on recoveries | Avoid e-commerce merchants; win industrial 232/BOM depth; compete on the ledger, not the fee |
| **Descartes / WiseTech** add agents | Bundle into ABI and CargoWise for brokers | Integrate with them; our customer is the importer's CFO, not the broker's operations floor |
| **Altana / Amari / Gaia** arm incumbents | Brokers get better AI | Good for our partner brokers; our moat is evidence and rights, not classification |
| **OpenAI / Anthropic / Google** make classification trivial | Commoditised HTS lookup | Already priced in. We sell supplier evidence, deadlines, licensed sign-off and outcome data |
| **Microsoft / SAP / Oracle** ERP modules | Add basic landed-cost duty fields | Integrate as the compliance layer; ERP vendors avoid broker liability |
| **Customers build it internally** | Only viable at >$25M duty | Target the mid-market that cannot staff it |
| **Prices collapse on recoveries** | Fees fall to 4–10% | Recoveries are the entry point, not the profit centre; the subscription carries the economics |
| **Regulation changes** (CBP modernises ACE, public API, CSOP pilots) | Filing becomes easier | Easier data access helps us; our value is evidence and judgement |
| **Tariffs cut sharply** (the CIT strikes 301; a new administration in 2029) | Duty base shrinks | Short term: a refund wave in which our rights ledger is the hero product. Long term: 232 and AD/CVD persist, de minimis repeal is statutory, and EU/UK changes continue. Plan for revenue to survive a 50% duty drop (see failure modes) |

---

## FAILURE MODES (Failure Memo)

**Top 10 reasons Keelson could fail:**
1. **Scans find too little money.** In-window leakage turns out to be under 0.5% of duty, which is tested first.
2. **Importers will not grant ACE access** or share BOM data with a start-up.
3. **Suppliers will not certify metal or origin data,** so the network moat never forms.
4. **Subscription does not convert.** Customers take the recovery and leave (the typical recovery-firm pattern).
5. **Flexport or Caspian commoditise the offer** before the ledger locks in.
6. **Licensed-broker capacity is too scarce** to review at the needed volume (22% pass rate).
7. **A compliance mistake** (a wrong 232 determination leading to a penalty) destroys trust or invites a False Claims Act action.
8. **The tariff regime collapses** (the CIT strikes 301, 232 is narrowed), shrinking urgency after the refund wave.
9. **Sales cycles of 8–14 weeks** (simulated) stretch to 6+ months with legal and IT review.
10. **Working-capital squeeze** from delayed success fees.

| Risk category | The single biggest risk |
|---|---|
| Most dangerous assumption | Mid-market importers have ≥$50K of in-window recoverable or avoidable duty and will pay a subscription to keep finding it |
| Most dangerous competitor | Flexport, which gives the scan away to win freight and brokerage |
| Most dangerous technology development | Customs authorities adopting AI classification and pre-clearance (CBP CSOP pilots), shrinking post-entry error |
| Biggest regulatory risk | Unauthorised customs business: advising on classification and determinations requires broker supervision under 19 CFR 111. Mitigation: licensed broker signs everything; counsel opinion in week 2 |
| Biggest distribution risk | Incumbent brokers' powers of attorney and relationships; mitigated by broker-neutral partnering |
| Biggest capital risk | Services drift (brokerage-heavy revenue) earning a services multiple, which caps fundraising |
| Biggest customer-adoption risk | Fear that re-examining entries invites CBP attention |
| Why investors reject it | "Services business in AI clothing; the IEEPA wave is over; Caspian and Flexport are there" |
| Why customers reject it | "My broker handles this" / "don't poke CBP" / "another vendor needing ERP access" |

**Testable within 30 days:** 1, 2, 3 (partly), 4 (intent), 6, 7 (counsel opinion). Not testable quickly: 5 and 8, which are monitored.

---

## VALIDATION PLAN

The fastest experiments are listed here. The full hypothesis → test → metric → threshold → failure → next-action table is in `execution/06-experiments.md`.

| # | Experiment | Success | Failure |
|---|---|---|---|
| E1 | Leakage scan on 10 importers' ES-003 data | ≥6/10 show >$50K (in-window recoveries + annual 232 exposure) | ≥6/10 show <$15K → kill the wedge |
| E2 | 25 structured interviews with industrial importers | ≥15 confirm pain; ≥8 would grant ACE access | <8 would grant access |
| E3 | Paid pilots at $2,500 | ≥3 paid in 30 days | 0 paid despite positive scans |
| E4 | Supplier certification test: request metal/origin declarations from 30 suppliers of 3 pilots | ≥40% respond in 14 days | <15% → network moat unproven; drop it from the pitch |
| E5 | Broker partner LOIs | ≥2 independent brokers sign white-label LOIs | 0 of 15 approached |
| E6 | Classification checker benchmark: 200 broker-adjudicated SKUs vs free tools | Materially better on the hard 20% | No better → do not market AI accuracy |
| E7 | Counsel opinion on 19 CFR 111 scope, contingency structure, prior-disclosure workflow | Clear, workable structure | Structure requires a licence first → delay launch |
| E8 | Subscription intent: offer the Ledger at 3 price points after scan delivery | ≥30% accept a trial at ≥$1,500/mo | <10% → rethink the business model |

---

## FIRST 10 CUSTOMERS

Profiles, sourcing and approach are in `execution/01-icp-and-first-100.md`. Composition:

| Count | Profile |
|---|---|
| 4 | Industrial distributors (fasteners, fittings, electrical, HVAC parts) with 232 derivative exposure |
| 3 | Small and mid-sized manufacturers importing metal-bearing components from China, Vietnam or Mexico |
| 2 | Consumer-durables brands (furniture/cabinet hardware, cookware, outdoor) hit by 232 furniture and derivative rules |
| 1 | An importer with active CIT litigation interest (301 FL) |

- **Approach.** Warm first, through fractional CFOs, manufacturing CPAs and trade associations. Then targeted outbound using bill-of-lading and EDGAR signals.
- **Offer.** A free design-partner scan in exchange for a case study and weekly feedback.
- **Ask.** ACE Reports access and an item-master export.

---

## FIRST 30 DAYS

| Week | Objective | Experiments | Outreach | Product | Research | Deliverables | Metrics | Kill check |
|---|---|---|---|---|---|---|---|---|
| **1** | Stand up the machine | E7 counsel engaged; E5 broker list | 150 targeted contacts; 40 personalised emails/day; 5 warm intros requested | ES-003 parser; HTSUS + Ch.99 effective-dated loader | Pull Census Table 1; verify ACE retention depth on one live account | Target list v1 (300); landing page live; interview guide | ≥8 meetings booked | — |
| **2** | Get data | E2 interviews (10); E1 first 3 scans | Follow-ups; 5 broker calls; 3 CPA/fractional-CFO calls | Stacking recompute; deadline engine; report template | CROSS ingestion; ATLAS-style eval set drafted | 3 scans in progress; counsel memo | ≥3 ACE grants | If 0 of 10 prospects will grant access → rework the offer |
| **3** | Prove the money | E1 scans 4–8; E4 supplier requests; E6 benchmark begins | Case-study teaser to list; 2nd broker round | Classification checker v0; evidence-pack export | Analyse leakage distribution by category | 5 delivered scans; broker LOI drafts | Median scan finding; ≥1 paid pilot | If median <$15K after 5 scans → stop outreach and diagnose |
| **4** | Decide | E1 scans 9–10; E3 paid pilots; E8 price test | Ask every scanned prospect for Ledger trial | Ledger alpha (rights calendar + 232 evidence list) | Write-up: leakage, conversion intent, supplier response | **Go / modify / kill memo**; investor update | ≥6/10 scans >$50K; ≥3 paid; ≥2 broker LOIs | Apply KILL CRITERIA |

---

## FIRST 100 DAYS

| Area | By day 100 |
|---|---|
| **Product** | Scan productised (≤5 days turnaround); Ledger v1: rights calendar, 232 evidence, supplier portal, accrual report, regime-change alerts; evidence vault |
| **Customers** | 25 scans completed; 10 paying Ledger customers; 3 referenceable case studies |
| **Revenue** | ≥$250K ARR contracted; ≥$50K success fees invoiced (cash lags) |
| **Hiring** | Licensed customs broker, full-time with equity; founding engineer #2; part-time trade counsel on retainer |
| **Technology** | Classification checker beats free tools on the hard set; CSMS/Federal Register/CIT watchers; 24-hour rule-update SLA |
| **Distribution** | 5 broker partners live; 3 CPA/fractional-CFO referral partners; regime-change content cadence (≤24 hours) |
| **Capital** | Pre-seed closed ($1–1.5M), or seed process started if metrics beat the base case |
| **Partnerships** | ABI vendor selected; 2 trade-law firms for CIT filings; 1 surety partner explored |
| **Legal/regulatory** | Counsel opinion on 19 CFR 111 scope; contracts (POA scope, direction-to-pay, clawback, liability cap); E&O quotes bound; corporate licence application filed (via licensed officer) |
| **Metrics** | Scan hit rate; scan→Ledger conversion; time to value; supplier response rate; review minutes per SKU |

---

## THREE-YEAR ROADMAP

| | **Year 1: product-market fit** | **Year 2: repeatable growth** | **Year 3: scale and category leadership** |
|---|---|---|---|
| Revenue (range) | $0.2–1.5M (base $0.6M) | $1.2–9M (base $3.1M) | $4–37M (base $11M) |
| Customers | 12–40 (base 20) | 50–190 (base ~90) | 130–570 (base ~240) |
| Team | 5–8 | 12–30 (base 18) | 26–85 (base 45) |
| Product | Scan, Ledger v1, supplier portal, rights calendar | Own licence + ABI filing option; drawback service; ERP integrations (NetSuite, Epicor, SYSPRO, Acumatica) | Transaction API; enterprise tier; outcome-data models; Mexico/Canada flows |
| Distribution | Founder-led + CPA/broker partners | Broker partner network (25+); 2–3 AEs; content engine | 50+ broker partners; channel program; supplier-driven virality |
| Capital | Pre-seed $1–1.5M; seed $5–8M late Y1 if gates hit | Series A $18–25M | Series B optional (base case near self-funding in Y5) |
| Major risks | Leakage too small; access friction; licence and counsel issues | Flexport/Caspian response; reviewer capacity; 301 ruling volatility | Services drift; upmarket competition; international regulation |
| Priorities | Evidence of money found + conversion | Repeatable channel; gross margin ≥70%; NRR ≥110% | Network effects; category narrative; international groundwork |

---

## FOUNDING TEAM

| Role | Responsibility | Expertise | Time | When | Why |
|---|---|---|---|---|---|
| **CEO / founder-seller** | Customers, partners, capital | Sold to mid-market industrial CFOs/ops; ideally from distribution or manufacturing | Full | Day 0 | Distribution is the bottleneck |
| **CTO / founding engineer** | Engines, data, ML evaluation | Data engineering + applied LLM retrieval/evaluation; rules engines | Full | Day 0 | Correctness is the product |
| **Licensed customs broker (founding team)** | Sign-off, supervision, licence qualifier | Active licence, industrial classification, 232/301 depth | Contract by week 2; full-time with equity by day 100 | Week 2 | Legally required for determinations; investors require it |
| Trade counsel | Protests/CIT, prior disclosure, contract templates | Customs litigation | Retainer | Week 1 | Liability containment |
| Engineer #2 | Ingestion, ledger, portal | Full-stack | Full | Month 2–3 | Throughput |
| Customer success / trade analyst | Onboarding, supplier outreach | Trade compliance | Full | ~15 customers | Scan throughput |
| First AE | Repeatable sales | Mid-market industrial SaaS | Full | ~30 customers, and a proven playbook | Scale after founder proof |

No COO, CMO or VP-level hires before $3M ARR. Hiring specs: `execution/08-hiring-specs.md`.

---

## CAPITAL STRATEGY

**Stage 0 (months 0–1): founders' own money, about $50–100K.**
- Pays for counsel, a contract broker, data (bill-of-lading subscription), E&O quotes and cloud costs.
- The 30-day experiments need no outside capital.

**Stage 1 (months 1–9): pre-seed, $1–1.5M from angels.**
- Target angels are former trade-compliance leaders, brokerage owners, and industrial-distribution CFOs.
- It funds the path to the investor analyst's "come back when" bar:
  - a licensed broker on the team, filing or signing in production;
  - at least 25 paying importers and at least $1M of recoveries identified or collected, mostly non-IEEPA;
  - at least 30% conversion from scan to Ledger;
  - measured review-minutes per SKU;
  - a working-capital plan.
- Expected dilution is 10–15%.

**Stage 2 (months 9–15): seed, $5–8M.**
- Raised at about $1–2M ARR with those proofs in hand.
- Funds the licence, filing capability, the channel and a 12-person team.
- Expected dilution is 15–20%.

**Stage 3 (months 24–30): Series A, $18–25M.**
- Only if NRR is at least 110% and gross margin is at least 70%.

**Total equity.** About $25–35M before the base case nears breakeven. The model's peak burn is about $13M; the difference is a deliberate buffer of about 2x.

**Non-dilutive capital.**
- Receivables lines against contracted success fees, once there is a track record.
- A surety partner, if bond products are pursued.

**What to avoid.**
- Balance-sheet duty financing: it is capital-heavy and a credit risk.
- Raising a large round before the scan hit-rate is known.

**What the company can achieve without venture capital.** A profitable $5–15M services-plus-software business. That remains an acceptable fallback if the network moat fails.

---

## KEY METRICS

1. **Scan hit rate.** Share of scans with more than $50K in in-window recoverable or annual avoidable exposure.
2. **Scan → Ledger conversion** within 60 days. Target at least 30%.
3. **Net revenue retention.** Target at least 110% by year 2.
4. **Licensed-review minutes per SKU and per entry.** Should fall at least 50% a year.
5. **Supplier certification response rate and reuse ratio.** Reuse ratio means certifications reused per supplier; it is the network-moat signal.
6. **Refund rights preserved in dollars and deadlines missed.** Deadlines missed must be zero.
7. **CAC payback on gross profit.** Target 18 months or less.
8. **Determination error rate,** from blind sampling against broker adjudication, plus CBP challenges and outcomes.

---

## KILL CRITERIA

Abandon or radically change course if any of these hold:
1. **Median in-window finding plus annual 232 exposure is below $15K** across the first 10 scans. The wedge has no money in it.
2. **Fewer than 3 of 25 qualified prospects will grant ACE access,** even when offered a free scan. The data wedge is blocked.
3. **Fewer than 10% of scanned prospects will trial the Ledger at $1,500 or more a month.** This would be a one-off recovery business, and it pivots to a pure-services model or is killed.
4. **Counsel concludes the core determinations need a corporate licence before any customer work,** and no partner broker will supervise. This delays launch by 6–12 months; reassess.
5. **By month 9, fewer than 10 paying Ledger customers and under $250K ARR.**
6. **By month 12, logo churn exceeds 25% annualised or NRR is below 95%.**
7. **Supplier response stays below 15%.** Drop the network thesis, and cap the ambition at a good vertical-software company (that is a modification, not a kill).

---

## FINAL INVESTMENT THESIS

**The strongest argument for it.**
- Duty has become a material, volatile, legally contested cost for about 35,000 mid-market US importers.
- Their compliance is still bought as a per-entry clerical service from intermediaries paid to file, not to save or preserve rights.
- Each regime change (and 2025–26 produced dozens) creates per-SKU determinations, stacking errors and perishable refund rights.
- The Section 232 cliff makes supplier evidence worth real money.
- The July 2026 litigant-only refund orders showed that untracked rights are lost.
- A broker-neutral, licensed-supervised evidence and rights ledger:
  - finds money on day 14, with no licence needed for the wedge;
  - earns recurring fees from volatility itself;
  - compounds through supplier certifications and outcome data;
  - can be started by three people for under $100K.
- Competitors are chasing a one-off refund pool or selling classification that is being commoditised.

**The strongest argument against it.**
- It is a services-flavoured compliance business in a crowded 2026 field: Caspian holds a licence, Flexport has $2.7B, and Altana arms every incumbent.
- The recoverable window is only 12–18 months.
- The IEEPA refund pool is mostly paid.
- USMCA under-utilisation has largely been fixed (utilisation 80–89%).
- Court rulings could shrink the duty base tomorrow.
- The moat rests on supplier behaviour nobody has tested.
- Base-case outcomes are $0.5–2B, not $10B.
- The customer's instinct is to avoid poking CBP.

**What evidence is still missing.**
1. Measured in-window leakage on real importers (E1).
2. Willingness to grant ACE and BOM access (E2).
3. Willingness to pay a subscription after recovery (E8).
4. Supplier participation (E4).
5. A counsel opinion on the operating structure (E7).
6. The real size of the mid-market band (Census Table 1).
7. The CIT's 301 FL ruling and the appeal path.
8. Whether licensed-review time per SKU really falls with AI assistance.

Until items 1–5 exist, this is a well-reasoned hypothesis, not a validated company.
