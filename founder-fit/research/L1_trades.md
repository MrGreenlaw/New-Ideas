# L1 — Trades & Local Home Services: Opportunity Candidates
Analyst date: 2026-10-01. Founder: Elliot Greenlaw (student, Edmond OK, solo SwiftUI builder, design-strong, Greenturf landscaping exposure, no licences, no capital).

**Evidence labels:** A = directly verified at cited source; B = strongly supported by multiple/secondary sources; C = my inference; D = speculation. Vendor-written blogs (missed-call stats, "best software" listicles) are marketing, so I cap them at B.

## 0. Market facts gathered (context)
- Landscape services market ~$188.8B in 2025, ~692,777 businesses, 13.0% avg profitability (IBISWorld via Aspire/LawnStarter summaries) — B. https://www.youraspire.com/blog/landscaping-industry-statistics , https://www.lawnstarter.com/blog/statistics/lawn-care-landscaping-statistics-2026/ . NAICS 561730: 113,083 firms / 115,196 establishments in 2020 (Census-derived listing) — B. https://www.naics.com/what-is-naics-561730-full-description-and-statistics/ . I did not retrieve the CBP 2022 table directly: unknown/not verified.
- BLS: 943,430 landscaping & groundskeeping workers May 2024; median pay $38,470 for grounds maintenance workers; 4% growth 2024-34 — A. https://www.bls.gov/ooh/building-and-grounds-cleaning/grounds-maintenance-workers.htm , https://www.bls.gov/oes/2024/may/featured_data.htm
- Incumbent scale: ServiceTitan FY2026 (Jan-26) revenue $961.0M (+24%), ~10,800 customers >$10k annualised billings — A. https://www.globenewswire.com/news-release/2026/03/12/3255104/0/en/servicetitan-announces-fiscal-fourth-quarter-and-full-fiscal-year-2026-financial-results.html . ServiceTitan skews to large HVAC/plumbing/electrical, i.e. not the solo/small landscaper.
- Jobber pricing (2026, month-to-month): Core $49 (1 user), Connect $139 (5), Grow $199 (10), Plus $499 (15), extra users ~$29 — B (aggregators; confirm at getjobber.com). https://www.getonecrew.com/post/jobber-prices
- LMN from ~$297/mo; neither Service Autopilot nor LMN has native satellite measurement or customer self-quoting; users complain Service Autopilot is "going downhill", Jobber lacks bulk reschedule for rain days — B (listicle + LawnSite forum). https://www.lawnsite.com/threads/jobber-vs-service-autopilot.506532/ , https://servicebusinessacademy.org/top-4-differences-service-autopilot-lmn-landscaping-2026/
- Measurement incumbents: EagleView reports ~$15-38 standard, up to ~$87 premium; Hover Pro $99/mo or $999/yr; RoofSnap from ~$99/mo with ~$9 pay-as-you-go reports — B. https://theroofingbrief.com/best-roof-measuring-app/ , https://theroofingbrief.com/2026-aerial-roof-measurement-software-report/
- AI voice/lead-response is the hot, well-funded lane: Avoca raised $125M+ total at $1B valuation (Series B, Apr 2026); Netic $23M Series B (Founders Fund) — A/B. https://fortune.com/2026/04/27/avoca-ai-agents-missed-calls-hvac-plumbing-roofing-kleiner-perkins-chen-shrivastava-braswell/ , https://techfundingnews.com/netic-ai-raises-23m-for-plumbers-roofers-home-services/
- CompanyCam: $2B valuation, $415M Series C (2025), ~$68M ARR 2024, 140k+ pros — B. https://siliconprairienews.com/2025/11/companycam-reaches-unicorn-status-with-2-billion-valuation-a-first-for-a-nebraska-startup/ , https://getlatka.com/companies/companycam (Latka figures are self-reported/estimated). Proof a design-led, mobile-first trades app can be huge — but also a warning: that lane is now capital-heavy.
- Missed calls: vendor studies claim 62-74% of home-service calls go unanswered and ~$1,200 per missed call — B-/C (vendor marketing, methodology unknown). https://www.higrovi.com/blog/contractor-missed-call-report-2026 , https://www.hicira.com/missed-call-statistics
- Oklahoma: 49.7% of OK roofs hit by severe hail over four years (highest in US), avg roof replacement $17,631 in 2025 (+33%) — A (Verisk report via OID). https://www.oid.ok.gov/release_062926/ . Strengthen Oklahoma Homes/FORTIFIED: grants up to $10k, ~400 roofs completed, avg $720/yr premium savings — A (same). AG Drummond sued State Farm (Jun 24, 2026; alleged "Hail Focus Initiative") and Allstate (Jul 7, 2026) over hail/wind claim handling — A (press/AG). https://oklahoma.gov/oag/news/newsroom/2026/june/drummond-files-new-lawsuit-against-state-farm.html , https://oklahomavoice.com/2026/07/07/oklahoma-attorney-general-sues-second-insurance-company-for-claims-practices/ . HB 1628 residential roofing endorsement: enforcement changes Jul 1 2026, endorsement mandatory later (reported Jan 1 2028; sources differ) — B. https://oklahoma.gov/cib/news/new-residential-roofing-endorsement-required-by-house-bill-1628.html . Deductible waivers illegal (HB 1940, 2022) — B.
- iPhone LiDAR: Pro models only (12 Pro-17 Pro); ~±2-4 in over a 20 ft room raw, 1-2% typical; fine for estimates, not survey — B. https://www.scanmanifold.com/blog-posts/lidar-on-iphone-how-accurate-is-it-plus-the-biggest-errors-that-manifold-corrects . Key physical constraint (C, from general knowledge of the sensor, ~5 m range, weak in bright sun on outdoor surfaces): LiDAR is an INDOOR/near-field tool. Lawns, roofs and yards are better handled by satellite/aerial imagery + AI segmentation, with the phone camera (photogrammetry) as a verifier. Do not build a "scan the whole yard with LiDAR" product.

---

## 1. Satellite "Instant Quote Link" for lawn/landscape/fence/paint-prep (area measure + guardrailed price + customer self-booking)
- **Problem / who pays:** Small lawn & landscape firms lose bids by being slow to quote (drive-by, call-back, measure). Owner pays $29-99/mo (C).
- **Evidence:** Neither Service Autopilot nor LMN has native satellite measurement or customer self-quoting (B, link above). Lead-response decay is widely asserted by vendors (B-/C).
- **Existing/gaps:** Jobber has online booking/request forms but quoting is manual; LawnStarter/GreenPal/Lawn Love are marketplaces that quote by satellite but take a cut and own the customer (B). Measurement specialists (EagleView/Hover) target roofs, not turf. Gap: a contractor-OWNED, beautiful quote page that measures the lawn from imagery, applies the owner's own price rules, and lets the homeowner confirm.
- **Why now:** Cheap, good aerial imagery APIs and vision models for segmenting turf/beds/hardscape (C; licence terms of imagery providers are a real constraint and I did not verify them).
- **30-day wedge:** Web + iOS owner app: paste address, tap polygon on imagery (AI pre-draws turf), owner sets $/sq ft rules, shareable "Your Quote" page with Greenturf-grade design. Try with 10 Edmond/OKC mowing companies, free for 3 months.
- **Path to $100M:** 100M / ~$600 ARR (blended) = ~170k paying shops, which is ~25% of ~690k US landscape businesses: not credible alone. Needs expansion to all measurable trades (fence, roofing, paint, gutters, pressure wash, pool, pest at lot-size pricing) plus payments take rate. Honest: plausible $5-20M niche; $100M only as a payments+multi-trade platform (D).
- **Moat:** Weak initially (feature, not moat). Becomes distribution via customer-facing links, local pricing data, imagery-derived property database. Incumbents (Jobber) can copy.
- **Founder-fit: 8/10.** Design-first, iOS/web, Greenturf credibility, tiny backend, no licence needed.
- **Verdict: MAYBE-STRONG (as a wedge, weak as a standalone $100M).**

## 2. AI missed-call / text-back for SMALL trades (sub-$50/mo)
- **Problem:** Solo and 1-5 person crews cannot answer on a roof/mower. Owner pays.
- **Evidence:** 62-74% unanswered claims (vendor, B-). Cheap players already at $199/yr (SkipCalls) (B). https://skipcalls.com/blog/true-cost-of-missed-business-calls-2026
- **Existing:** Avoca ($1B), Netic, plus dozens of voice-AI shops; Jobber/Housecall add their own (C).
- **Why now:** Voice models good and cheap. But that is exactly why it is crowded.
- **Wedge:** iOS "call-me-back" text-back app. Easy to build; hard to differentiate.
- **Path to $100M:** Possible only for the funded leaders; telephony margins and churn (SMB trades churn hard, C).
- **Moat:** None for a solo entrant.
- **Founder-fit: 4/10** (can build it, will be out-marketed and out-funded; carrier compliance A2P 10DLC and call recording law burden).
- **Verdict: WEAK for this founder.**

## 3. Oklahoma hail-season roof "claim evidence pack" for homeowners (consumer, not contractor)
- **Problem:** After hail, homeowners face adjusters under scrutiny; AG alleges State Farm/Allstate systematically lowballed roof claims (A). Homeowner pays $0-49; contractors/referrals pay for leads (C).
- **Evidence:** 49.7% of OK roofs hit (A); avg replacement $17.6k (A); AG lawsuits (A).
- **Existing:** CompanyCam, EagleView/Hover reports, public adjusters (licensed, take 10-20% - B/C), roofers' free inspections (conflict of interest).
- **Gaps:** A neutral, timestamped, geotagged photo+date-of-loss file with hail-history check. HUGE legal risk: advising on claims can be unlicensed public adjusting (Oklahoma regulates this; I did not verify the statute text). Must remain "documentation tool", never advice.
- **Why now:** Litigation and press attention; Strengthen Oklahoma Homes/FORTIFIED grants (A).
- **Wedge:** Free iOS app: guided roof/property photo capture, hail-event lookup (NOAA/SPC public data, B), PDF export. Monetise by connecting with CIB-registered roofers.
- **Path to $100M:** Consumer-claim lead-gen is lumpy by storm; selling roofer leads reintroduces the storm-chaser trust problem. Honest: regional niche; $100M improbable (C).
- **Moat:** Local trust, data on events; weak otherwise.
- **Founder-fit: 5/10.** Faith/"dignity for all" values fit protecting homeowners; legal and lead-gen incentives conflict with "trust over pressure".
- **Verdict: MAYBE (regional; legal review needed).**

## 4. "Trust-score" verified contractor profile for Oklahoma roofing (CIB registration + insurance + deductible-law compliance)
- **Problem:** Storm chasers; registration required, unregistered work a misdemeanor since Jul 1 2026 (B); $500k GL minimum residential (B). Homeowner wants to verify; legit roofers want to be distinguished.
- **Existing:** CIB public lookup, Google/Yelp/BBB, Angi/HomeAdvisor, Roofr (C).
- **Gap:** Fast, mobile-friendly verification + proof-of-insurance badge. Roofer pays $20-50/mo (C).
- **Wedge:** Free "Check a roofer" page after hail; roofers pay to claim a verified profile.
- **Path to $100M:** Directory businesses fight Google/Angi; lead-gen is trust-hostile. Only works with an enforcement-aligned data play across states (D).
- **Moat:** Brand trust, state data. Thin.
- **Founder-fit: 6/10** (values-aligned, design strong, but cold-start two-sided market).
- **Verdict: WEAK-MAYBE.**

## 5. Crew photo-to-estimate for junk removal / tree service / debris (volume-based quoting)
- **Problem:** Junk, tree, brush hauling quotes are priced by volume/difficulty; customers text photos, owners eyeball. Owner pays.
- **Evidence:** Specific pain data: unknown/not found. C.
- **Existing:** 1-800-GOT-JUNK own app (C), generic CRMs. Few tools.
- **Why now:** Multimodal vision LLMs can estimate truckloads from photos (C; accuracy unproven, D).
- **Wedge:** Customer uploads 3 photos; app returns price range per owner rates; owner confirms. LiDAR helps for indoor piles (cubic yards) — one of the few genuine LiDAR fits (C).
- **Path to $100M:** Small trade count; at best a feature. 
- **Moat:** Labelled photo/price dataset over time (D).
- **Founder-fit: 6/10.** Doable and LiDAR-flavoured; market small.
- **Verdict: WEAK-MAYBE.**

## 6. Rain-day / schedule-shock rescheduler for recurring lawn routes
- **Problem:** Weather moves 60+ stops; Jobber lacks bulk move (LawnSite forum, B). Owner pays.
- **Existing:** Service Autopilot, Jobber, Yardbook, Spraye (B).
- **Gap:** One-tap "rain day: shift everything, text customers, fix route" with beautiful UX. It's a feature incumbents can ship in a quarter (C).
- **Wedge:** Standalone iOS app layered on Jobber API export (C: API access/terms unverified).
- **Path to $100M:** No.
- **Founder-fit: 7/10 skill; 3/10 business.**
- **Verdict: WEAK (feature, not company).** Useful as a retention feature inside #1.

## 7. Homeowner-owned "home service passport" (consumer-side record of all home work, warranties, FORTIFIED roof, receipts)
- **Problem:** Warranty/permit/photo records scattered; resale and insurance benefit from FORTIFIED proof (6.8% resale uplift, 55-74% fewer claims, A via OID).
- **Existing:** HomeZada, Centriq, Thumbtack/Angi history (C).
- **Gap:** Contractors push completion records into the homeowner's passport (CompanyCam-style share).
- **Path to $100M:** Consumer home-management apps historically fail on retention (C); B2B2C via contractors is the only route.
- **Moat:** Data network if contractors adopt. Hard cold start.
- **Founder-fit: 6/10.**
- **Verdict: WEAK.**

## 8. Change-order & scope-creep capture for design-build landscape / hardscape / fence
- **Problem:** Verbal add-ons never billed; margin leaks. Owner pays.
- **Evidence:** Landscaper avg profitability 13.0% (B) means small leaks matter; specific change-order loss stats: unknown.
- **Existing:** LMN, Aspire (budget-based) handle estimating; change orders clunky (C, not verified).
- **Wedge:** Voice-memo-on-site → priced change order → customer e-sign link. 
- **Path to $100M:** Sub-feature of FSM; no.
- **Founder-fit: 6/10.**
- **Verdict: WEAK-MAYBE (good module, weak company).**

## 9. Spring-startup/Seasonal "pre-sold route" marketplace-lite for new lawn firms (owner-led, not marketplace)
- **Problem:** New/small firms struggle to fill routes; marketplaces (LawnStarter, GreenPal) take fees and own customers (B).
- **Wedge:** Greenturf-style premium site templates + instant quote (#1) + review-request automation, sold as a $49 kit to young entrepreneurs (students).
- **Path to $100M:** Website/marketing template businesses cap low; Wix/Squarespace/Jobber websites compete (C).
- **Founder-fit: 7/10**; mission fit with helping young entrepreneurs.
- **Verdict: MAYBE as a distribution channel for #1, not alone.**

## 10. Financing/payments layer (pay-in-installments at the quote link) for landscape/hardscape/roofing
- **Problem:** $10k+ projects (roof $17.6k avg OK, A) need financing; contractors lose jobs without it.
- **Existing:** Wisetack, Hearth, GreenSky/Synchrony, Jobber/Housecall payments (C; I did not verify current terms).
- **Gap:** Few for mid-sized landscape projects; but lending requires partner bank/licensing; founder has no licences and no capital.
- **Path to $100M:** Best revenue ceiling in the list (take rates on volume) but via partnering with a lender (D).
- **Founder-fit: 3/10** now. Revisit as phase 2 of #1.
- **Verdict: WEAK now; strong later as monetisation layer.**

## 11. LiDAR indoor scope capture for painters/cleaners/flooring (room dimensions, wall area → quote)
- **Problem:** Painters/flooring/cleaning quote by sqft and wall area; measuring is slow.
- **Evidence:** LiDAR ±1-2% adequate for estimates (B).
- **Existing:** Hover (exteriors), magicplan, RoomScan Pro, Polycam, CompanyCam LiDAR guide (B). Crowded in apps; weak in quote-to-customer flow for painters.
- **Wedge:** Customer-side scan ("scan your rooms, get painter quotes") is a consumer-acquisition hard problem; contractor-side is a feature.
- **Founder-fit: 7/10** (LiDAR idea in profile) but Pro-iPhone-only limits customer-side; commodity.
- **Verdict: WEAK.**

---

## Top 3 ranked

**1. #1 Satellite Instant-Quote Link (start with lawn/landscape in OKC metro, then fence/pressure-wash/gutter/paint).** Best fit: design-led, front-end heavy, Greenturf credibility, no licence, cheap to validate in 30 days (10 owners, free pilot). Single strongest reason it fails: it is a feature Jobber (or a funded AI competitor) can bolt on once someone proves demand, and imagery licensing/accuracy on irregular yards may erode trust, so there is no defensible $100M path without becoming a payments/multi-trade platform.

**2. #3 Oklahoma hail "documentation pack" (neutral photo/evidence tool) feeding #4 verification.** Strongest local tailwind (A-verified hail stats, AG lawsuits, new roofing law) and values alignment. Single strongest reason it fails: regulatory and incentive risk. Anything resembling claim advice is unlicensed public adjusting, and monetising through roofer leads recreates the storm-chaser conflict that the product is meant to fight; revenue is also storm-lumpy and regional.

**3. #9 + #1 hybrid: Premium "Greenturf kit" for new lawn entrepreneurs (site + quote link + reviews).** Fast to first dollar and mission-aligned. Single strongest reason it fails: the website/marketing-kit category has low willingness to pay and high churn, and Wix/Jobber/LawnStarter can match it; it only matters as a distribution wedge.

Rejected hype: AI voice receptionist (funded leaders like Avoca at $1B; no solo moat), consumer "home passport", LiDAR outdoor scanning (sensor range/sunlight limits, C), and financing (needs licences/capital now).

**Meta-caution:** most of the "pain" statistics (missed calls, lost revenue per call) come from vendors selling the cure. Before building anything, run 15 owner interviews in Edmond/OKC and ask for their last 10 lost bids.
