# C1 "Roof Record" — Market & Competition (Agents A+B)

Date: 2026-10-01. Labels: **A** verified (primary or direct fetch of the source), **B** strong (credible secondary/search-summary, consistent), **C** inference, **D** speculative. Many figures come from WebSearch summaries or trade/secondary pages, not primary Census/Verisk files; those are marked B at best. No pricing was found for insurer data products (Verisk, Moody's CAPE, Nearmap, Cotality, ZestyAI); I do not guess.

## 1. Bottom line
Real pain, crowded incumbents on both sides, and no obvious payer for the homeowner-owned record. Insurers already buy roof age from permits plus imagery at scale, and the 2026 regulatory wave pushes toward *imagery freshness and dispute rights*, not toward contractor-supplied records. The roofer-paid SaaS wedge is a ~$20M TAM that CompanyCam ($2B valuation) could replicate as a feature. Details and a verdict are in section 8.

## 2. Market size

### 2a. Roofing contractors
- 24,532 roofing contractor establishments (NAICS 238160), Census County Business Patterns 2022 [B: from a search summary of CBP; I could not fetch the Census table]. Source trail: https://www.ibisworld.com/classifications/naics/238160/roofing-contractors/ and https://usfcr.com/search/naics/?naics=238160
- $69.9B receipts, Economic Census 2022 [B, same trail]. IBISWorld estimates the industry at $76.4B for 2025, +0.8% [B]: https://www.ibisworld.com/classifications/naics/238160/roofing-contractors/
- Nonemployer (solo) roofers are NOT in the 24,532 establishment count; I found no sourced number [gap].
- Residential is ~58% of US roofing market; reroof/replacement ~63.5% [B, Mordor via search]: https://www.mordorintelligence.com/industry-reports/united-states-roofing-market
- Freedonia projected residential roofing spend of ~$15B by 2025 [B, dated projection]: https://www.freedoniagroup.com/industry-study/us-roofing

### 2b. Re-roof volume and spend
- US asphalt shingle ~160M squares in 2024, of which ~135M squares reroof/repair [B, secondary]: https://www.roofingcontractor.com/articles/101472-us-asphalt-shingle-shipments-fall-10-in-q3-2025 and https://theroofingbrief.com/roofing-material-market-share-report/
- Q3 2025 shipments 40.4M squares, down 10% YoY (ARMA) [B]: same Roofing Contractor link.
- Average residential replacement cost $17,631 (2025), repair $4,699 [A/B: Verisk 2026 U.S. Roof Report, fetched via Claims Journal]: https://www.claimsjournal.com/news/national/2026/06/01/337878.htm
- Replacement count per year: I found no sourced figure. Inference: 135M squares ÷ ~25–30 squares per roof gives at most ~4.5–5.4M roof jobs including repairs, so true full replacements are well below that [C/D, roof size is my assumption]. I use a 2–3M replacements/year range as a **D-level** planning input.
- Hail-belt exposure [A/B, Verisk]: Kansas 51.8% of roofs hit by severe hail in 2025 ($2.2B annual loss), Nebraska 47.1% ($1.6B), Oklahoma 44.4% ($2.0B). Hail-state roofs average ~15-year life vs 22 years in milder western states [B]: https://www.claimsjournal.com/news/national/2026/06/01/337878.htm and https://www.globenewswire.com/news-release/2025/04/08/3057591/0/en/U-S-Roof-Claims-Costs-Reached-Over-$30-Billion-In-2024-Underscoring-Evolving-Risks.html
- US roof claims ~ $31B in 2024, >25% of residential claim value [B, Verisk].

## 3. How insurers get roof age/condition today
- Four sources [A, Moody's/CAPE article, fetched]: (1) customer-reported (underestimated on average ~5 years; ~20% off by 15+ years; clusters at 10/15/20), (2) agent-reported (incentive to lowball), (3) permit data (gaps: not all work is permitted, permit does not prove completion), (4) home age as default. https://www.moodys.com/web/en/us/insights/underwriting/the-challenge-of-unlocking-accurate-roof-age-data.html
- Vendors [B]: Verisk Roof Age (built on BuildFax permit database, >10M homes) https://iireporter.com/verisk-insurance-solutions-debuts-roof-age-estimate-tool/ ; Moody's CAPE Roof Age V3 (imagery + permits; used by top-20 P&C carriers; Moody's acquiring CAPE) https://www.moodys.com/web/en/us/insights/insurance/introducing-roof-age-version-3-new-standard-in-roof-age-detection.html ; Nearmap roof condition https://www.nearmap.com/blog/roof-condition-assessment ; Cotality Roof Condition Insights https://www.cotality.com/products/roof-conditions-insights ; ZestyAI Z-WIND. PermitStack sells permit-derived roof age by API https://permit-stack.com/blog/roof-age-from-permit-data-insurance.html
- **What insurers pay: not found.** Pricing is quote-only. Reference points only: drone roof inspection $150–$400, traditional $300–$600 per roof (consumer-side cost) [B] https://www.skyebrowse.com/news/posts/drone-roof-inspection-cost ; EagleView residential measurement reports $15–$87 [B] https://www.eagleview.com/ (via search).
- Roof age as underwriting variable [A/B]: Verisk says moderate/poor condition roofs have ~60% higher loss costs; claims that inaccurate roof age data costs insurers up to $1.31B premium/yr [B]. Verisk PDF: https://www.verisk.com/49027c/siteassets/media/downloads/underwriting/personal-property/roof-age.pdf
- ACV roof schedules: roof payment schedules/ACV endorsements are increasingly common in TX (some insurers apply over 7–10 years), CO and MN; example: 15-year-old roof on $20k replacement may pay ~$5k under ACV [B, agency blogs, illustrative]: https://texasautohome.com/what-is-a-roof-payment-schedule/ and https://www.latentinsure.com/blog/colorado-hail-damage-insurance . Implication [C]: a verified install date directly changes the depreciated payout, which is the strongest homeowner/roofer value hook, but insurers already derive age themselves and the homeowner-proof use case only matters at claim or renewal.

## 4. Law and regulation (check of "protections")
- **Oklahoma HB 2933** (roof age 15+/aerial imagery limits): passed House, DIED in Senate 2026-05-14 [user-verified; do not treat as law]. Bill text for reference: https://www.oklegislature.gov/cf_pdf/2025-26%20INT/hB/HB2933%20INT.PDF
- **Florida**: age-only non-renewal ban for roofs <15 yrs (627.7011, 2022); HB 815 effective July 1, 2026 extends to all residential property policies and gives owners a right to an authorized inspection for 15+ yr roofs (steep-slope with 5+ yrs life must stay insured) [B]: https://www.kimspearsgroup.com/2026/02/16/the-roof-age-loophole-how-new-2026-florida-laws-finally-stop-insurers-from-dropping-you-over-an-old-roof/ ; table at https://www.nearmap.com/solutions/insurance-regulations-by-state
- **Mississippi** SB 2130 (2024) and **Virginia** HB 677 (signed Apr 13 2026, effective Jan 1 2027): no denial solely because roof <15 yrs (VA: asphalt shingle) [A: Nearmap regulation table, fetched].
- **Texas**: NOT law. Governor Abbott directive of Aug 24, 2026 told TDI to bar refusing/renewing on age of property or components incl. roof, and to require FORTIFIED roof status in rating [A: https://gov.texas.gov/news/post/governor-abbott-directs-tdi-to-take-action-to-make-property-insurance-more-affordable ; https://natlawreview.com/article/governor-abbott-directs-texas-department-insurance-address-rising-property-and]. TDI answered Sept 14, 2026: Bulletin B-0008-26 on FORTIFIED in rates, and a **proposed rule** (not yet adopted) clarifying insurers cannot use component age [B: https://www.tdi.texas.gov/reports/documents/tdi-oog-directive-response.pdf ; search summary]. Statutory changes go to the 2027 session. **FORTIFIED-in-rating is the one regulatory tailwind that favors a contractor-captured certificate record** [C].
- **Colorado**: Division of Insurance Bulletin B-5.57 (Mar 16, 2026) limits aerial imagery age to 12 months for underwriting/rating [A: Nearmap table]. HB 25-1302 resilient roof grants; no roof-age ban found [B].
- **Minnesota, Kansas, Nebraska, Oklahoma**: no roof-age or aerial-imagery rule found [A as to Nearmap table; absence not proof].
- Imagery rules elsewhere (GA HB 1344, IN HB 1260, KY, MD, LA, AL bulletin, etc.) mostly require fresh images, notice and a dispute/remedy window [A: Nearmap table]. These create a *homeowner-rebuttal evidence* need (photos of roof condition, install proof), which supports the product idea but benefits any photo tool, including CompanyCam.
- Net [C]: age-based non-renewal bans REDUCE the insurer's need to know roof age for refusal, but raise the value of a credible 5-years-remaining inspection/certification (FL model). Records capturing install date + condition are most useful for rebuttal and FORTIFIED discounts.

## 5. Competitors
### 5a. Roofer-side tools (direct competitors for the buyer's wallet)
| Company | Price (public) | Funding / ownership | Overlap |
|---|---|---|---|
| CompanyCam | Core $79/mo ($63 annual), Crew $149 ($119), Scale $249 ($199); extra users $34/$29 [B] https://fieldcamp.ai/reviews/companycam/ | $415M Series C 2025, $2B valuation, ~$453M total, ~50k customers [B] https://getlatka.com/companies/companycam ; https://www.omahamagazine.com/business/built-in-nebraska-companycams-2-billion-valuation/ | Photo documentation, shareable reports. Closest threat. Whether it offers a homeowner-owned persistent record: not verified. |
| AccuLynx | ~$250/mo base, ~$120/user premium, unpublished [B] https://roofingsoftwareguide.com/reviews/roofsnap-pricing/ (roundup) | Verisk agreed to buy for $2.35B (Jul 30 2025); **terminated Dec 29 2025** after FTC review ran past deadline [A] https://www.roi-nj.com/2025/12/29/finance/verisk-ends-effort-to-buy-acculynx-executes-plan-to-redeem-acquisition-related-debt/ | Roofing CRM with job data; Verisk wanted its claims-network data. Signals insurers/data buyers value contractor job data. |
| JobNimbus | ~$250/mo (10 users) to ~$550/mo [B] | PE: Sumeru, Saratoga [B] | CRM |
| Roofr | Free; $249/mo; $349/mo; $13–19/report [B] | $43.9M over 9 rounds, Series B Jan 2025 [B] | Measurement + proposals |
| RoofSnap | $52–$105/user/mo; $13/report [B] | n/a | Measurement/estimating |
| SalesRabbit | quote | Bought RoofLink late 2024 [B] https://salesrabbit.com/insights/roofing-software/ | Sales + production |
| Hover | n/a | ~$142M total, last big round $60M Series D Nov 2020 led by insurers [B] https://news.crunchbase.com/venture/hover-raises-60m-series-d-led-by-insurance-carriers/ | iPhone 3D property capture, insurer ties |
| EagleView | $15–$87/report | Vista (2015) + Clearlake (2018) [B] | Aerial measurements, insurer data |

Pricing pages for all above: aggregated from review sites, not first-party fetches [B]. Roofer willingness to pay for adjacent software is $60–$250/month.

### 5b. Manufacturer warranty registration
- GAF: enhanced warranties (System Plus, Silver/Golden Pledge) registered by the certified contractor; standard shingle warranty needs no registration, only proof of purchase [B] https://www.gaf.com/en-us/resources/warranties/residential
- Owens Corning: online registration by homeowners or contractors, collecting install date, shingle type/color, squares [B] https://warranty.owenscorning.com/pages/secure/help/HomeOwner/!SSL!/WebHelp/Inventory/Warranty_Registration.htm
- CertainTeed: online product registration; failure to register does not void warranty [B] https://www.certainteed.com/register-product
- Takeaway [C]: manufacturer portals already record install date and materials but are manufacturer-owned, product-specific, have no photos/permits/storm history and are not insurer-accessible. This is the nearest thing to an existing record and a possible integration partner or a competitor.

### 5c. FORTIFIED
- IBHS FORTIFIED Roof is certified by third-party evaluators; designations on new roofs valid 5 years; Oklahoma OKReady grants up to $10,000 [B] https://ibhs.org/alabama-fortified-roof-endorsement/ ; https://www.oid.ok.gov/wp-content/uploads/2026/02/260108_SOH-Checklist-Flyer.pdf . Designation volumes: not found. Evaluator tools exist at IBHS; I did not test them.
- Opportunity [C]: Texas B-0008-26 and Alabama/Oklahoma programs create demand for evaluator/contractor documentation workflows.

### 5d. Home-history / "Carfax for homes"
- **Is there a homeowner-owned roof record already?** I found no product matching "contractor-captured roof-specific record owned by the homeowner and verifiable by third parties." Closest: HomeBinder (generic), manufacturer warranty portals, contractor certificates of completion (PDFs) [B for absence, search-limited].
- HomeBinder: founded 2012, acquired by InspectionGO Feb 21, 2023 [B] https://mergr.com/homebinder-overview ; free to homeowners, paid by inspectors/agents as a client-retention gift [B] https://pages.homebinder.com/realtor-faq
- Centriq: shut down; accounts deleted Jan 31, 2026 per most sources (one source says Jan 2025) [B] https://dib.io/blog/centriq-shutting-down-alternative
- HouseFix ("Carfax for homes"): closed 2012 after one year, could not attract a large enough user base [A] https://techcrunch.com/2012/10/08/housefix-the-carfax-for-homes-closes-up-shop/
- HomeZada: $2.1M seed total [B] https://tracxn.com/d/companies/homezada/__tk-ABv7N4yb6BaNvuaOibQK1381pS3xKLSPhGP3gznA/funding-and-investors ; Dwellin Pro $2.99/mo or $24.99/yr [B] https://www.prnewswire.com/news-releases/dwellin-shows-homeowners-annual-home-maintenance-costs-and-carbon-footprint-in-one-easy-to-use-mobile-app-301530487.html ; Homer free + in-app purchases.
- RealReports: $2M seed Feb 2024 from TTV, Moderne; aggregates 30+ public data sources into a buyer-side report [B] https://www.realestatenews.com/2024/02/07/carfax-for-homes-startup-secures-funding
- HouseCanary (adjacent AVM, $129M raised) filed Chapter 11 in Sept 2026 [B] https://www.housingwire.com/articles/housecanary-chapter-11-bankruptcy/
- Why they fail or stay small [C, pattern across the above]: (1) consumer apps depend on homeowners entering data and logging in rarely (home sale or claim only); (2) no payer: homeowners won't pay, so revenue came from B2B2C partners (inspectors, agents) at low ACV; (3) data is self-attested, so third parties don't trust it; (4) no repeated reason to open the app. Roof Record fixes (3) and partly (1) by having the roofer create it, but (2) and (4) remain.

## 6. Bottom-up TAM / SAM / SOM (roofer-paid wedge)
All ARPU inputs are my assumptions anchored on 5a prices.

| Step | Input | Value | Label |
|---|---|---|---|
| TAM firms | NAICS 238160 establishments | 24,532 | B |
| ARPU low | $49/mo add-on | $588/yr | D (anchor: RoofSnap $52+/user, CompanyCam $63+) |
| ARPU high | $99/mo | $1,188/yr | D |
| **TAM** | 24,532 × $588–$1,188 | **$14.4M–$29.1M/yr** | C |
| Alt per-record view | 2–3M replacements × $15–$25/record | $30M–$75M/yr | D (count and price both unsourced; the low end of price is just under EagleView $15 floor) |
| SAM firms | hail-belt 6 states share of establishments | assume 15% ≈ 3,700 | D (no state split found) |
| SAM filter | tech-using, 3+ crew, will pay for software | assume 30% ≈ 1,100 | D |
| **SAM** | 1,100 × $588–$1,188 | **$0.65M–$1.3M/yr** | D |
| SOM (yr 1–3) | 5–15% of SAM firms (55–165 firms) | **$32k–$196k ARR** | D |

Reading: a solo-founder SaaS business tops out near $0.1–0.2M ARR in three years from roofer subscriptions alone. Upside requires a second payer.

Second-payer scenarios (all **D**, no sourced price): insurers buying verified roof data. A permit/imagery roof-age lookup already exists, so a contractor record must beat that on coverage; at, say, 100k records by year 3 and $1–$5/lookup it is $0.1M–$0.5M. Homeowner subscriptions: anchored by Dwellin at $24.99/yr and HomeBinder free, so assume ≤$25/yr; 10k homeowners = $250k. Lenders/home buyers: no evidence of demand.

## 7. Risks and unknowns
1. CompanyCam can ship a "roof record" report in a quarter; it has $415M and ~50k customers [B].
2. Insurer regulatory direction: bans on age-only action (FL, MS, VA, TX proposed) lower insurers' appetite for age data but favor inspection/FORTIFIED proof. Mixed [C].
3. Verisk/AccuLynx attempt shows data incumbents want contractor data, but the FTC blocked it; a standalone contractor-data asset would face the same Verisk/Moody's gravity [C].
4. Cold-start: roofers get no benefit until homeowners/insurers recognise records [C].
5. Gaps: Census CBP primary table, nonemployer counts, insurer pricing, FORTIFIED volumes, state splits, CompanyCam homeowner-sharing features, Minnesota/Kansas/Nebraska legislation depth.

## 8. Verdict input (for the synthesizer)
Lean SHELVE as a standalone company; keep as a feature/wedge only if bundled with a FORTIFIED-evaluator workflow in Texas/Oklahoma/Alabama (regulatory pull, evaluator-paid, installer-paid) or if a verified customer-development test shows insurers will pay for contractor-captured records. A 10-roofer pilot and 5 agent/underwriter interviews would settle it cheaply.
