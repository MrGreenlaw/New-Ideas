# L2 — Hardware-adjacent & Spatial Capture Opportunities
Analyst lens: iPhone LiDAR / photogrammetry / Gaussian splatting / RoomPlan / drones / on-demand manufacturing / digital twins. Date: 2026-10-01. Founder: Elliot Greenlaw (see _founder_profile.md): student, SwiftUI iOS shipper, strong UI craft, Oklahoma, no professional licences, no capital, trust-first brand.

Evidence labels: **A** verified with a source I fetched or saw in search results (URL given) | **B** strongly supported by multiple sources / industry-standard knowledge | **C** inference | **D** speculation. Sources marked "(search snippet)" came from search-result summaries, not a page I fully read; treat figures from vendor blogs as marketing-grade. Some pages (Fannie Mae PDF) returned 403, so I relied on Fannie's selling-guide snippets.

## 0. What is actually new in 2025-26 (structural facts)
1. **Appraisal modernization is real and licence-free on the data-collection side.** Fannie Mae hybrid appraisals and Value Acceptance + Property Data require a trained, vetted third-party property data collector (PDC) who delivers Uniform Property Dataset data to the Fannie Property Data API; "a license is not required unless mandated by state or federal statute"; collectors need professional training and an annual background check. [A] https://selling-guide.fanniemae.com/sel/b4-1.2-03/hybrid-appraisals ; https://homebuyer.com/guidelines/fannie-mae/hybrid-appraisals-b4-1-2-03 . Roughly one-third of GSE sellers had delivered at least one PDC-based waiver loan by late 2024 [B, search snippet via workingre.com/swishappraisal.com].
2. **Matterport is now inside CoStar** ($1.6B; $5.50/share; FY2024 revenue ~ $170M, subscription $99.5M) [A] https://virginiabusiness.com/costar-completes-1-6b-acquisition-of-matterport/ . Matterport raised prices 10-15% on professional tiers mid-2025 and Zillow pulled Matterport tours in Oct 2025 amid a CoStar dispute [B, search snippet: thefuture3d.com, matterport.com/blog/subscription-pricing-update]. Incumbent disruption = switching pressure.
3. **Oklahoma's 2026 insurance package** (OID) bars insurers from denying/refusing coverage "based solely on aerial images," bars non-renewal solely for roof age 15+, lets owners get independent inspections showing >=5 years useful life, mandates FORTIFIED roof discounts, shortens claim acknowledgement from 30 to 14 days and final resolution from 120 to 90 days [A] https://www.oid.ok.gov/release_121025/ . (It is a proposed package; I did not verify final enactment status of every item — [C] that it passed as described. One source says HB 3495 gives 24 months for hidden hail damage [B, arrowheadroofingokc.com snippet].)
4. **Severe-storm losses**: $51B US SCS insured losses in 2025, third straight year >$50B [A] https://www.iii.org/press-release/triple-i-severe-convective-storms-generate-more-than-50b-in-insured-losses-for-third-consecutive-year-041326 . State Farm paid >$5.6B hail claims in 2025, Oklahoma in top-5 states [B, search snippet insurancebusinessmag]. Average roof replacement ~ $17,631 (+33% vs prior 4-yr avg) [B, Verisk via insurancebusinessmag].
5. **Aerial-imagery underwriting backlash**: CT, NH, PA told insurers aerial imagery alone can't justify non-renewal; Texas non-renewals nearly doubled 2020-23 [B] https://www.kut.org/housing/2025-05-13/austin-texas-homeowners-insurance-coverage-drone-surveillance-renewal-offers . Owners now must "prove their case" -> demand for ground-truth evidence [B].
6. **Capture commoditised.** iPhone LiDAR/RoomPlan accuracy is ~ +/-2-4 in over 20 ft with default frameworks (~1-3 cm in normal rooms with good technique) [B] https://www.scanmanifold.com/blog-posts/lidar-on-iphone-how-accurate-is-it-plus-the-biggest-errors-that-manifold-corrects ; RoomPlan wall/window ~95% P/R, doors ~90% [B] https://machinelearning.apple.com/research/roomplan . Polycam: LiDAR + photogrammetry + Gaussian splatting on iOS/Android, Business ~ $400/yr, $22M raised total [A/B] https://www.prnewswire.com/news-releases/polycam-raises-18m-to-democratize-3d-creation-302055587.html ; https://poly.cam/blog/best-matterport-alternatives . Lesson [C]: *capture itself is not a moat or a business; workflows tied to money (claims, loans, estimates) are.*
7. **Drones**: FAA Part 108 (BVLOS) final rule at OIRA since 2026-07-10, not published as of 2026-09-18 [B, search snippet airdata/droneauthority]. Not yet an enabler.

Pricing anchors: Encircle ~ $250/mo unlimited users; DocuSketch ~ $429/mo (360 -> Xactimate; "360AI" May 2026) [B] https://pushleads.com/restoration-company-seo/restoration-documentation-software/ ; https://contractortoolstack.com/software/docusketch/ . Xactimate $2,390-2,690/user/yr [B] https://fervorstudio.ca/news/xactimate-review-pricing-alternatives/ . Verisk subscription = 83% of revenue [A] investing.com Q1-2025 slides. EagleView reports $33 / $58 / $94 residential [B] https://roofgenius.ai/blog/eagleview-pricing-2026-update . Hover Pro $99/mo, projects from $9; ~$142-178M raised [B] pitchbook.com/profiles/company/55767-16 snippet. Hybrid appraisal total $250-375; PDC costs ProxyPics $50-100/inspection; Freddie says property data report ~ $200 vs ~ $600 traditional [B, search snippets housingwire / r3amc].

---
## 1. Candidate list

### C1. Local PDC (property data collection) toolkit + Oklahoma collector pod
- **Problem / who pays:** Lenders/AMCs need UPD-compliant interior/exterior data, floor plan, photos delivered fast in every county. AMCs/valuation vendors (Clear Capital, ProxyPics, Asteroom, CloudPano, Reggora/ValueLink workflow) pay per inspection; collectors earn a slice.
- **Evidence:** Fannie PDC rules, no licence needed [A, links above]. Clear Capital ~16,000 collectors / 93% US address coverage; ProxyPics claims 180,000 "proxies"; Asteroom ~5,000 realtors, 50-80+ AMCs, ~2.2-day turn, <3% revision [B, vendor claims] https://www.swishappraisal.com/articles/en/property-data-collection-providers-guide ; https://www.asteroom.com/en/hybrid-appraisal-data-collection .
- **Existing / gaps:** Networks already own demand and tooling; collector economics are thin ($50-100/job, B). Gap: rural/small-town coverage, quality, and collector-side tooling (scan -> UPD -> floor plan with ANSI-style GLA) are vendor-locked. [C]
- **Why now:** GSE volume shifting to waivers + PDC; Freddie/Fannie both pushing; background-check-only entry.
- **30-day wedge:** SwiftUI + RoomPlan app: guided UPD checklist capture, auto sketch, photo QA (blur/missing room), export packet; apply to be a collector for Asteroom/ProxyPics/Clear Capital in OKC metro; do 20 real jobs to learn the fields. Revenue day 30 = a few hundred dollars [C].
- **Path to $100M:** Hard. Options: (a) become a PDC network (marketplace take-rate; need ~ $100M GMV at ~ 15-20% = ~ $15-20M revenue, so $100M revenue needs ~ $500M+ GMV, i.e. millions of inspections) [C]; (b) SaaS sold to AMCs (crowded). Realistic outcome is a $1-10M business [C].
- **Moat:** Data quality scoring, collector density in a region, integration with AMC systems. Weak; networks are 10-100x larger [C].
- **Founder-fit: 7/10.** Zero licence, iOS-native, student-schedulable (gig hours), trust/quality brand fits. Weakness: it is a service job; scaling needs ops, not just code.
- **Verdict: MAYBE** (great learning wedge, poor $100M story).

### C2. ANSI-Z765 square-footage & sketch/measure tool for appraisers, agents, PDCs
- **Problem / who pays:** GLA disputes cause appraisal rework; appraisers/agents/PDCs pay $/report or $/mo for an ANSI-compliant sketch with provable measurement.
- **Evidence:** Floor-plan accuracy is a known pain; vendors (magicplan, CubiCasa-style, CloudPano "floor plan in 4 min") exist [B]. No hard spend figure found — [D] on market size.
- **Existing / gaps:** magicplan, Polycam, Matterport, CloudPano, appraiser sketch tools. Gap: trusted measurement *audit trail* (confidence, scan-quality score, ANSI Z765 reporting) rather than just a picture. [C]
- **Why now:** PDC floor plans must flow into appraiser reports; desktop/hybrid make third-party measurement the only on-site measurement. [C]
- **30-day wedge:** RoomPlan scan -> PDF with ANSI-style sq ft, room list, scan confidence; $9/report or $29/mo; sell to 20 OKC agents/appraisers via cold email.
- **$100M path:** Poor standalone (small TAM, [C]). Could be a feature of C1.
- **Moat:** Weak.
- **Founder-fit: 7/10.** Easy to build, premium UI differentiator, but few dollars per user.
- **Verdict: WEAK as standalone / feature of C1.**

### C3. Hail-season roof & exterior "evidence packet" (contractor-side SaaS + homeowner view), Oklahoma first
- **Problem / who pays:** Under the 2026 OK package, owners can use an independent inspection to challenge roof-age non-renewal, and carriers can't act solely on aerial images [A, OID]. Roofers/inspectors need to deliver dated, geotagged, adjuster-grade documentation fast after every storm; homeowners need a pre-loss baseline. Payer: roofing contractors/independent inspectors (SaaS), possibly independent insurance agents (retention tool).
- **Evidence:** $51B SCS losses [A]; roof replacement ~ $17.6k [B]; premiums ~ $4.6k avg for $300k home in OK, >2x national [B, joingerald/okinsurancegroup snippets, low-quality sources]; 2026 deadlines shortened, so paperwork speed matters [A].
- **Existing / gaps:** EagleView ($33-94/report), Hover ($99/mo), CompanyCam/AccuLynx/JobNimbus-type roofing CRMs [B, from industry knowledge], drone inspection vendors. Gap: *homeowner-owned, pre-loss, time-stamped baseline* + OK-specific templates (FORTIFIED discount proof, roof-life evidence) not built by incumbents. [C]
- **Why now:** New legal hooks that make documentation monetarily valuable; aerial-AI backlash. [A/C]
- **30-day wedge:** iOS app "Roof & Home Baseline": guided photo + LiDAR capture of exterior elevations and attic/roof photos, hashed timestamped PDF; give free to 5 OKC roofers/agents in exchange for feedback; charge $19 one-off or $49/mo per contractor. Never opine on damage/coverage (no adjuster/PA licence) — documentation only. Legal check required on "roof inspection" licensing rules in OK [C: I did not verify].
- **$100M path:** Multi-state expansion following aerial-imagery regulation + hail belt; contractor SaaS ~ $50-200/mo x 100k+ roofing/restoration firms is theoretically ~ $100M+ [D, TAM not verified]. Realistic: $5-20M.
- **Moat:** Trusted-evidence format accepted by adjusters, data network of pre-loss baselines (needs scale), local trust. Moderate if adjusters/carriers adopt [C].
- **Founder-fit: 7/10.** Trades exposure (Greenturf), Oklahoma context, UI craft, faith-based "protect people from being dropped by insurers" narrative with dignity angle. Constraints: must avoid licensed activities.
- **Verdict: MAYBE-to-STRONG** (best narrative fit; monetization unproven).

### C4. Homeowner "self-inspection" workflow for underwriters/MGAs (carrier-facing)
- **Problem / who pays:** Insurers need verified roof/age/condition when aerial-only decisions are restricted; they pay per completed verified inspection or SaaS.
- **Evidence:** Regulatory pushback (CT/NH/PA; OK) [A/B]; State Farm via CAPE (Moody's) and others dominate remote data [B] https://www.moodys.com/web/en/us/solutions/underwriting/property-underwriting.html ; SnapInspect-type self-inspection exists [B, blog.snapinspect.com].
- **Existing / gaps:** Cape/Moody's, Nearmap, Cotality, Verisk, Zesty.ai (aerial); Snapsheet-style claims photo flows. Gap: ground-truth capture with chain-of-custody at low cost. [C]
- **Why now:** Aerial-only is contested; more states likely to follow (NY considering) [B].
- **30-day wedge:** Hard — carriers don't buy from students in 30 days. Pilot with one independent agency / small OK mutual: free self-inspection links. [C]
- **$100M path:** Plausible in theory (carrier budgets are large) but sales cycles 6-18 months, SOC2, procurement. [C]
- **Moat:** Integrations and carrier trust; weak early.
- **Founder-fit: 4/10.** Enterprise sales, compliance, capital.
- **Verdict: WEAK now (revisit as a C3 expansion).**

### C5. Budget iPhone-only scope capture for small restoration/roofing contractors (Encircle/DocuSketch alternative)
- **Problem / who pays:** Mitigation contractors pay for fast floor plan + photo docs that feed Xactimate. Pay $250-429/mo today.
- **Evidence:** Pricing above [B]; all four major tools (Encircle, DocuSketch, magicplan, Matterport) integrate with Xactimate as of June 2026 [B, search snippet tygartmedia / topbusinesssoftware]; Encircle sketch turnaround "<6 hours" (B).
- **Existing / gaps:** Entrenched, funded. Gap: price/feature complexity for 1-5 person shops; Xactimate ESX is Verisk-controlled; third-party generation of Xactimate sketches goes through partner programs [C].
- **Why now:** Cheap RoomPlan + on-device processing remove the need for $4k 360 cameras; DocuSketch pivot to AI shows cost pressure. [C]
- **30-day wedge:** "RoomPlan -> PDF/DXF/Xactimate-importable sketch" for $49/mo; recruit 5 OKC restoration shops. ESX export likely requires Verisk partnership — verify [C].
- **$100M path:** Needs displacing Encircle; Verisk can crush via API terms. Realistic ceiling $5-15M [C].
- **Moat:** Weak.
- **Founder-fit: 6/10.** Technical fit yes; domain knowledge gap (Xactimate line items, IICRC), no licence needed but industry credibility needed.
- **Verdict: WEAK-MAYBE.**

### C6. Pre-loss home inventory via LiDAR/video + AI item recognition (consumer / agent-distributed)
- **Problem / who pays:** >50% of homeowners lack an inventory (Triple-I/Munich Re 2023); of those who have, ~half lack receipts [A] https://www.iii.org/fact-statistic/facts-statistics-homeowners-and-renters-insurance . Payers: consumers (low WTP), insurers/agents (retention, claims leakage), mortgage servicers.
- **Existing:** NAIC Home Inventory (free), Sortly, Encircle Home Inventory, Nest Egg, many AI newcomers [B]. Free options make consumer monetization hard.
- **Why now:** On-device vision/LLM can auto-list from a 3-minute video (C).
- **30-day wedge:** Video -> itemized list with values; sell to 10 independent OK agents as white-label gift ("storm-season prep"). 
- **$100M path:** Only through carrier/agent distribution (embedded) — long. [C]
- **Moat:** Weak; distribution only.
- **Founder-fit: 6/10.** Perfect UI craft and mission fit; weak business model.
- **Verdict: WEAK** (classic "everyone agrees, nobody pays").

### C7. Tinker AFB / aerospace MRO scan-to-CAD & printed replacement-part service
- **Problem / who pays:** Legacy aircraft parts obsolete; Tinker's REACT lab already reverse-engineers/prints parts, cut some lead times from 120-136 days to 14-21 days [A] https://www.tinker.af.mil/News/Article-Display/Article/4362517/react-engine-for-innovation/ (search snippet says 120-136 days to 14-21; snippet text misreported as "administrative leave" but context is lead time) [B].
- **Existing:** In-house REACT lab, AFRL, OU metals lab, GE/Pratt, large AM service bureaus [B].
- **Gap:** Subcontractor opportunities exist, but they require metrology-grade scanners (iPhone LiDAR is not adequate for tolerance work [B]), AS9100, ITAR/CMMC compliance, SAM.gov registration.
- **30-day wedge:** None credible for a student w/o clearance or equipment. Could attend Tinker small-business events [C].
- **$100M path:** Possible only as a capital-heavy manufacturing firm [C].
- **Founder-fit: 2/10.**
- **Verdict: WEAK.**

### C8. Custom orthotics / 3D-printed on-demand goods
- **Problem / who pays:** Consumers pay $50-400 for custom insoles; clinics pay labs.
- **Evidence:** Custom orthotic insoles are FDA Class I, 510(k)-exempt (21 CFR 890.3475) [A] https://www.accessdata.fda.gov/scripts/cdrh/cfdocs/cfPCD/classification.cfm?ID=OHI — so no clinical licence needed to *sell* them, though state rules/claims language still matter [C].
- **Existing:** Groov, Foot ID, Orthotic Revolution, Self Scan 3D Orthotics, Foot Camera; HP Arize etc. [A: App Store links in search results] — crowded with funded players.
- **Gap:** Hardware/manufacturing capital, returns, margin; marketing-driven DTC. [C]
- **30-day wedge:** Print 20 pairs via a lab partner; but I'd expect low differentiation and heavy ad spend.
- **$100M path:** DTC health/consumer; possible but capital intensive, ad-driven (conflicts with "no manipulative urgency" brand) [C].
- **Founder-fit: 3/10.**
- **Verdict: WEAK.**

### C9. "Matterport refugee" kit for agents/photographers (capture + hosting + Zillow-safe delivery)
- **Problem / who pays:** Real-estate photographers/agents hit by Matterport price rises (10-15%) and CoStar/Zillow dispute [B].
- **Existing:** Polycam Business (~$400/yr), Zillow's own tools, CloudPano, Asteroom, Kuula etc. [B]
- **Gap:** Little; Polycam already markets itself as the alternative.
- **30-day wedge:** iOS app + hosted tour; low defensibility.
- **$100M path:** Needs massive scale vs. CoStar's marketing; weak.
- **Founder-fit: 5/10.**
- **Verdict: WEAK.**

### C10. Small-GC progress/as-built capture & oil-and-gas facility digital twins (OK)
- **Problem / who pays:** Contractors, operators pay for as-builts/progress records; O&G for facility asset records.
- **Existing:** OpenSpace, Cupix, Matterport, Faro, Trimble, Kaarta [B, domain knowledge — not researched here, C].
- **Gap:** Enterprise-grade accuracy, safety (Class 1 Div 2 devices), sales cycles; iPhone not acceptable in hazardous locations [C].
- **Founder-fit: 3/10.**
- **Verdict: WEAK.**

### C11. Drone roof/underwriting inspection service (Part 107)
- **Problem / who pays:** Roofers/insurers pay $100-300/inspection (B/C — not verified).
- **Existing:** Many local Part 107 operators; DroneBase-type networks; insurers' aerial vendors [B].
- **Why now:** Part 108 pending (not in force) [B]; pre-Part-108, BVLOS waivers needed.
- **30-day wedge:** Study for Part 107 (days), buy a drone (~ $1-2k, C), shoot OKC post-hail jobs. Cash-flowing but a labor business capped by hours; roof-climbing liability.
- **$100M path:** Needs software layer; same as C3 with a worse cost structure.
- **Founder-fit: 5/10.**
- **Verdict: WEAK (use as a *tactic* inside C3 only).**

---
## 2. Ranking summary table
| # | Candidate | Fit | Verdict |
|---|---|---|---|
| C3 | Roof/home evidence packet (OK) | 7 | Maybe/Strong |
| C1 | PDC toolkit + OKC pod | 7 | Maybe |
| C2 | ANSI sq-ft sketch for appraisers | 7 | Weak standalone |
| C5 | Budget restoration scope capture | 6 | Weak-Maybe |
| C6 | Pre-loss inventory | 6 | Weak |
| C9 | Matterport refugee | 5 | Weak |
| C11 | Drone inspections | 5 | Weak |
| C4 | Carrier self-inspection | 4 | Weak now |
| C8 | Custom orthotics | 3 | Weak |
| C10 | GC/O&G digital twins | 3 | Weak |
| C7 | Tinker MRO | 2 | Weak |

## 3. Cross-cutting skepticism
- Capture is commoditised: Polycam, Matterport, magicplan, CloudPano, Asteroom all give away or cheaply sell the sensor-to-model step. Any idea whose value is "a better 3D scan" is dead on arrival [B/C].
- The money is in *the workflow slot where a scan becomes a document someone relies on* (loan, claim, non-renewal appeal). Those slots are regulated or incumbent-owned (GSEs, Verisk ESX, carriers).
- Size claims for $100M+ here are mostly [D]. Honest base rate: spatial-workflow SaaS businesses reaching $100M ARR are Matterport-class (~ $170M revenue after ~15 years and a public-market cycle) [A, FY2024 revenue].
- Licence trap: do documentation, never opinions on damage, coverage, value, or roof condition. Fannie PDC explicitly keeps the collector as a data gatherer [A].

## 4. TOP 3 (ranked) with single strongest failure reason
1. **C3 — Oklahoma roof/home evidence packet (contractor SaaS with homeowner baseline).** Best match of founder (iOS, trades exposure, Oklahoma, trust brand) to a legally-created need. *Strongest failure reason:* nobody with money is *obligated* to accept your packet — if adjusters/carriers ignore third-party documentation, contractors won't pay and homeowners won't (free alternatives and existing roofing CRMs absorb the feature).
2. **C1 (+C2 as feature) — PDC collector toolkit and OKC pod.** Fastest to real revenue; licence-free by GSE rule. *Strongest failure reason:* per-job economics ($50-100, B) and incumbent networks that own AMC demand cap this at a gig/service business — no credible $100M path.
3. **C5 — Budget scope capture for small restoration contractors.** Real recurring spend ($250-429/mo today). *Strongest failure reason:* Xactimate/Verisk gatekeeps the estimate pipeline and Encircle/DocuSketch already integrate and are funded; a student's cheaper app has no durable advantage and can be cut off by API terms.

Suggested sequencing [C]: do C1/C2 as a 60-day cash-and-learning wedge in OKC, then use contractor relationships to test C3 during next spring hail season (March-June).
