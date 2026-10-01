# Agent D (Customer): Roof Record buyer simulation, OKC / hail belt
Date: 2026-10-01. Product under test: iPhone app roofers use at install/inspection to create a verified, time-stamped "roof passport" (materials, photos, measurements, permit, FORTIFIED cert, warranty) handed to the homeowner and updated after storms.

## 0. Evidence rules and honesty note

Evidence labels: **A** = primary/official source (regulator, statute, AG, IBHS, vendor price page). **B** = credible secondary (trade press, news, named reporting). **C** = vendor/SEO blog or aggregator, directionally useful, self-interested. **D** = my simulation or inference. **Everything in the "simulated voice" blocks is D** and is not a quote from a real person.

Limits of this research (read before trusting it):
- Reddit (old.reddit.com) was blocked to my fetch tool, and the `site:reddit.com` search returned nothing. **I have zero verified r/Roofing, r/HomeImprovement, r/Insurance or r/oklahoma threads.** I also could not read the ContractorTalk thread (redirect) or any G2/Capterra review text beyond aggregator summaries. No podcast/YouTube transcripts were reviewed; one podcast is referenced second-hand via a search snippet. Persona claims about "what roofers say" therefore lean on trade press and vendor/CPA blogs (B/C) plus simulation (D). The first thing the founder should do is replace D with 15-20 real conversations.
- No fabricated quotes appear below. Where I paraphrase, the source is linked.

---

## 1. Market facts that frame all four personas

| # | Fact | Label | Source |
|---|---|---|---|
| 1 | OID/legislators' 2026 package: insurers may not non-renew, refuse to issue, or reduce coverage **solely** because a roof is 15+ years old. Homeowners may get an independent inspection (own cost); if it confirms >=5 years of remaining life, insurers can't deny/non-renew on age alone. Mandatory FORTIFIED discounts. Aerial imagery can't be the sole reason to deny a claim. (This was a *proposed package*; I did not verify final enactment.) | A (proposal) | https://www.oid.ok.gov/release_121025/ |
| 2 | Strengthen Oklahoma Homes: grants up to $10,000 for FORTIFIED Roof; statewide opened Jan 12, 2026; first-quarter slots all filled; avg saving ~$749/yr; >$2M distributed in first year; needs homestead exemption. | A | https://www.oid.ok.gov/release_031226/ , https://www.oid.ok.gov/release_011226/ |
| 3 | Awareness of the grant is low (>85% of surveyed Oklahomans unaware); state law allows ~$10M/yr (~1,000 homes). | B | https://ktul.com/news/local/oklahoma-offers-storm-grants-for-fortified-roofs-but-awareness-remains-low |
| 4 | FORTIFIED itself already requires **date-stamped, geolocated photo documentation** per site address, collected via an independent third-party evaluator and submitted to IBHS. The contractor/evaluator split of photo responsibility is explicitly called "critical" to clarify. | A | https://fortifiedhome.org/wp-content/uploads/2025-Documentation-Checklist.pdf , https://fortifiedhome.org/wp-content/uploads/FORTIFIED_Roof_Contractor_Handbook.pdf |
| 5 | Oklahoma AG Drummond is suing State Farm over an alleged "Hail Focus Initiative" to underpay/deny roof claims; new suit filed June 2026. | A/B | https://oklahoma.gov/oag/news/newsroom/2026/june/drummond-files-new-lawsuit-against-state-farm.html , https://www.nbcnews.com/business/consumer/lawsuit-alleges-state-farm-cheats-homeowners-rcna262814 |
| 6 | In the Tulsa claim profiled by Oklahoma Watch, a **roofer's inspection, NWS/Hailtrace hail data and recordings** were the evidence that exposed the denial. Documentation by the contractor is the homeowner's leverage. | B | https://oklahomawatch.org/2026/02/18/tulsa-roof-claim-provides-insight-into-alleged-state-farm-scheme/ |
| 7 | Oklahoma average premium ~ $5,858/yr projected end-2026 (national ~ $3,057). | C | https://www.liveinsurancenews.com/oklahoma-tornadoes-hailstorms/8571928/ |
| 8 | Analysis claims ~85% of OK carriers use ACV for roof claims; roof payment schedule endorsements added at renewal; claims can face percentage deductible + ACV schedule + age trigger + cosmetic exclusion at once. | C (unclear methodology, treat as directional) | https://www.liveinsurancenews.com/why-oklahoma-roof-claim-checks/8574132/ |
| 9 | Agent-side guidance: carriers want permits, contractor invoices with scope, before/after photos, inspection reports; **only a full permitted replacement resets roof age**, claims don't. Inspections run $150-$400. | C | https://wpinsure.com/blog/roof-age-claims-non-renewals-explained/ , https://roofvista.com/resources/guides/roof-insurance-canceled-age-2026 |
| 10 | Carriers already buy roof age/condition from Verisk, ZestyAI, CAPE (permit data fused with aerial imagery); accuracy complaints are common (repaired roofs flagged as damaged). | B/C | https://www.propertyinsurancecoveragelaw.com/blog/ai-roof-insurance-inspections/ , https://www.verisk.com/products/roof-age/ |
| 11 | Oklahoma HB 1940 (2022) bars roofers from paying/waiving deductibles; HB 1628 (effective 2026-07-01 per a press-release source) tightens registration and removes first-offense warnings for unregistered roofers. | B / C (press release) | https://www.roofingcontractor.com/articles/97659-new-oklahoma-law-restricts-roofing-contractors-from-waiving-deductibles , https://natlawreview.com/press-releases/okc-roofers-issues-metro-alert-new-oklahoma-residential-roofing-law |
| 12 | CompanyCam: Pro $27 / Premium $43 / Elite $67 per user/mo annual ($33/$50/$83 monthly), 3-user minimum per one source; another review lists Core $63-79 (1-2 users), Crew $119-149 (3 users), Scale $199-249, extra seats $29-34. 10-person team ~ $322/mo. Reviewers call it "expensive relative to what a two-truck company needs." Already has homeowner-facing "Showcases." Pricing sources conflict (plan names changed), so verify on the live page. | A/C | https://www.capterra.com/p/171143/CompanyCam/pricing/ , https://roofingsoftwareguide.com/reviews/companycam-review/ |
| 13 | Roofing contractors' top 2026 threats: rising labor/overhead 39%, labor shortage 34%, recession 25%; 79% don't use AI at all; 1/3 have 6-15% EBITDA; tool buyers prioritize production management (47%) and ease of use (29%). | B | https://www.roofingcontractor.com/articles/101759-roofing-contractors-bet-on-tech-for-growth-in-2026 , https://www.roofingcontractor.com/articles/101796-roofing-leaders-size-up-2026-at-ire-keynote-panel |
| 14 | Insurance restoration cash cycle: initial payment, recoverable depreciation, supplements, deductible collection, mortgage endorsement; adjuster follow-up is "phone tag"; holdback not tracked as receivable often never collected. Podcast snippet: a coach cut a roofing company's cash cycle from 133 to 13 days. | C | https://useproline.com/how-to-handle-contractor-payments-roofing/ , https://www.alvisocpa.com/post/master-acv-rcv-without-ar-chaos , https://profitabilitypartners.io/roofing-company-bankruptcy-cash-flow/ |
| 15 | Storm-chaser warranty abandonment is a long-standing roofer-forum and consumer complaint: warranty is backed by a company that leaves town; manufacturer warranty can be voided by mixed components. | C | https://www.roofinginsights.com/news/seven-reasons-why-roofers-hate-storm-chasers , https://jrcousa.com/roof-repair/7-reasons-not-to-use-storm-chasing-roofers/ |
| 16 | Existing homeowner "digital home record" products exist (HomeBinder free to homeowners, often pre-loaded by agents; HomeZada, HomeKeep, AtYourPorch, Passport). None is hail-belt/roof-specific as far as I saw; none verified as having traction. | C | https://passport.homealliance.com/ , https://www.atyourporch.com/ |

Key inference (D): the single most important fact for this product is #1 combined with #4 and #9. If the OK age-based non-renewal rule really lets a homeowner overturn a decision with an **independent inspection showing >=5 years of life**, then what has value is a *credible inspection*, not a *record of install*. A record of install helps a roof that is <15 years old only if the carrier accepts it as proof of age/condition, which per #10 the carrier is increasingly getting from imagery and permit data anyway.

---

## 2. Persona 1: Owner of a 6-25 person residential roofing company, OKC metro (retail + insurance)

Simulated profile (D): "Dale," 41, 14 trucks' worth of crews, ~$4-7M revenue, 60% retail replacement/40% insurance, uses a CRM (AccuLynx/JobNimbus/ProLine class) plus CompanyCam, sales reps on commission, an office manager who does supplements and collections.

**Problem (ranked by how loud he'd complain, D informed by #13, #14):**
1. Lead cost and sales efficiency, then labor/crew availability (B: #13).
2. Cash flow stuck in insurance paperwork: depreciation holdbacks, supplements, mortgage endorsements (C: #14).
3. Storm-chaser competition and "the other guy" discounting (C: #15, A/B: #11).
4. Callbacks/warranty disputes where no one can prove what was installed.
5. Roof Record's pain, "my customer can't prove what I put on," ranks maybe 6th-8th. (D)

**Frequency:** Warranty/callback proof disputes: a few per month at most for a 15-job-per-month shop (D). Customers asking for "paperwork for my insurance": seasonal, spikes at renewal and after non-renewal notices (D, plausible given #1, #7).

**Cost of the problem (D, rough):** A single disputed warranty/leak callback costs $300-$3,000 in labor plus reputation. If Roof Record eliminated 1 in 4 of those, value is maybe $2k-$8k/yr. Marketing value is the bigger lever: if the passport lifts close rate by 1 point or yields 3 referrals/yr at $15k job size and 30% margin, that's ~$13k gross profit. These are my assumptions, unverified.

**Current workaround:** CompanyCam photos (GPS/time-stamped; B: #12 review), emailed PDF warranty from the shingle manufacturer, a "completion packet" the office assembles, FORTIFIED evaluator package for the few FORTIFIED jobs, the permit pulled by the city.

**Why unsolved:** Because he doesn't feel it as a loss. Customers don't ask for it until years later; the person suffering (homeowner) isn't the person paying (roofer). Also his CRM and CompanyCam already produce "good enough" photo reports (#12 Showcases).

**Budget owner:** Owner personally for anything under ~$300/mo; office manager gets veto because she runs the stack. Marketing budget (typically % of revenue) is the more natural line item than "software."

**What would make him pay (D):**
- It plugs into his CRM/CompanyCam with zero double entry (47% of buyers prioritize production management; 29% ease of use: #13).
- It demonstrably generates leads/referrals or wins bids ("every customer gets a branded passport; after a storm the app texts them and we get the re-inspection").
- It reduces his time on FORTIFIED paperwork, or makes him a FORTIFIED-grant contractor (see Section 7).
- Price near the cost of one more CompanyCam tier; i.e., the "$99-199/mo flat" zone.

**What prevents it:** Crews already resist new apps; adoption friction (CompanyCam wins because "crews open it like a camera app" per #12 review). Tech spend is tight with 6-15% EBITDA margins. Brand-new unproven app with a student founder and no references. Data-sharing worry: does a record that proves materials/workmanship expose him to liability later? (D: real objection, see below.)

**Realistic willingness to pay (D, reasoning):**
- Standalone "documentation add-on": $0-$49/mo flat. Anchor: CompanyCam already includes homeowner Showcases, so a roofer sees the passport as a *feature* of the thing he owns. A 10-person team spends ~$322/mo on CompanyCam (#12); he won't add 30-50% on top without a revenue story.
- Per-job pricing: $15-$40 per completed job passport is plausible if it is framed as part of the closeout (cost of a tank of gas vs a $12k-$18k job). 15 jobs/month gives $225-$600/mo, which is actually *more* than a SaaS seat model, but only if he believes homeowners value it.
- Marketing-lens: $150-$300/mo if it reliably brings post-storm re-inspection leads. That would be the first true "pays for itself" case, and it needs proof.
Everything above is D; the CompanyCam anchors are A/C.

**Trigger events:** (a) A homeowner calls in October after a non-renewal letter asking for "something proving my roof is good"; (b) a warranty fight he can't document; (c) a hail event creating a re-inspection surge (his past customers are the cheapest leads); (d) a competitor markets "digital roof passport"; (e) HB 1628-style licensing pressure pushes "legit" contractors to differentiate from chasers (C/B: #11).

**Objections (simulated voice, D):** "My guys already take 40 photos in CompanyCam, what's different?" "Who owns this data, me or the homeowner?" "If it says 'workmanship verified' and the roof leaks in year 8, am I on the hook?" "Is the insurance company going to even look at it?" "Another login for my crews? No."

---

## 3. Persona 2: Storm-restoration roofer

Simulated profile (D): two types. (a) Local storm-heavy shop (e.g., 70-90% insurance work) with strong adjuster relationships; (b) travel crew/"storm chaser" that follows hail. Type (b) is not a buyer: he has no incentive to leave a durable record and the whole value proposition (accountability) works against him (C: #15). Focus on (a).

**Problem:** After a hail event, volume is the constraint: inspect 30-60 roofs/week, win the claim, get approved scope, supplement, build, collect. Pain: adjuster lowballs/denials (A/B: #5, #6), supplement grind, holdback collection (C: #14), homeowners ghosting after the adjuster call, plus the 2022 deductible-waiver ban removing a closing tool (B: #11).

**Frequency:** Every storm season, multiple times per week during surges (D).

**Cost:** A denied/under-scoped $14k-$22k roof claim (examples: #6; the Moneywise Tulsa example of $22k referenced in https://moneywise.com/insurance/home/oklahoma-attorney-general-launches-investigation-into-state-farm-after-more-than-100-complaints-of-denied-delayed-claims-is-this-a-larger-problem , C) is the real dollar event. Supplement staff or outsourced supplementers run per-claim fees; I'm not citing a verified number.

**Current workaround:** CompanyCam or CRM photo reports, chalk marks and test squares, weather verification (Hailtrace/NWS used in #6), Xactimate, supplement specialists/virtual assistants (C: https://virtualnexgen.com/blog/roofing-va-hacks-maximize-claims-2026), roof-inspection drones/measurement reports.

**Why unsolved:** Because the problem is carrier behavior and process labor, and a "roof passport at install" is the wrong moment. The documentation that wins claims is the **pre-loss condition baseline plus post-storm damage record**. That is a different artifact from an install record. Roof Record's "later updated after storms" is the relevant half; but it's only valuable if a roof was recorded before the storm, which means the storm roofer needs historic records of roofs he didn't install. (D, important.)

**Budget owner:** Owner, or an ops/claims manager. Storm shops pay readily for anything that visibly wins claims (supplement software, Hailtrace-style data) because ROI is per-claim.

**What would make him pay (D):**
- Pre-loss baseline proof: "this roof was 11 years old, no prior damage, here's the dated record" to defeat "pre-existing/age/cosmetic" denials. Only works if carrier/adjuster/appraiser accepts it. Would need evidence (a real claim where it flipped an outcome).
- Fast: <10 min per roof, offline-capable, drops into Xactimate/estimate/supplement packet.
- Pricing per claim won or per-seat during season.

**What prevents it:** Time-per-roof pressure at surge; he doesn't control whether adjusters credit the record; supplement workflow is already in a toolchain; seasonal revenue makes annual subscriptions painful (he wants month-to-month or per-event). Offline reliability (a CompanyCam complaint: poor performance in low-signal areas, #12).

**Realistic willingness to pay (D):** $30-$60/seat/mo during active season (CompanyCam Pro-Premium comparables: $27-$50/user/mo, A) *if* it demonstrably wins or speeds claims. Per-claim: $25-$75 per inspected roof is a fair psychological anchor versus a $14k-$22k outcome, but he'd need proof of effect. Without proof: ~$0.

**Trigger events:** Major hail event; an AG/lawsuit news cycle (State Farm; #5) making "documentation wars" salient; a carrier crackdown on supplements; a customer explicitly telling him "my carrier says roof age."

**Objections (simulated, D):** "Adjusters don't read your PDF." "I need this to take 8 minutes, not 30." "I don't inspect roofs before the storm." "Carriers can say the passport is contractor-generated and self-serving."

---

## 4. Persona 3: Oklahoma homeowner, 14-year-old roof, premium spike or non-renewal

Simulated profile (D): "Karen and Mike," Edmond, 2,400 sq ft, roof installed 2012, premium jumped from ~$3.4k to ~$5.9k with a roof-surfacing/ACV endorsement added at renewal, or got a 60-day non-renewal notice citing roof age or aerial-imagery condition.

**Problem:** Real, large, recurring, emotional. Premium ~ $5.9k/yr avg (C: #7); ACV schedules at renewal can convert coverage without warning (C: #8, treat as directional); non-renewal risk at ~15 years for asphalt (C: #9). Legislative package gives a legal path via an independent inspection showing >=5 years remaining life (A: #1).

**Frequency:** Annually at renewal; acute when a notice arrives (D).

**Cost:** $750-$2,400/yr potential premium difference (C: #9, #2), a $20k+ roof replacement if forced, or a $17k out-of-pocket gap on an ACV claim in the example from #8 (C).

**Current workaround:** Call agent; shop 3-5 carriers; pay $150-$400 for an inspection letter (C: #9); get roof quotes; Google/Facebook groups; ask neighbors; complain to OID.

**Why unsolved:** The decision-maker (carrier underwriting model) doesn't consult the homeowner's records first; imagery-based decisions precede human review (C: #10, A: #1 restricts sole reliance). The homeowner learns about documentation only *after* the letter arrives, when the install paperwork from 2012 is lost, and the roofer may be gone.

**Budget owner:** Homeowner, one-time, cash.

**What would make her pay (D):** Something that arrives *during* a crisis and solves it: "Get a verified roof condition/remaining-life report accepted by your carrier, in 48 hours, $149-$299, with an agent-ready PDF." That is a *service* (inspection), not a record app. A free passport she receives at install is nice, but she is not paying for the *app*.

**What prevents it:** She isn't searching for a "roof passport"; she's searching "roof insurance non-renewal Oklahoma what do I do" (C: SEO landscape in the search results). She doesn't trust unknown software with her address; she'd pay a licensed inspector with a name. Also the homeowner can't create the record herself years after installation.

**Realistic willingness to pay (D):**
- Passport app subscription: ~$0. (HomeBinder is free to homeowners; C: #16.) Maybe $0-$30 one-time as a bundled line item in the roof contract that the roofer pays.
- Crisis-triggered inspection + report: $150-$400 is the revealed market price (C: #9). A $199-$299 "carrier-ready roof condition report" is within her range, because the premium difference is $800-$2,400/yr.
- FORTIFIED roof: she'd pay *for the roof*, and the grant (A: #2, #3) covers up to $10k with ~$749/yr savings, so the surrounding paperwork support is a real, unmet-awareness need (85% unaware: B).

**Trigger events:** Renewal notice; non-renewal letter; neighbor's claim denied; hail storm; selling the house (buyer's inspector asks about roof age); the State Farm news cycle (A/B: #5).

**Objections (simulated, D):** "Will my insurance even accept this?" "I just want my premium to go down." "Who's got my data?" "My roofer has been gone since 2013."

---

## 5. Persona 4: Independent insurance agent / regional carrier underwriter, hail belt

Two sub-personas, very different.

**4a. Independent agent (D profile):** 400-1,200 policies, mostly homeowners/auto, markets 6-12 carriers, income from commissions; hates non-renewal calls because it's relationship damage and re-marketing labor.

- **Problem:** Clients get non-renewed or hit with roof endorsements; agent must re-market, collect roof photos/age proof, and explain the rules. Agent guidance already tells clients to compile permits, invoices, before/after photos and inspection reports (C: #9). Agent time spent chasing that paperwork is a real cost.
- **Frequency:** Heavy in renewal season and after hail; several clients per month for a mid-size agency (D).
- **Cost:** Hours of staff time per case; risk of losing the client; E&O exposure if carrier terms are misexplained (D).
- **Workaround:** Ask client for photos, call roofer, request carrier inspection, re-market; use "roof age" fields in quote engines.
- **Why unsolved:** Carriers' quote systems take roof age (year) and material fields; a verified, structured record would help, but no standard intake exists, and each carrier's underwriting rules differ.
- **Budget owner:** Agency principal. Typical agency software spend is small and sticky (AMS). They'd rather accept *free* tools. I have no verified agency tool-spend data.
- **WTP (D):** $0 direct. Perhaps referral-based: an agency would *recommend* a passport/inspection partner if it reduced their workload; maybe $25-$50 referral fee per completed report, subject to Oklahoma rules on insurance-agent compensation which I did not research (flag: legal check needed, and founder has no license).
- **Prevents:** Agent can't force carrier acceptance; compliance caution about endorsing unlicensed "verification"; liability.
- **Switch trigger:** Carrier-approved acceptance of the format, or a case where a record saved a renewal.

**4b. Carrier underwriter / product manager (D profile):**
- **Problem:** Roof age and condition are the top loss drivers (C: Verisk says roof claims cost >$30B in 2024: https://www.verisk.com/company/newsroom/u.s.-roof-claims-costs-reached-over-$30-billion-in-2024-underscoring-evolving-risks/ , B). Needs accurate roof age, material, installation quality (FORTIFIED or not) at low cost per policy. Already buys aerial analytics, roof age from permit data (B/C: #10). Facing political heat: AG lawsuit against State Farm (A: #5), mandatory FORTIFIED discounts and limits on age-only/imagery-only decisions proposed (A: #1).
- **Why unsolved by Roof Record:** Carriers buy data at scale (millions of properties) from vendors with API coverage (CAPE: 120M properties, C). A roofer-generated record covers a tiny fraction of OKC roofs, with no coverage guarantee and self-reported trust issues.
- **Budget owner:** Underwriting/data-vendor procurement; multi-month enterprise cycle, security review, regulatory/filing considerations. A student founder can't sell to this in 30 days.
- **WTP (D):** Zero until coverage is meaningful (tens of thousands of verified roofs). If it ever reaches that, value per verified record could be $1-$10 (risk-data pricing comparables are not verified; D). Plausible exit/channel path, not a launch customer.
- **Prevents:** Trust (contractor-generated), data standards, scale, integration, regulatory scrutiny.
- **Trigger:** The FORTIFIED discount mandate creates demand for verified FORTIFIED status; IBHS already issues designation; so carriers may only need a lookup, not Roof Record.

---

## 6. Synthesis

### Who is the real paying customer?
**Honest answer: no persona currently feels the pain Roof Record describes strongly enough to pay a standalone subscription.** Ranking by credible near-term payment:

1. **Roofing company owner (Persona 1), paying a modest flat fee or per-job fee, ONLY if the product is framed as a customer-retention / post-storm lead-generation / closeout tool, not "documentation."** Best-fit buyer because they have the budget authority, ~$12-20k jobs, and a marketing budget. Likelihood to pay: moderate-low ($29-$99/mo or $15-$40/job, D) and conditional on proof it produces leads or avoids callbacks. Competes with the CompanyCam stack they already own (A/C: #12).
2. **Homeowner in crisis (Persona 3), paying for a *service* (inspection plus carrier-ready report) at $150-$400** (C: #9). This is the strongest, most acute willingness-to-pay in the research, but it's a service business requiring inspectors/licensing-adjacent credibility; it's not the app as described, and the founder lacks professional licences (see founder profile). Could be delivered *through* roofers who are the licensed inspectors, with Roof Record as the software layer and a revenue split. (D)
3. **Storm roofer (Persona 2)** pays if (and only if) the product wins claims. Strong ROI per claim, but the product as described (install record) doesn't address the core claim-winning documentation (pre-loss baseline and damage evidence).
4. **Agent (4a)** is a distribution channel, not a payer. **Carrier (4b)** is a long-run data buyer only at scale.

### Strongest pain (evidence-weighted)
Ranked: (1) homeowners facing roof-age non-renewal/ACV endorsements with premiums averaging ~$5.9k (C/A: #1, #7, #8) and legal appeal requiring an inspection (A: #1); (2) roofers' cash flow and insurance-claim friction: supplements, holdbacks, adjuster follow-up (C: #14) and carrier underpayment allegations (A/B: #5, #6); (3) labor and cost pressure (B: #13); far below those, (4) "no verified install record."

### Pain MORE acute than the product as described
1. **Proving remaining useful life for non-renewal appeals.** The OID package explicitly turns an independent inspection with >=5 years of life into a legal shield (A: #1). Homeowners pay $150-$400 for these (C: #9). This is a *recurring, dated, money-attached event*, and mobile-app-friendly (photos, measurements, shingle granule/brittleness tests, standardized report). The product is almost already this, but flipped from "install record" to "inspection/condition certificate."
2. **Cash conversion in insurance jobs** (recoverable depreciation, supplement, mortgage endorsement; C: #14). Roofers who run insurance work feel this weekly. Roof Record's "completion packet" could be repositioned as the *proof package that releases the recoverable depreciation* (carriers require a completion letter and photos to release holdback; C: search result on holdback). That's a real, narrow, immediate-ROI wedge: "get the holdback check faster." Not verified how many days it saves; test it.
3. **Pre-loss baseline for claim disputes.** AG case shows contractor documentation is the pivotal evidence (B: #6). Homeowner/roofer who held dated pre-storm records would have a stronger position (D).
4. **FORTIFIED grant paperwork friction and awareness.** Grant demand exceeded slots (A: #2), 85% unaware (B: #3), and FORTIFIED needs a contractor/evaluator photo split that IBHS itself flags as critical to get right (A: #4). A tool that makes FORTIFIED contractors' evidence capture painless and lets them market grant eligibility could be a niche with real urgency. Counterpoint: evaluators, not contractors, own the IBHS submission; the app must serve evaluators too; grant slots are capped (~1,000 homes/yr, B: #3), so the market is small (D).
5. **Roofer pain I could not verify but suspect (D):** lead cost and sales-process pain (labor 39%/34%: #13) dwarfs documentation pain. A roofer who has to choose between the passport and a lead-gen tool will choose lead-gen. Also unverified: wasted time on supplement back-and-forth.

### Risks and counter-evidence to flag
- CompanyCam incumbency and "Showcases" feature overlap (A/C: #12).
- Carriers already source roof age/condition from imagery+permits, so a passport might be redundant or ignored (B/C: #10).
- Whether the 2026 package became law as proposed is unverified (A is a *proposal* press release).
- Liability: a "verified" record that overstates condition invites lawsuits (D). Founder has no contractor/adjuster/inspector licence (founder profile). Avoid language that sounds like an insurance adjusting or inspection opinion without licensed partners.
- Trust brand fit: founder's values (honest, no manipulative urgency) fit a record-first, anti-chaser positioning (D), which is consistent with local roofers' anti-chaser sentiment (C: #15).

---

## 7. Recommended 30-day test (measure demand before building more)

Goal: find out whether any buyer will pay, and which wedge (marketing, holdback/closeout, non-renewal inspection, FORTIFIED, claim baseline) has pull. Founder constraints: part-time, no capital, no licence. So: sell and interview, concierge-deliver, don't build.

**Weeks 1-2: 25 structured interviews (not pitches)**
- 12 OKC-metro roofing owners (mix: 4 retail-heavy, 4 insurance/storm-heavy, 4 FORTIFIED-certified contractors), 5 homeowners who got a non-renewal/ACV endorsement in the last 12 months (recruit from r/oklahoma, Nextdoor, Facebook neighborhood groups, and agent referrals), 4 independent agents, 2-4 carrier/MGA/claims people if reachable.
- Ask about last 3 incidents (past behavior, not hypotheticals): last time a customer asked for roof paperwork; last holdback delay (days, dollars); last warranty dispute; last non-renewal.

**Weeks 2-4: Concierge/pilot with 3-5 roofers**
- Manually produce the passport (even in a template PDF/web page) for every completed job for free for 3-5 shops; one cohort gets holdback-framed packet, another gets marketing-framed passport with post-storm re-inspection outreach.
- Offer pricing after 2 weeks: $29/mo flat, $19/job, or "$99/mo includes passport + storm re-inspection texts"; ask for a card or signed LOI.

**Metrics and kill/continue thresholds (D, my proposals)**
| Metric | Continue signal | Kill/pivot signal |
|---|---|---|
| Roofer interviews describing a paperwork-proof incident in last 90 days | >=5 of 12 | <=2 of 12 |
| Roofers who agree to pilot | >=4 | <=1 |
| Pilot shops that use it on >=70% of completed jobs after 2 weeks | >=2 | 0 |
| Willingness to pay: signed LOI/card at >=$29/mo or $15/job | >=2 of 5 | 0 |
| Homeowners who open/share the passport (open rate, shares to agent/spouse) | >=50% open, >=10% share | <20% open |
| Holdback/closeout: days from completion to recoverable-depreciation check (with vs without packet) | >=5 days faster in a sample of >=5 jobs | no difference |
| Agents/carrier reps who say they would *accept* the packet for renewal/underwriting, unprompted | >=2 of 4 agents; >=1 carrier contact | none |
| Non-renewal homeowners who say they'd pay $149-$299 for a carrier-ready report | >=3 of 5 | <=1 |
| Inbound re-inspection leads generated via passport texts after a hail event (if one occurs) | >=1 booked job per shop | 0 |

Secondary: time-per-roof to capture a record (target <10 min), crew adoption, offline failures, number of times the roofer asks "can it integrate with [CRM/CompanyCam]" (integration as a gating factor).

**Decision rule (D):** if no roofer pays and no homeowner pays for the crisis report in 30 days, shelve the passport as described. If the homeowner crisis report or holdback-packet wedge shows pull, rebuild the product around that single wedge.

---

## 8. Source list (all fetched or surfaced in searches this session)
- OID legislative package: https://www.oid.ok.gov/release_121025/
- OID Strengthen Oklahoma Homes: https://www.oid.ok.gov/release_031226/ , https://www.oid.ok.gov/release_011226/
- Insurance Journal: https://www.insurancejournal.com/news/southcentral/2026/01/13/854151.htm
- KTUL awareness: https://ktul.com/news/local/oklahoma-offers-storm-grants-for-fortified-roofs-but-awareness-remains-low
- IBHS documentation: https://fortifiedhome.org/wp-content/uploads/2025-Documentation-Checklist.pdf , https://fortifiedhome.org/wp-content/uploads/FORTIFIED_Roof_Contractor_Handbook.pdf
- OK AG / State Farm: https://oklahoma.gov/oag/news/newsroom/2026/june/drummond-files-new-lawsuit-against-state-farm.html , https://www.nbcnews.com/business/consumer/lawsuit-alleges-state-farm-cheats-homeowners-rcna262814 , https://oklahomawatch.org/2026/02/18/tulsa-roof-claim-provides-insight-into-alleged-state-farm-scheme/
- Premiums/claims analysis: https://www.liveinsurancenews.com/oklahoma-tornadoes-hailstorms/8571928/ , https://www.liveinsurancenews.com/why-oklahoma-roof-claim-checks/8574132/
- Agent/consumer guidance: https://wpinsure.com/blog/roof-age-claims-non-renewals-explained/ , https://roofvista.com/resources/guides/roof-insurance-canceled-age-2026
- Carrier data vendors: https://www.propertyinsurancecoveragelaw.com/blog/ai-roof-insurance-inspections/ , https://www.verisk.com/products/roof-age/
- Oklahoma roofer laws: https://www.roofingcontractor.com/articles/97659-new-oklahoma-law-restricts-roofing-contractors-from-waiving-deductibles , https://natlawreview.com/press-releases/okc-roofers-issues-metro-alert-new-oklahoma-residential-roofing-law
- CompanyCam pricing/reviews: https://www.capterra.com/p/171143/CompanyCam/pricing/ , https://roofingsoftwareguide.com/reviews/companycam-review/
- Contractor surveys: https://www.roofingcontractor.com/articles/101759-roofing-contractors-bet-on-tech-for-growth-in-2026 , https://www.roofingcontractor.com/articles/101796-roofing-leaders-size-up-2026-at-ire-keynote-panel
- Cash flow/holdback: https://useproline.com/how-to-handle-contractor-payments-roofing/ , https://www.alvisocpa.com/post/master-acv-rcv-without-ar-chaos , https://profitabilitypartners.io/roofing-company-bankruptcy-cash-flow/
- Storm chaser/warranty: https://www.roofinginsights.com/news/seven-reasons-why-roofers-hate-storm-chasers , https://jrcousa.com/roof-repair/7-reasons-not-to-use-storm-chasing-roofers/
- Home record apps: https://passport.homealliance.com/ , https://www.atyourporch.com/
- Not reached (blocked/unavailable): Reddit threads, ContractorTalk thread body (https://www.contractortalk.com/threads/im-sick-of-roofers-amp-storm-chasers.105719/ redirect not followed), G2/Capterra review text.
