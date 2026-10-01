# C4 "OTD Check" — buyer's-order audit sold to credit unions
Analyst: Market + Customer + Contrarian. Date: 2026-10-01.

Claim labels: **A** = primary/official source seen in this research. **B** = reputable secondary or vendor-stated, not independently verified. **C** = my derivation or estimate from labelled inputs. **D** = assumption or unverified, treat as a hypothesis.

## VERDICT: KILL as framed (B2B to credit unions). Salvage: ship the audit as a free feature inside the consumer OTD app (SHELVE the business).
Founder-fit: **4/10** (strong on product and UI, weak on the real constraint, which is enterprise selling to regulated lenders with no capital, no licences and student hours).

**Single most dangerous assumption:** a credit union VP of Lending will pay for, and actively promote to members, a tool whose job is to challenge the dealer's paperwork, while 55% of CU auto balances come from dealer-sourced indirect loans.

**Cheap falsifying test (about 3 weeks, about $0):** cold-contact 25 CU lending or indirect-lending leaders (LinkedIn, league and CUNA-style event attendee lists, Oklahoma and neighbouring-state CUs first). Use a one-page offer: "member-facing buyer's-order check, $X per completed audit, routes to your direct auto loan." Ask two questions: (1) "Would you show this to members who are buying through an indirect dealer?" (2) "Who owns the budget, and will you sign a paid $5K 90-day pilot?" Pass bar: at least 5 of 25 take a second meeting, at least 3 name a budget owner, at least 1 signs an LOI or paid pilot within 60 days. Under that, kill. I expect a fail on question 1.

---

## 1. Facts that matter

### Credit-union auto lending size and mix
- CU auto loan balances were $483.5B at Q2 2025 ($321.0B used, $162.5B new), down 1.3% year on year. **A** — [NCUA Q2 2025 release](https://ncua.gov/newsroom/press-release/2025/ncua-releases-second-quarter-2025-credit-union-system-performance-data).
- Total CU loans were $1.70T and assets $2.40T at Q3 2025. **A** — [NCUA Q3 2025](https://ncua.gov/newsroom/press-release/2025/ncua-releases-third-quarter-2025-credit-union-system-performance-data).
- 4,250 federally insured CUs served 145.8M members at Q1 2026 (4,411 CUs and 143.2M members at Q1 2025). **A/B** — [NCUA Q1 2025 data summary](https://ncua.gov/files/publications/analysis/quarterly-data-summary-2025-Q1.pdf), [search summary of NCUA map review](https://ncua.gov/analysis/credit-union-corporate-call-report-data/ncua-quarterly-us-map-review/first-quarter-2026).
- Indirect loans were about 55% of CU vehicle balances at Q2 2024. CU share of auto lending fell from 24.5% (end 2022) to 16.1% (mid-2024) as liquidity tightened. **B** — [CreditUnions.com](https://creditunions.com/blogs/industry-insights/as-indirect-lending-falls-so-goes-auto-market-share/). CU share of new originations recovered to about 17% in TransUnion Q3 2025. **B** — [search summary of TransUnion](https://newsroom.transunion.com/q4-2025-ciir/).
- US auto originations ran about 6.7M per quarter in Q3 2025. **B**. Average vehicle age is 12.8 years. **B** — [S&P Global Mobility](https://www.spglobal.com/automotive-insights/en/blogs/2025/05/average-age-of-vehicle-in-us).
- CUDL (Origence) connects about 1,100 CUs and 20,000 dealers and claims $583B cumulative indirect funding. **B (vendor claim)** — [Origence CUDL](https://origence.com/cudl/).

### Existing CU car-buying programmes (the incumbents)
- TrueCar powers white-label sites for 250+ affinity organisations, including Navy Federal and PenFed. Navy Federal is compensated by TrueCar when members buy. TrueCar Q2 2025 revenue was $47.0M, funded by dealers and OEMs, not members or CUs. **A** — TrueCar SEC filings, e.g. [10-Q Q2 2025](https://www.sec.gov/Archives/edgar/data/1327318/000132731825000036/true-20250630.htm); [Navy Federal page](https://www.navyfederal.org/loans-cards/auto-loans/auto-resources/car-buying-service.html).
- Alliant offers 0.50% off the loan rate for TrueCar-powered purchases. Autoland (a CU-owned co-op) offers 0.25% off at some CUs, free to members in California. Some CUs charge $80. **B** — [Alliant](https://www.alliantcreditunion.org/borrow/alliant-car-buying-service), [Arrowhead](https://www.arrowheadcu.org/loans/auto/autoland), [Partners FCU](https://www.partnersfcu.org/credit-cards-and-loans/tools-and-resources/car-buying-services).
- CarSaver took investment from CUNA Mutual (CMFG Ventures) for a CU marketplace. Dealers keep the finance reserve. Revenue is about $51.5M ARR (Latka estimate). **B / D for the revenue** — [CUInsight](https://www.cuinsight.com/press-release/carsaver-and-cuna-mutual-group-partner-to-launch-new-online-marketplace-and-fintech-platform/), [Latka](https://getlatka.com/companies/CarSaver).
- **Economics takeaway (C):** every incumbent costs the CU nothing or pays it. The dealer or OEM funds the programme. The pitch "pay us" is against free and revenue-positive. OTD Check would be the only line item that is a cost to the CU.

### Consumer tools and the AI-commodity problem
At least eight products already do "upload your buyer's order, itemise fees, get a negotiation script", mostly free:
Visor Deal Check (free, no login), DealShield (iOS), DealDrive by CarWhere, DealerShield, ValidateMyCarDeal (free), Lexplio, Beat the Dealer, and CarEdge's own tooling. **A (pages seen)** — [search results list](https://visor.vin/dealcheck), [DealShield App Store](https://apps.apple.com/us/app/dealshield-car-deal-analyzer/id6764470469), [DealDrive](https://www.carwhere.com/dealdrive).
- **A direct name collision:** otdcheck.com already exists. It offers free VIN market data, dealer A-F grades and an "OTD Shield" photo-upload fee scanner, with a $49/mo Pro tier and API. **A** — [otdcheck.com](https://otdcheck.com).
- CarEdge pricing: Pro $49/mo, Coach $99/mo, AI Buying Agent $49.99, Concierge $999 flat per car. **A** — [CarEdge pricing](https://caredge.com/pricing). This brackets consumer willingness to pay at $0 to $50 for software and about $1K for a human.
- Anyone can paste a buyer's order into ChatGPT or Claude. **C**: the audit is a feature, not a product.

### Enforcement and rules
- The FTC CARS Rule was vacated by the Fifth Circuit on Jan 24, 2025 and formally withdrawn in Feb 2026. **B** — [Nat'l Law Review](https://natlawreview.com/article/fifth-circuit-strikes-down-ftcs-junk-fee-rule-auto-dealers), [CarWhere explainer](https://www.carwhere.com/articles/ftc-cars-rule).
- The FTC still enforces under Section 5. It sent warning letters to 97 dealer groups in March 2026. **A** — [FTC press release](https://www.ftc.gov/news-events/news/press-releases/2026/03/ftc-warns-97-auto-dealership-groups-about-deceptive-pricing). A record $78.1M FTC and Maryland AG settlement with Lindsay Automotive followed in April 2026. **B** — [Consumer Finance Monitor](https://www.consumerfinancemonitor.com/2026/04/27/ftc-maryland-ag-reach-settlement-with-lindsay-automotive-group/).
- State rules are a patchwork. Massachusetts has had an AG junk-fee rule since Sept 2025. California SB 766 has a proposed effective date of Oct 1, 2026 (today). **B** — [Nelson Mullins](https://www.nelsonmullins.com/insights/blogs/driving-forward-developments-in-transportation-law-and-innovation/all/states-pick-up-stroke-regulating-new-car-sales-practices-following-ftc-loss-on-cars-rule-2).
- 17 states cap doc fees (for example CA $85, NY $175, AR $129, IA $180, MI $280, MN $350, IL about $378, LA $425, MO $585, MD $800). 33 states have no cap. **B** — [GetTrueLane](https://gettruelane.com/articles/dealer-doc-fee-by-state), [RealCarTips](https://www.realcartips.com/newcars/482-documentation-fees-by-state.shtml).
- **Oklahoma has no doc-fee cap.** Observed average is about $549 (range $299–$785, n=31 deal sheets from one aggregator). **B/C (small sample)** — [CarWhere Oklahoma](https://www.carwhere.com/dealers/ok/fees). Statutory doc-fee disclosure rules in Oklahoma: **D, not verified**.
- Caveat on "flags anomalies against state rules": for the 33 uncapped states there is no rule to flag against, only a market-relative judgement. That is advice, not compliance, and sits close to unlicensed-legal-advice territory (**D**; the founder has no licence).

### CU procurement reality
- NCUA places third-party risk on the CU. It cannot examine vendors directly. Diligence packages expect SOC 2 Type II, BCP, financials, BSA/AML and increasingly AI-risk mapping. **B** — [NCUA third-party authority](https://ncua.gov/files/publications/regulation-supervision/third-party-vendor-authority.pdf), [FortifyData](https://fortifydata.com/blog/ncua-third-party-risk-management-credit-unions/).
- Fintech-to-CU cycles run 6–18 months, with budgets often approved once a year around Oct–Nov. **B (vendor-marketing sources)** — [Insivia](https://www.insivia.com/fintech-b2b-sales-strategies-to-navigate-long-sales-cycles/), [Danish Lead Co](https://danishleadco.io/blog/how-fintech-firms-win-credit-union-partnerships-in-2026).
- A solo student with no SOC 2 is dead on arrival at any CU above about $500M. SOC 2 Type II costs on the order of $20–60K and 6–12 months (**D**).

---

## 2. Simulation

### CU VP of Lending (mid-size CU, about $2B assets, 55% indirect)
- **Her goal:** more direct loans, lower funding cost, keep dealers happy. Indirect pipelines come through CUDL or RouteOne, and her dealer-relations team owns the 300 dealers who send her 60% of volume.
- "You want me to give members a tool that screams 'your dealer is ripping you off' on the same paperwork my indirect team just funded?"
- "TrueCar and Autoland pay me, or cost me nothing, and cut dealers a lead. You are a cost with a conflict."
- "How many members does this move to my direct loan? Show me conversion. Do you have SOC 2? What's the data-retention policy for scanned documents with SSNs on them?"
- "Budget closes in November. Come back in Q1, send the vendor questionnaire, expect 6 months."
- Where she might say yes: a **direct-only, pre-approval-first** framing ("shop with a CU pre-approval; we check the deal before you sign"), positioned as protecting members from predatory indirect lenders and buy-here-pay-here. Even then it is a marketing line item at $20–50K per year, not a core system.

### Member (38-year-old, buying a used truck in Oklahoma City, dealer doc fee $699)
- "I'd use it if it's free and takes 30 seconds. Photo of the worksheet, tell me what's junk."
- "I'd never pay my credit union for that. I'd just ask ChatGPT."
- "If the CU app says my dealer is padding, and the CU then offers me their rate, I'd actually like that. I don't remember my CU offering anything like it, but I'd only open it while standing in the F&I office."
- Reality: the moment of need (in the finance office, 8 pm, tired) is the hardest moment to get a member to open a CU tool they didn't know existed.

---

## 3. Contrarian attack

| Attack | Assessment |
|---|---|
| **Low frequency**: purchase every 6–8 years (avg vehicle age 12.8 yrs, **B**) | Severe. Each member is a once-per-cycle event. Retention and engagement tooling is meaningless. Pricing must be per-event, which makes revenue lumpy. |
| **CAC** | Consumer: paid search for "dealer fees" is owned by CarEdge, CarWhere, Edmunds. Expect $5–15 per install and under 10% paying (**D**) against $0–$50 price points. B2B: 9–18 month cycles on a solo founder's runway. |
| **CU slowness** | Annual budget, SOC 2, vendor questionnaire, board risk committee. First revenue likely 9–15 months out (**C**). Founder has student-time hours and no capital to survive that. |
| **TrueCar free programme** | Incumbent is free to the CU and pays the CU (Navy Federal). 250+ affinity partners. Buyers also get a pre-negotiated price, not just an audit. |
| **Indirect conflict** | The decisive one. 55% of vehicle balances are indirect (**B**). A tool that attacks dealer paperwork is hostile to the channel that funds CU auto growth and to the dealer-relations team. Dealers can also demote or drop a CU from RouteOne/CUDL pipelines (**D**, anecdotal). |
| **AI commoditisation** | Severe. At least 8 free or cheap photo-upload analysers exist today, including one named OTDCheck. A general LLM does 80% of this for $0. There is no data moat: doc-fee tables are public, and CarEdge has market data. |
| **Liability** | Telling users a fee is "illegal" or "over the cap" when wrong creates UPL / deceptive-advice exposure. B2B means CU legal review of every rule output (**D**). |
| **Dealer transparency pivot** | Selling to dealers as compliance tooling is a real, funded need after the FTC letters (**B**), but it flips the user base and the mission (honest advocate for buyers) and competes with entrenched F&I compliance vendors. Not a fit for a student. |
| **Refi pivot** | Refinancing marketplaces are crowded (banks, LendingTree, CU rate tools) and rate-driven. The audit adds nothing. |
| **State AG partnerships** | Possible low-revenue distribution (consumer-education pages), not a business. AGs do not buy software from solo vendors on a normal timeline (**D**). |

What survives: the honesty positioning and "negotiation language" are genuinely aligned with the founder's values. As a free consumer feature of his existing OTD app they are credible. As a CU-sold SKU they are not.

---

## 4. Market sizing (bottom-up; all **C** unless stated)

Inputs: about 6.7M US auto loan originations per quarter, so about 27M per year (**B**). CU share of originations about 17% (**B**), so about 4.5M CU auto loans per year (**C**). Indirect share about 55% (**B**), so about 2.0M direct CU loans per year (**C**).

- **TAM (all financed purchases, consumer-pay, $15/audit, 100% penetration):** 27M × $15 = about $400M per year. Add cash buyers and the total is higher. Realistically capped by free alternatives to well under $100M.
- **TAM (CU-only, B2B at $10–15 per funded or used audit):** 4.5M × $12 = about $54M.
- **SAM (CUs with a direct-first strategy, above about $500M assets, willing to buy a member-benefit tool):**
  - About 650 CUs above $500M assets (**D**, my estimate from 4,250 total).
  - Perhaps 25% are plausible buyers = about 160 CUs.
  - At $40K per year average = about **$6.5M per year**. Optimistic ceiling with 400 CUs at $50K = $20M.
- **SOM (years 1–3, solo or tiny team):**
  - Year 1: 0–1 pilots, $0–$10K.
  - Year 2: 3–5 small CUs at $15–25K = about $75–125K.
  - Year 3: 10–15 CUs at $25K = about **$250–375K ARR**, optimistic.
  - Consumer side adds under $50K per year.

## 5. Path to $100M (honest)

There isn't one on this wedge. At $50K per CU, $100M ARR needs 2,000 CU customers, which is about half of all US CUs and more than the roughly 650 above $500M assets. Via per-audit pricing you would need about 8M paid audits per year at $12, or about 30% of all financed US car purchases. A path only exists if the product becomes (a) lender-agnostic and sold to banks, captives, fintech lenders and insurers (27M loans per year × $4 = $108M) or (b) a dealer-side compliance SaaS. Both are different companies, and the first would need venture capital and sales hires the founder cannot fund. Probability that C4 as framed reaches $100M ARR: under 2% (**D**). A realistic ceiling is a $1–5M ARR niche business.

## 6. Recommendation

1. **KILL** the credit-union B2B framing. The channel conflict and free incumbents cannot be solved by better UX.
2. **Do not** use the name "OTD Check." otdcheck.com is live with an overlapping "OTD Shield" feature. Keep "OTD" branding and check trademark and name conflict before anything else.
3. **Optional, low-effort:** add a "scan your buyer's order" feature to the existing OTD iOS app, free or one-time paid, with plain-language explanations of fees in the founder's trust-over-pressure voice. Treat it as retention and portfolio work, not a company. Avoid claims like "illegal" and say "compare to your state's cap" with sources.
4. Run the 25-call falsifying test only if the founder wants closure. Cost is near zero and a pass would change the verdict to SHELVE-with-pilot.
5. Revisit only if (a) a CU or league contact offers an inbound warm intro or paid pilot, or (b) OTD reaches enough consumer volume (for example 50K MAU) to sell lead-routing instead of software.

## Unverified items to check before relying on this
- Oklahoma statutory doc-fee disclosure rules (**D**).
- Count of CUs above $500M assets (**D**).
- CarSaver revenue (**D**, Latka estimate).
- Whether dealers actually penalise CUs for tools like this (**D**, anecdotal).
- Procurement timelines (**B**, vendor-marketing sources).
