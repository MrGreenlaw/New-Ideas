# C2 "Instant Quote for exterior trades" — Market + Competition (Agent A+B)

Date: 2026-10-01. Founder context read from `_founder_profile.md` (solo student, no capital, SwiftUI/web/design strength, Greenturf landscaping exposure, trust-over-pressure brand).

Evidence grades: **A** = primary/official source fetched; **B** = credible secondary/aggregator quoting primary data; **C** = vendor marketing claim or single weak source; **D** = my assumption/estimate (not sourced). Nothing below is invented; every D is labelled as an assumption. Several figures came through search-result summaries rather than a page I opened; they are flagged "B (search summary)".

---

## 1. Verdict up front

**Short answer: as a pure "address in, price out" widget it is a feature, and in roofing it is already owned. It becomes a company only if it grows into a multi-trade quote-to-cash layer that monetizes payments and financing. For this founder I would call it SHELVE as a venture-scale bet, PURSUE only as a narrow bootstrapped lawn/exterior wedge with a hard 90-day kill test.**

Why:
1. Roofing is taken. Roofle (RoofQuote PRO, $5,500/yr) was acquired by SalesRabbit on 2026-01-06; Roofr bundles an Instant Estimator at $125–149/mo. (B; sources in section 3.)
2. Lawn/landscape has the cheapest, most crowded point solutions (Go iLawn InstantEstimator $800/yr, QuoteIQ MapMeasure $74.99/mo, PropertyIntel from $199/mo) and the dominant SMB suite (Jobber, 100k+ customers) has no native satellite measurement or customer-facing self-quote widget today — but it could add one. (B)
3. The data layer is the hard part. Google Maps Platform terms prohibit tracing/digitizing or creating datasets from Google content and limit caching to 30 days; Nearmap licenses restrict stored AI attributes to "Permitted Purposes". Building a measurement-resale product on top of those is legally fragile. (B, section 4)
4. Revenue per customer is small for software alone (see TAM). $100M requires payments + financing + multi-trade, i.e. competing with Jobber/Housecall Pro/ServiceTitan on their turf.

---

## 2. Firm counts and revenue per trade (bottom-up inputs)

| Trade (NAICS) | Count | Revenue / size | Grade | Source |
|---|---|---|---|---|
| Landscaping 561730, employer establishments | 117,969 (CBP 2023); 802,899 employees; $41.2B payroll; ~6.8 emp/establishment | payroll only; Census doesn't publish establishment revenue here | B | https://startbusinessbystate.com/landscaping-industry-statistics/ (quoting Census CBP 2023) |
| Landscaping 561730, nonemployer (solo) | 516,572 | avg receipts ~$36,041 | B | same URL (quoting Census Nonemployer Statistics) |
| Landscaping 561730, earlier year | 113,083 businesses / 115,196 establishments (2020) | — | B (search summary) | https://www.naics.com/what-is-naics-561730-full-description-and-statistics/ ; https://data.census.gov/profile/561730_-_Landscaping_services?n=561730 |
| Roofing contractors 238160 | 24,532 employer establishments (CBP 2022) | $69.9B receipts (2022 Economic Census) | B (search summary; not independently opened) | https://www.ibisworld.com/classifications/naics/238160/roofing-contractors/ ; https://theroofingbrief.com/roofing-naics-code/ |
| Fence contractors (within 238990) | 6,103 establishments coded 238990-23 | n/a | C (directory data) | https://siccode.com/extended-naics-code/238990-23/fence-contractors |
| Pressure washing/exterior cleaning (561790), window cleaning (561720), gutters, paving (238990/238110), pest (561710), pool | **Not retrieved.** | — | — | Census API required a key; gap. Do not assume. |

Notes: CBP counts employer *establishments*, not firms; solo operators (the biggest lawn segment by count: ~4.4 solos per employer establishment, B) are excluded from CBP and are the least likely to pay for software above ~$30–75/mo. SBA small-business threshold for 561730 is $7.5M revenue (B, naics.com URL above). Aspire says it serves "hundreds of commercial landscapers" out of 50,000+ commercial landscapers with ~$4B annual transactions (B, https://www.prnewswire.com/news-releases/servicetitan-expands-into-landscaping-with-plans-to-acquire-aspire-reaches-9-5b-valuation-301323346.html).

---

## 3. Competitive landscape

### Measurement / instant-quote tools
| Player | What / price | Traction | Grade | Source |
|---|---|---|---|---|
| **Roofle** (roofing) | Embedded address-to-price widget, "29 seconds"; RoofQuote PRO $350/mo + $2,000 setup, or $5,500/yr; gutter add-on $50/mo; financing via PowerPay/Wisetack | Customer count conflicts: "1,800+ contractors" (search summary) vs "15,000+ contractors, 2.4M quotes" (review site at acquisition). Acquired by SalesRabbit 2026-01-06, terms undisclosed. Residential only, no accounting integrations. | B/C | https://contractortoolstack.com/software/roofle/ ; https://www.prnewswire.com/news-releases/salesrabbit-acquires-roofle-to-unify-field-sales-online-buying-and-production-for-roofing-and-home-improvement-contractors-302653511.html ; https://offers.roofle.com/roof-quote-pro |
| **Roofr** | Instant Estimator add-on $125–149/mo (sources disagree); plans free / $209 / $299 per mo; YC 2017, backed by Crosslink, Bullpen | "thousands of contractors" (no number) | B/C | https://roofr.com/pricing ; https://www.capterra.com/p/208102/Roofr/ |
| **Go iLawn** (lawn) | Per-search packages $150 (25 searches) to $3,000 (5,000); ~$3/property; InstantEstimator (customer-facing) $800/yr 1 user, $1,380 2 users, $3,060 5 users | Established; no funding data found | B | https://estimator.goilawn.com/pricing/ (via search; page not fetchable from sandbox) |
| **QuoteIQ MapMeasure** | $74.99/mo; AI trace ~3 sec; separates turf/beds/driveway | n/a (vendor-run comparison, self-interested) | C | https://myquoteiq.com/best-satellite-measuring-software-lawn-care-2026/ |
| **SiteRecon** (Nearmap imagery) | $250/mo Growth; commercial takeoffs | n/a | B/C | same URL |
| **Attentive.ai** (SiteRecon parent per my understanding; not verified in sources) | $30.5M Series B Nov 2025 (Insight), $48M total; pivoting toward construction ("Beam AI") | Funded | B | https://www.finsmes.com/2025/11/attentive-ai-raises-30-5m-in-series-b-funding.html |
| **Aspire PropertyIntel** (ServiceTitan) | 2-inch aerial; from ~$199/mo (Capterra, reported) | Aspire acquired by ServiceTitan 2021 | B | https://turfmagazine.com/aspire-announces-launch-of-propertyintel/ |
| **LMN** | Starter $297/mo; budget-based estimating, no satellite measurement found | — | C | myquoteiq URL above |
| **Jobber** | Core $29–49/mo, Connect $99–139, Grow $149–199, Plus from $399; online booking + request forms + quotes; no native satellite measurement or self-quote widget (per comparison site); Payments 2.9%+30c, ACH 1%; Wisetack financing at 3.9% | 100k+ customers (May 2026), "$100B processed"; ~$150M revenue 2023; ~$285M raised, ~$1–2.5B valuation estimates | B/C | https://schedulingkit.com/pricing-guides/jobber-pricing ; https://help.getjobber.com/hc/en-us/articles/360056100954-Jobber-and-Wisetack-Consumer-Financing-Integration ; https://sacra.com/c/jobber/ ; https://betakit.com/jobber-closes-100-million-usd-series-d-amid-strong-demand-for-home-services/ |
| **Housecall Pro** | $175M raised, ~$1.1B valuation (Series D1); revenue figures from aggregators conflict (FY21 $179M vs "$600M est. ARR") — treat as unreliable | — | C | https://dealroom.co/companies/housecall-pro/ ; https://getlatka.com/companies/housecall-pro |
| **ServiceTitan** (public, TTAN) | FY2026 revenue $961M (+24%); ~$7B market cap June 2026 | Owns Aspire, ServicePro | A (revenue, SEC) / B (cap) | https://www.sec.gov/Archives/edgar/data/1638826/000163882626000028/ttan-20260131.htm |
| **Marketplaces** LawnStarter / GreenPal | LawnStarter 15–20% commission (reported by GreenPal, a competitor); GreenPal ~5%; LawnStarter 2025 revenue $46.8M (Latka, unreliable); GreenPal 45k+ pros, 250+ markets | — | C | https://www.yourgreenpal.com/blog/lawnstarter-and-lawn-love-have-high-commission-rates ; https://getlatka.com/companies/lawnstarter.com |
| EagleView (roof reports) | $18–$91 per report; API pull $0.05–0.18 on top (some CRMs) | — | C | https://roofgenius.ai/blog/eagleview-pricing-2026-update |
| Not researched in depth (no data pulled): Instant Roofer, Measure Square, FieldPulse, Workiz (Workiz does offer Wisetack, per https://help.workiz.com/hc/en-us/articles/24689191447313), Yardbook, Service Autopilot, SingleOps, Deep Lawn. Gap. |

### Feature vs company read
- **Acquirers are SaaS suites and sales tools**, not standalone instant-quote companies: SalesRabbit bought Roofle; ServiceTitan bought Aspire and ServicePro. That is the pattern of a feature being absorbed. (A/B)
- **Pricing power is low in lawn** (~$800/yr Go iLawn InstantEstimator; $75/mo QuoteIQ) and moderate in roofing ($5,500/yr) because a roofing lead is worth thousands.
- **Jobber is the obvious absorber** for lawn: it already owns booking, quotes, payments (2.9%) and financing (Wisetack). No native measurement today (C), so there is a window, but it is an integration/acquisition away from closing.

---

## 4. Imagery / data licensing

| Source | Cost | Resale / derived-measurement permitted? | Grade | Source |
|---|---|---|---|---|
| Google Solar API (Building Insights, Data Layers) | Pay-as-you-go; free caps of 10,000 Building Insights and 1,000 Data Layers calls/mo (reported); exact $/1k not retrieved | Roof/solar-oriented only (not lawn/beds). Caching/storage "generally restricted"; must display on Google Map with attribution. | B | https://developers.google.com/maps/documentation/solar/policies ; https://developers.google.com/maps/documentation/solar/usage-and-billing |
| Google Maps Platform general terms | — | Prohibits scraping/pre-fetching/caching >30 days and "tracing, digitizing, or creating other datasets based on Google Maps Content". Measuring lawns by tracing Google imagery for commercial quoting is a high compliance risk. Needs written legal review (I am not a lawyer; founder has none). | B | https://cloud.google.com/maps-platform/terms/maps-service-terms |
| Nearmap | Quote-based; ~$2,000+/yr small-business (historical report) | AI attributes only for "Permitted Purposes"; counted against usage allowance; cannot be used to train independent models. Embedding in a resold consumer-facing product needs a negotiated license. | B/C | https://www.nearmap.com/legal/product-specific-terms ; https://www.capterra.com/p/237908/Nearmap/ |
| EagleView | $18–$1,200+/report | Per-report; API access limited | C | roofgenius URL above |
| Regrid parcels, Microsoft building footprints, USDA NAIP | **Not verified in this research.** From general knowledge (grade D): Microsoft footprints are open (ODbL); NAIP is public-domain but ~0.6–1 m, too coarse for beds/fence lines; Regrid is paid per-license. Verify before relying on any of these. | | D | — |

Implication: incumbents (Go iLawn, SiteRecon, Aspire) each run their own or negotiated imagery. A newcomer must either (a) negotiate Nearmap/Vexcel-type enterprise licensing (cash + volume, hard pre-revenue), (b) fly/buy its own imagery (capital), or (c) use customer-confirmed polygons on top of licensed basemaps (compliance gray area). This is the biggest structural barrier for a bootstrapped student.

---

## 5. Funding / M&A in the space (dated)
- SalesRabbit acquires Roofle — 2026-01-06, undisclosed (A: press release, https://www.prnewswire.com/news-releases/salesrabbit-acquires-roofle-to-unify-field-sales-online-buying-and-production-for-roofing-and-home-improvement-contractors-302653511.html). RoofLink joined SalesRabbit end-2024.
- Attentive.ai $30.5M Series B, Nov 2025; $12M Series A2, Jan 2025; ~$48M total (B, finsmes URLs above).
- ServiceTitan acquires Aspire (closed 2021-06-30) alongside $200M Series G at $9.5B; ServiceTitan later IPO'd (A/B).
- Jobber $100M Series D (2023) plus $61M growth equity (Mar 2024) (B).
- Housecall Pro $175M total, ~$1.1B (B/C).
- Roofr: YC 2017, "millions" from Crosslink, Bullpen (amounts not found).

---

## 6. Does instant pricing lift conversion? (evidence grading)
- Roofle claim: 8–10% form completion vs 1–2% industry baseline; top >15%; TrueWorks Roofing $2.9M to $4.3M. **Grade C** (vendor marketing relayed by review site; no independent study; form-completion is not booked-job rate). https://contractortoolstack.com/software/roofle/
- "Respond within 60s = +391% conversions", "78% hire first responder", "73% booking if text under 60s vs 4% after 30 min": **Grade C**, circulating marketing stats from agencies (PushLeads, caseyresponse, endigita etc.); these measure speed-to-lead, not instant *pricing*, and cannot be attributed to this product. https://pushleads.com/how-contractor-lead-response-time-is-killing-your-conversions-and-the-5-minute-f/
- "Speed-to-lead automation: 18–28% lead-to-appointment vs 8–14% without": **Grade C**.
- No A- or B-grade independent evidence found that showing a price instantly raises *booked revenue*. Plausible mechanism (lead goes to first responder; homeowners dislike waiting for quotes) but unproven. Counter-risk: price visibility can also screen out price-shoppers and invites low-ball comparison (D, my reasoning).
- **Test needed:** A/B on a design partner's site (form vs instant price), measuring booked-and-paid jobs per 100 visitors.

---

## 7. Bottom-up TAM / SAM / SOM (all inputs labelled)

### Inputs
| ID | Input | Value | Grade |
|---|---|---|---|
| I1 | Landscaping employer establishments | 117,969 | B |
| I2 | Roofing employer establishments | 24,532 | B |
| I3 | Fence establishments | 6,103 | C |
| I4 | Other exterior trades (washing, windows, gutters, paving, pest, pool, solar) | not retrieved — **excluded**, so TAM is understated | gap |
| I5 | Lawn software ARPA (price anchor) | $800/yr (Go iLawn InstantEstimator, 1 user) up to ~$1,800/yr (Jobber Grow + add-on, approx.) | B/C anchor |
| I6 | Roofing ARPA | $5,500/yr (Roofle list) | B |
| I7 | Fence ARPA | assume $1,500/yr | D |
| I8 | Share of establishments with residential customer-facing work and a website | 50% | D |
| I9 | Online booked GMV per customer per year (deposit + payment) | lawn $100,000 (assumes ~60 online-booked jobs/mo × ~$140 avg; this is an input, not a sourced figure); roofing $400,000 | D |
| I10 | Payments take (net of interchange) | 0.5–1.0% net on top of processor | D (Jobber charges 2.9%+30c gross, B; net margin unknown) |
| I11 | Financing referral revenue | 1% of financed volume; 10% of roofing GMV financed | D |

### TAM (software subscription only, all employer establishments)
- Lawn: 117,969 × $800 = **$94M**; at $1,800 = $212M. (A calc on B inputs.)
- Roofing: 24,532 × $5,500 = **$135M**.
- Fence: 6,103 × $1,500 = **$9M**.
- Subtotal (three trades) ≈ **$240M–$360M/yr** software. Excludes solos, other trades, payments.

### SAM (I8 = 50%, reachable by a single product that is not roofing)
- Lawn: 58,985 × $800–$1,800 = **$47M–$106M**.
- Fence: 3,052 × $1,500 = **$4.6M**.
- Roofing excluded as incumbent-held (Roofle/Roofr/SalesRabbit).
- SAM ≈ **$52M–$111M/yr** software. Add payments: lawn 58,985 × $100k GMV × 0.75% = **$44M** (D inputs). Combined SAM ≈ **$95M–$155M**.

### SOM (5-year, D assumptions)
- Penetration of SAM lawn+fence establishments: 1% yr 2, 3% yr 5 (very optimistic for a solo founder with no distribution; Go iLawn/Jobber have head start).
- Yr 5: 3% × 62,037 ≈ 1,860 customers × ($1,200 software + $750 payments) ≈ **$3.6M ARR**.
- Stretch (10% share): ~6,200 customers ≈ **$12M ARR**.

### Gap to $100M
Even at 10% of the lawn/fence SAM, ARR is ~$12M. $100M ARR requires ~**50,000 customers at ~$2,000** (about half of ALL US employer lawn establishments, D arithmetic), or expanding to ~8 trades and 3–4× ARPA via payments/financing/marketing/CRM (i.e. becoming Jobber). Jobber itself reached about $150M revenue on 100k+ customers after ~15 years and ~$285M raised (B). **Route to $100M is therefore not feasible for a bootstrapped student without ~$30M+ of venture capital and a multi-year pivot to full field-service OS.**

---

## 8. Routes to $100M+ (ranked)
1. **Payments + deposit rails** (every quote is bookable with deposit): best monetization alignment but Jobber/Housecall/Workiz already take 2.9%; margin pass-through is thin (D).
2. **Consumer financing referral** (Wisetack 3.9% merchant fee at Jobber, B): meaningful only for high-ticket trades (roofing, fence, paving, pool), not lawn.
3. **Multi-trade field-service OS**: the real $100M path, but ServiceTitan ($961M rev, A), Jobber, Housecall Pro are 10–100× ahead.
4. **Marketplace**: LawnStarter ~15–20% take, but revenue ~$47M (C) and capital-intensive supply management; GreenPal 5% shows commoditization.
5. **Acquisition by a suite** (most likely real outcome): Jobber/ServiceTitan/Housecall buy instant-quote tech. Sale price unknowable; Roofle terms undisclosed.

---

## 9. Founder-fit read (brief)
- **Fits:** premium trust-first UI/copy is a real differentiator against clunky widgets; Greenturf experience gives a design-partner path; no licenses needed.
- **Doesn't fit:** imagery licensing and measurement-accuracy engineering (ML/GIS) cost real money; selling to thousands of small contractors needs distribution; pre-revenue constraint collides with Nearmap-class licensing.
- **Faith/brand fit:** "honest price, no manipulative urgency" can be a genuine wedge (show ranges and assumptions, not fake countdowns), consistent with brand voice.

## 10. If pursued anyway: cheapest kill test (90 days)
1. Skip satellite automation initially: ask 5–10 lawn firms to let you build a pricing-rules-driven quote page where the homeowner confirms/draws their lawn polygon on a licensed basemap (still check Google terms; consider Mapbox/open imagery after legal read) and the owner reviews. Concierge accuracy first.
2. Success gate: ≥3 paying firms at ≥$99/mo, and an A/B showing instant-price pages book ≥1.5× per 100 visits vs their current form.
3. Kill if: licensing terms bar the model, Jobber ships native self-quote with measurement, or conversion lift under 1.2×.

## 11. Gaps / not verified
Census figures for 561790/561720/561710/238110 and nonemployer receipts for roofing not retrieved (API key needed); exact Google Solar $/1k not retrieved; Regrid/MS footprints/NAIP terms unverified; Go iLawn pricing page unreachable directly (via search summary); no data on Yardbook, Service Autopilot, SingleOps, Deep Lawn, Instant Roofer, Measure Square, FieldPulse; Roofle customer count conflict (1,800 vs 15,000); aggregator revenue numbers (Latka) treated as unreliable.
