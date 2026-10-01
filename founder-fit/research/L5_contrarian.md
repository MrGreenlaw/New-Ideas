# L5 Contrarian Scan: Problems Before Industries

Analyst lens: start from wasted money plus a 2024-2026 structural change, then apply a hard founder filter. Date: 2026-10-01.
Founder: see `_founder_profile.md` (iOS/SwiftUI shipper, design-strong, Edmond OK, student, no licences, no capital, faith-driven trust-first brand).

Evidence labels: A = verified in a fetched/search-result source, B = strongly supported by multiple or reputable sources, C = my inference, D = speculation. I did not invent numbers. Where a number comes from a vendor blog, I say so. Searches were snippet-level (no deep page fetches), so "A" means the source snippet states it, not that I audited the primary document.

---

## 1. Big problems considered (14)

1. Home-services front office (missed calls, booking, dispatch, quoting) for HVAC/plumbing/electrical.
2. Small-fleet trucking and freight back office (detention, invoicing, documents, driver compliance).
3. Property-management maintenance coordination (small landlords and small PMs).
4. Insurance claims friction on the policyholder/contractor side (storm and hail).
5. Medicaid/benefits paperwork under the new work-reporting and 6-month redetermination regime.
6. Prior authorization and payer APIs (CMS-0057-F).
7. Small-practice (dental/vet/PT) revenue cycle and claim denials.
8. Construction subcontractor payment compliance (lien waivers, COIs).
9. State/local government bid discovery and proposal writing for small contractors.
10. Small-business tax and information-reporting changes (1099 thresholds, Section 174A, e-file rules).
11. Childcare center administration (subsidy paperwork, staffing).
12. Mineral/royalty owner statement auditing (Oklahoma-specific).
13. Consumer-side price opacity on big home purchases (roof, HVAC, solar), the OTD pattern applied to other categories.
14. Restoration/roofing LiDAR scoping for Xactimate-style estimates.

---

## 2. Rejected, and why (the valuable list)

| Idea | Why it sounds attractive | Why it fails the founder filter |
|---|---|---|
| **AI receptionist/dispatch for home-service trades** | Huge, proven demand. | Already a funded land-grab. Avoca reportedly reached a $1B valuation on more than $125M raised (A: [Fortune](https://fortune.com/2026/04/27/avoca-ai-agents-missed-calls-hvac-plumbing-roofing-kleiner-perkins-chen-shrivastava-braswell/), [contractortoolstack](https://contractortoolstack.com/software/avoca-ai/)); Probook raised $40M from Sequoia/a16z ([Hardwire](https://www.thehardwirenews.com/probook-raises-40-million-ai-dispatch-hvac-contractors/)); Rebar raised a $14M Series A ([BusinessWire](https://www.businesswire.com/news/home/20260310158768/en/Rebar-Closes-$14M-Series-A-Led-by-Prudence-to-Rapidly-Scale-its-AI-Platform-for-HVAC-Electrical-and-Plumbing-Industries)); Driive raised a pre-seed ([PRNewswire](https://www.prnewswire.com/news-releases/driive-raises-pre-seed-round-to-build-the-ai-scheduling-platform-for-home-service-trades-302766196.html)). A solo part-time student is an AI wrapper against well-funded teams with voice-latency and integration depth. |
| **Prior-auth / payer API infrastructure** | Hard regulatory deadline: payer Prior Authorization, Provider Access and Payer-to-Payer APIs due 2027-01-01 ([CMS fact sheet](https://www.cms.gov/newsroom/fact-sheets/cms-interoperability-prior-authorization-final-rule-cms-0057-f)). | Buyer is a payer CIO. Needs FHIR/HIPAA depth, SOC 2, long enterprise cycles, clinical credibility. No 90-day customer. |
| **Dental/vet/PT revenue-cycle AI** | Vendor blogs claim 10-20% initial denial rates and $80-150K/yr recoverable for a 2-chair practice (B/C: vendor-sourced, [advalorem](https://ai.advalorem.io/reports/ai-dental-practice-insurance-verification-recall-treatment-planning-smb-2026.html)). | Crowded (Pearl, Overjet, Toothy, iCoreConnect, etc.), PHI/BAAs, payer-portal scraping, credentialed trust. Wrong first product for a student. |
| **Lien waiver / sub payment compliance** | Real pain, regulated by state statute. | Built, Beam, Levelset, GCPay, LienDone, Rabbet already exist ([Built](https://getbuilt.com/blog/lien-waiver-software-that-integrates-with-procore/)). Needs a 50-state statutory template library and Procore/accounting integrations. Legal-adjacent liability. |
| **Gov bid discovery for small contractors** | Fragmented portals, big total spend. | Cleatus, SamSearch, Bidara, OryonIQ and others all do this ([samsearch](https://samsearch.co/blog/top-tools-to-find-government-contracts-and-bids-in-2026)). Commodity data plus a wrapper, no moat. |
| **Pure LiDAR room-scan to insurance estimate (the "iPhone LiDAR app" idea)** | Matches the founder's LiDAR interest. | Xactimate shipped Sketch Scan (LiDAR floor plans on iOS) in June 2026 ([Xactimate/ClaimNorth results](https://claimnorth.com/)), and ClaimNorth, magicplan and ClaimCam already serve contractors. The platform owner is absorbing the feature. Keep LiDAR only as an input to something else (see Candidate A). |
| **Prior-auth/claims "AI appeals" for consumers** | Emotional, large. | Edges into unlicensed practice (insurance adjusting, medical/legal advice). Founder has no licence. High liability, thin willingness to pay. |
| **Small-business tax/1099 compliance** | 2026 changes: 1099-NEC/MISC threshold rising to $2,000, 1099-K back to $20,000/200 transactions, 10-return e-file rule, Section 174A election ([QuickBooks](https://quickbooks.intuit.com/r/taxes/small-business-guide-to-1099-form/), [BDO](https://www.bdo.com/insights/tax/irs-issues-procedural-guidance-on-obbba-treatment-of-r-and-e-expenditures)). | Rules got simpler, which shrinks the pain. Intuit, Tax1099 and others own it. CPA gravitas required. |
| **Enterprise AI agents "for back office"** (generic) | Fashionable. | No wedge, no moat, buyer needs enterprise sales credibility. Rejected as category. |

---

## 3. Surviving candidates

### Candidate A. Storm-claim evidence file (Oklahoma first): "claim-ready documentation" for homeowners and roofers
- **Problem (B):** After hail, policyholders and roofers fight carriers over scope, roof age and imagery. Oklahoma's AG has sued State Farm and Allstate over wind/hail handling ([NBC](https://www.nbcnews.com/business/consumer/lawsuit-alleges-state-farm-cheats-homeowners-rcna262814), [NPR](https://www.npr.org/2026/04/28/nx-s1-5793997/state-farm-home-insurance-hail-climate-change), [Oklahoma Watch](https://oklahomawatch.org/2026/01/12/families-speak-out-in-wake-of-news-of-state-farm-hail-scheme/)).
- **Who pays:** Roofing/restoration contractors (per-job fee or monthly), later homeowners (one-time) and possibly independent adjusters/public adjusters (licensed, who would be customers rather than competitors).
- **Evidence:** Oklahoma Insurance Department's 2026 legislative package targets slow claims, a Homeowner Bill of Rights, limits on denials based solely on aerial imagery, and roof-age fairness ([OID](https://www.oid.ok.gov/release_121025/)). Roofers are rethinking storm contracts ([Roofing Contractor](https://www.roofingcontractor.com/articles/102665-insurance-battles-push-roofers-to-rethink-storm-contracts)). Competitors: ClaimCam (adjuster/restoration photo AI), ClaimNorth (restoration estimating), Xactimate Sketch Scan (all A, from search results) — these serve estimating, not the policyholder-side evidence-and-deadline trail.
- **Why now:** Litigation and regulation make time-stamped, tamper-evident documentation and deadline tracking valuable; on-device iPhone LiDAR/vision is now good enough (B).
- **30-day wedge:** SwiftUI app: guided roof/interior capture (photos, GPS/time stamps, LiDAR room dimensions), a plain-English claim timeline with statutory deadlines (verify against OID guidance, with attorney review of the copy), export packet PDF. Give it free to 5 local roofing companies in Edmond/OKC for the next hail event; charge $X per packet after proof. Pricing is my D-level guess; test it.
- **Path to $100M+ (C/D):** Replicate state by state in hail/wind/hurricane states; become the neutral evidence layer roofers, mitigation firms and policyholder attorneys all send claims through; later claims-dispute data network. $1B is a stretch (D); $100M ARR requires multi-state plus attorney/contractor channels.
- **Moat:** Weak at first (workflow and trust brand). Real moat is a dataset of claim documentation plus outcomes and referral relationships (C).
- **Guardrails:** Do not adjust claims, negotiate, or give legal advice. Oklahoma regulates public adjusters (B/C, verify with OID before launch). Position as documentation software.
- **Founder-fit: 7/10.** iOS plus LiDAR plus Oklahoma hail geography plus trades exposure from Greenturf. Weak points: no insurance domain depth, claim-timing is seasonal.
- **Verdict: PURSUE as a 90-day test.**

### Candidate B. Medicaid work-reporting and redetermination companion
- **Problem (A):** States must implement work requirements by 2027-01-01; they must verify via payroll data and then request documentation; expansion adults face redetermination every 6 months ([CHCS](https://www.chcs.org/resource/a-summary-of-national-medicaid-work-requirements/), [CMS IFR fact sheet](https://www.cms.gov/newsroom/fact-sheets/medicaid-community-engagement-requirement-certain-individuals-interim-final-rule-comment-period-cms), [KFF](https://www.kff.org/medicaid/an-early-look-at-policy-decisions-as-states-get-ready-to-implement-work-requirements/)). Nebraska started 2026-05-01 ([Medicaid work navigator](https://www.medicaidworknavigator.com/timeline/)). The coverage the people lose is the cost: paperwork misses become lost coverage and, for providers, uncompensated care (C).
- **Who pays:** Not enrollees. Safety-net clinics (FQHCs), hospitals' financial-assistance teams, Medicaid managed-care plans, churches/nonprofits with grants. This is the crux and the main risk.
- **Why now:** A dated federal mandate across about 44 states (B, per summary sources) and a short implementation window.
- **30-day wedge:** Mobile-first reminder-and-document-vault app (pay stubs, hours, exemptions, deadlines, plain-language and Spanish) built with one Oklahoma clinic or church ministry. Free to enrollees, paid pilot by a clinic.
- **Path to $100M+ (C/D):** Become the enrollee-side layer for all means-tested benefits (SNAP, Medicaid, childcare subsidy) sold to health plans/providers per retained member. Real but needs government-adjacent data integrations.
- **Moat:** Trust with enrollees plus document history plus plan/provider contracts (C). Fast follower risk from health plans and vendors like state-contracted portals.
- **Founder-fit: 6/10.** Mission fit is excellent (dignity, serving people), iOS fit good; but government/health payer sales and privacy compliance exceed a student's 90-day reach, and the urgency window is already tight.
- **Verdict: PURSUE-LITE.** Run as a clinic-funded pilot only if a clinic will pay; otherwise shelve.

### Candidate C. Small-fleet detention and document recovery (plus driver-qualification file)
- **Problem (B, vendor-sourced stats):** Reported that only 29.3% of billed detention fees are collected ([FreightWaves tag search results](https://www.freightwaves.com/news/tag/ai-agent), [debales](https://debales.ai/blog/freight-broker-cash-flow-survival-2026)); invoice rejections from missing documents; small teams adopting AI for document workflows ([FreightWaves](https://www.freightwaves.com/news/ai-moving-from-back-office-to-drivers-seat-in-trucking-operations)). The 2026 FMCSA rules (non-domiciled CDL restriction effective 2026-03-16; ELP as out-of-service condition from 2026-02-04) shrink driver pools and add file-keeping burden ([Federal Register](https://www.federalregister.gov/documents/2026/02/13/2026-02965/restoring-integrity-to-the-issuance-of-non-domiciled-commercial-drivers-licenses-cdl)).
- **Who pays:** Owner-operators and 1-20 truck carriers (per truck monthly, or success fee on recovered detention).
- **Why now:** Cheap multimodal AI reads rate cons, BOLs and ELD timestamps; compliance rules tightened (B).
- **30-day wedge:** iPhone app: driver snaps BOL/arrival time, app auto-generates a detention claim packet with geo-timestamps and sends it. Success fee only.
- **Path to $100M+ (C):** Detention is a thin wedge; the real prize is small-fleet back-office OS (invoicing, factoring-ready packets, compliance), where Alvys and others already compete ([FreightWaves](https://www.freightwaves.com/news/tag/ai-agent)).
- **Moat:** Weak-moderate (document and timestamp data, broker payment-behavior data, C).
- **Founder-fit: 5/10.** Good mobile fit (drivers live on phones). No freight network; Oklahoma has a lot of trucking (B) but the founder has no relationships. Success-fee model keeps customer risk low.
- **Verdict: SHELVE unless a trucking contact surfaces.** Strongest failure: brokers and shippers dispute detention regardless of paperwork, so the product only works with leverage.

### Candidate D. Small-landlord (1-20 units) maintenance concierge
- **Problem (B):** Maintenance coordination eats owner-operator time. Vendoroo (end-to-end work orders), Lula, EliseAI, AppFolio, Haven (YC) already attack this ([Lula](https://lula.life/articles/ai-property-management-software), [Haven](https://www.usehaven.ai/post/ai-property-management-small-business-tools)).
- **Who pays:** Landlords, per unit per month.
- **Why now:** LLM triage and vendor-dispatch automation (B).
- **30-day wedge:** SMS/iOS triage bot for ten local landlords with a vendor list.
- **Path to $100M+:** Needs vendor marketplace liquidity (C). Crowded.
- **Moat:** Weak.
- **Founder-fit: 5/10.** Verdict: **KILL** as a standalone; the underserved sub-10-unit segment pays little.

### Candidate E. Oklahoma mineral/royalty-owner check auditor
- **Problem (B):** Royalty owners cannot verify payments from check detail; transparency is the top complaint; underpayment and deduction disputes are common ([Gable & Gotwals](https://gwlawok.com/royalty-deductions/), [OBA Journal](https://www.okbar.org/barjournal/may-2022/walraven/)). Tools exist: MineralTracker, Enverus EnergyLink, Trellis, Royalty Advocate, Valor ([Allegiance](https://allegianceoil.com/top-software-tools-for-managing-your-mineral-and-royalty-interests/)).
- **Who pays:** Mineral owners (often older, inherited interests), per-property subscription.
- **Why now:** Cheap OCR/LLM parsing of check stubs; heirs inheriting fragmented interests (C).
- **30-day wedge:** Upload check stub, get a plain-language breakdown and flagged deductions; sell through estate attorneys/CPAs and mineral-owner Facebook groups in Oklahoma.
- **Path to $100M+ (C/D):** Small TAM; maybe a regional niche business. Not a venture outcome without expanding to a generic "statement auditor" category.
- **Moat:** Weak-moderate (statement-format library per operator).
- **Founder-fit: 6/10.** Local, simple, honest-value product. Verdict: **SHELVE as venture, consider as bootstrapped side income.**

### Candidate F. Independent childcare center admin copilot (subsidy and compliance paperwork)
- **Problem (B):** About 90% of programs report staffing shortages; median wage about $14.60; about 30% turnover ([NAEYC 2026 brief](https://www.naeyc.org/sites/default/files/wysiwyg/user-174467/2026_survey_brief.pdf), [Jonson](https://jonson.ai/blog/daycare-staffing)); states push electronic subsidy and compliance reporting.
- **Who pays:** Center owners/directors, monthly.
- **Incumbents:** Procare, Playground, iCare, and others ([Procare](https://www.procaresoftware.com/blog/best-child-care-management-software-for-2026-the-complete-buyers-guide/)).
- **Why now:** Admin automation as staffing relief (C).
- **30-day wedge:** Subsidy-attendance reconciliation and licensing-checklist assistant for 5 Oklahoma centers.
- **Path to $100M+:** Replace the center OS; hard against Procare.
- **Moat:** Weak; state-specific subsidy rules knowledge.
- **Founder-fit: 5/10.** Faith/community alignment is nice; Verdict: **SHELVE.**

### Candidate G. Big-home-purchase price truth (OTD pattern: roof, HVAC, solar quotes)
- **Problem (C):** Homeowners have no benchmark for contractor quotes; trades are fragmented. No source gathered on this beyond the OID/insurance context, so treat the market size as unverified.
- **Who pays:** Not consumers directly. Via contractor-side "verified fair quote" badges or lender/insurer referral fees (D).
- **Why now:** Quote parsing by multimodal AI; consumer distrust of storm chasers (B, from hail coverage above).
- **30-day wedge:** Free "quote checker" web/iOS tool for roof replacement, with a trust-forward brand; collect anonymized quotes to build a pricing index.
- **Path to $100M+ (D):** Pricing index plus lead marketplace; closer to Angi/Thumbtack dynamics, which are hard.
- **Moat:** Data network if you reach critical mass.
- **Founder-fit: 8/10 for skills, but monetisation is the question.** Verdict: **SHELVE as standalone; fold into Candidate A as a wedge acquisition channel** (homeowners arrive for the quote check, stay for the claim file).

---

## 4. Top 3 and strongest failure reasons

1. **Candidate A: Storm-claim evidence file (Oklahoma).** Fit 7. Best match of founder skills (iOS, LiDAR, trades exposure, Oklahoma geography) and an active, litigated, legislated problem. **Strongest failure reason:** it is seasonal and episodic, per-claim revenue is small, and Xactimate/ClaimNorth/ClaimCam could add a policyholder-facing evidence mode, leaving only trust and local distribution as defenses; the $1B ceiling is a stretch (D).
2. **Candidate B: Medicaid work-reporting companion.** Fit 6. Dated federal mandate, large affected population, strong mission fit. **Strongest failure reason:** the people with the pain cannot pay and the people who can pay (plans, hospitals, states) are slow, regulated buyers; states or their contractors may bundle a free tool and kill the market before a part-time student can sign a contract.
3. **Candidate C: Small-fleet detention and document recovery.** Fit 5. Phone-first users, measurable dollars, success-fee pricing de-risks the customer. **Strongest failure reason:** detention collection depends on shipper/broker leverage, not documentation quality alone, and the founder has no freight relationships or credibility in a market where Alvys-style TMS platforms are moving down-market.

Runner-up: Candidate G folded into A as the top-of-funnel.

## 5. Meta-observations (contrarian)
- The fashionable AI front-office categories (trades receptionists, RCM, gov bids, lien waivers) are already funded or crowded; I found none where a solo student has a structural edge (A for funding facts).
- The founder's real edge is **iOS craft plus trust-first branding plus local Oklahoma presence in a trades/storm environment**. Candidates that use the phone camera and sensors in the field (A, C) leverage this; back-office SaaS does not.
- No candidate here is a verified $1B company; the $100M+ paths are C/D inferences. The sober rating: A and B could reach tens of millions with execution; $1B would need category expansion not yet evidenced.
- Items I could not verify: Oklahoma public-adjuster licensing boundaries (needs OID or counsel), exact number of states under Medicaid work requirements for Oklahoma specifically, and all pricing assumptions (D).
