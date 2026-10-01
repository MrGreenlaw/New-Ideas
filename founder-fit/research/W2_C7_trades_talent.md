# W2 C7 - Trades talent pipeline (Oklahoma first)
Analyst pass: Market + Customer + Strategic Killer. Date: 2026-10-01.
Evidence grades: A = primary/official source fetched or quoted by search; B = reputable secondary; C = vendor blog / estimate derived from sources; D = my assumption, unverified.
Honesty note: several Oklahoma-specific numbers (CareerTech completions by trade, OK trade employment, OK contractor counts) could NOT be retrieved in this pass; they are marked D and must be pulled from the OESC wage report and CareerTech annual report before any decision beyond "run the test".

## 1. Verdict
**SHELVE (do not build the app).** Run the cheap falsifying test below only as a 3-week side experiment (concierge, no code). Founder-fit 4/10. Contingent placement fee on entry-level trades hires is a real but small, low-margin, manual business; the "mobile app + verification" layer is not what employers pay for, and the $100M path requires a different product (apprenticeship admin / compliance software or a Pell-funded training operator) that is a separate company.

## 2. Market data
**Wages and openings (national, BLS OOH, 2024 base)**
- HVAC mechanics/installers: median $59,810 ($28.75/h); 425,200 jobs; +8% 2024-34; ~40,100 openings/yr. [A] https://www.bls.gov/ooh/installation-maintenance-and-repair/heating-air-conditioning-and-refrigeration-mechanics-and-installers.htm
- Electricians: median $62,350; +9%; ~81,000 openings/yr. [A/B] https://www.bls.gov/ooh/construction-and-extraction/electricians.htm
- Plumbers/pipefitters: median $62,970; +4%; ~44,000 openings/yr. [A/B] https://www.bls.gov/ooh/construction-and-extraction/plumbers-pipefitters-and-steamfitters.htm
- Three trades combined: ~165,000 openings/yr nationally (mostly replacement of people leaving the occupation, not new jobs). [A, arithmetic mine]
- Oklahoma: OKC-metro installation/maintenance/repair mean hourly $26.64 vs $29.63 US (about 10% below national). [A] https://www.bls.gov/regions/southwest/news-release/2025/occupationalemploymentandwages_oklahomacity_20250703.htm . Trade-level OK headcounts not retrieved; OESC wage report is the source to pull: https://oklahoma.gov/content/dam/ok/en/oesc/documents/labor-market/publications/occupation-and-wages/oklahoma-wage-report-2024.pdf . My working estimate: OK HVAC ~5k, electricians ~8-9k, plumbers ~4-5k, so ~3-4k openings/yr across the three [D].
- Entry-level wage (what a fee is based on): graduates start well below median; assume $36-42k in OK [D]. A 15% fee on $40k = $6,000 nominal.

**CareerTech supply**
- FY2025: 517,752 systemwide enrollments; technology centers 352,663 (includes single courses and business/industry training, so heavily overstates full-time trades students); 29 tech center districts, 63 campuses; 94% positive placement for completers. [A] https://oklahoma.gov/careertech/media-center/press-releases/2025/careertech-boasts-more-than-half-a-million-enrollments.html ; fast facts https://oklahoma.gov/careertech/about/reports/fast-facts.html
- Implication: 94% positive placement means the centres already place nearly everyone (incl. via their own placement staff, employer advisory committees, and apprenticeship programmes). The scarce side is graduates, not employers, and graduates are already spoken for. Full-time HVAC/electrical/plumbing completers per year in OK: not retrieved; my guess 1,000-2,000 [D]. Annual reports: https://oklahoma.gov/content/dam/ok/en/careertech/about/reports/annual-report/annual-report-fy24.pdf
- CareerTech also runs apprenticeship support (coordinator toolkit): https://www.oklahoma.gov/content/dam/ok/en/careertech/business-and-industry/apprenticeships/reports-and-forms/apprenticeship-toolkit.pdf [A]

**Workforce Pell**
- Effective July 1, 2026; final rule published in Federal Register May 19, 2026. Programs 150-599 clock hours, 8-15 weeks; governor approval after state workforce board consultation; outcomes test (tuition and fees may not exceed "value-added earnings" = adjusted median completer earnings minus 150% of poverty line); students must file FAFSA; bachelor's holders can qualify. [A/B] https://thecollegeinvestor.com/80871/workforce-pell-grant-final-rule-locks-in-july-2026-launch-for-short-term-training-aid/ ; https://fsapartners.ed.gov/knowledge-center/library/electronic-announcements/2026-07-01/eligible-workforce-programs-state-workforce-pell-certification-form-available ; https://opportunitydata.org/workforce-pell-readiness.html
- Who benefits: accredited institutions (tech centres, community colleges) and students. A placement startup is not an eligible institution; it could only be a partner supplying employer-demand evidence and placement data that the state/institution needs for approval. That is a small data/services niche, not a revenue stream of its own. Oklahoma's approved-program list: not found in this pass [D status]. Also, a 150-599 hr HVAC cert is shorter than typical 1-2 year tech-centre programmes, so it may produce lower-skill, shorter-tenure candidates.

## 3. How SMB trade employers hire now and what they pay
- Indeed Sponsored Jobs: pay-per-click/application; $5-$25+ per application; avg cost-per-hire $150-$400 claimed; small business $500-$2,000/mo for 1-3 jobs; $25/day floor per posting since July 2025. [C, vendor blogs] https://www.hiretruffle.com/blog/indeed-pricing ; https://www.pin.com/blog/indeed-pricing/
- Other channels (free): word of mouth/employee referral, tech-centre instructors who phone contractors, supplier-house counters, Facebook, Craigslist, Home Depot Path to Pro via ServiceTitan. [B/D]
- Staffing/recruiters: direct-hire fees 15-30% of first-year salary; temp markups 25-100% (higher for electricians/plumbers); temp-to-hire conversion 11-25%. [C] https://boostpoint.com/staffing-agency-markup/ ; https://www.instawork.com/blog/staffing-agencies-fees
- Contingency norm 15-25% of base, 90-day replacement guarantee modal (30-90 range). [C] https://www.paraform.com/blog/contingency-recruiting-guide
- Anchor problem: an SMB owner's reference price is $150-$400 (Indeed) or free (referral). A 15% fee ($6k) is 15-40x that. Small shops (3-15 techs) typically price an entry hire at "what it costs to run an ad". A realistic price an OK SMB accepts for an unproven brand: $1,500-$3,500 per apprentice/helper placement [D, to be tested]. Subscription: BlueRecruit's published comps are $0 / $200 / $300 per month. [A] https://bluerecruit.us/employers/

## 4. Competitors
| Player | What it is | Threat |
|---|---|---|
| Indeed / ZipRecruiter | Default for every SMB; cheap per application | Very high, 80% of the job |
| BlueRecruit (Raleigh; ~$750k total raised incl. $400k seed 2021) | Trades profile marketplace, employers pay $0-$300/mo | Proves the "app + profile" idea has existed since 2019 and stayed tiny; price signal is $300/mo, not $6k/hire [A] https://www.crunchbase.com/organization/bluerecruit |
| Skillwork, SkilledTrades.com | Travel/per-diem trades boards | Different segment (union/travel/industrial) [B] https://www.skilledtrades.com/ |
| Workrise, Instawork, Traba, Wonolo | Shift/project labour marketplaces | Mostly industrial/energy/event; not entry-level HVAC hire. Could expand. Not researched in depth [D] |
| ServiceTitan (Path to Pro with Home Depot Foundation), Housecall Pro | Own the SMB's software; Path to Pro feeds ServiceTitan customers with trainees free | High: distribution plus free price. [B] https://www.barchart.com/story/news/35280138/servicetitan-expands-workforce-development-opportunities-through-path-to-pro-program |
| Tech-centre placement offices; SkillsUSA; mikeroweWORKS | Free, trusted, relationship-based; Rowe foundation gives scholarships rather than placement | High for the OK supply side (the centres are the channel I'd need) [B] https://www.skillsusa.org/mike/ |
| Aerotek, TradeCorp, regional blue-collar recruiters | Direct-hire/temp for larger firms | Mid-market upward; they won't serve $40k helper hires profitably, which is both the gap and the warning |

## 5. Oklahoma regulation
- Oklahoma does NOT license private employment agencies: HB1233 (effective Nov 1, 2017) removed Dept. of Labor authority; earlier licence requirement (Title 40) repealed. [B/A] https://www.ok.gov/odol/Services/Private_Employment_Agency/ ; https://www.harborcompliance.com/oklahoma-employment-agency-peo-talent-license ; the founder should confirm current text of 40 O.S. against https://oksenate.gov/sites/default/files/2019-12/os40.pdf (the search snippet and the Dept. of Labor proposed-rules docs were not fully reconciled; a 2022 DoL rulemaking notice for "Personnel Employment Agencies" exists, so verify with an attorney) [C].
- Regulation is therefore not a barrier (and not a moat). Other law still applies: FCRA/background checks, minors on roofs (child labour hazard rules for under-18 CareerTech secondary students: 24,662 secondary enrollments), contractor-licence rules sit with the employer, not the placer, and fee-charged-to-candidate must be avoided (also brand-consistent).

## 6. Retention and unit economics
- HVAC technician turnover: 16% annual / 3.54 yr tenure (ServiceTitan data, A/B) up to 18-22% first-year and 20-40% by other estimates (C). Replacement cost $15-25k. DOL: 90% of apprentices stay with original employer [C]. https://www.servicetitan.com/toolbox/state-of-the-trades/trends/technician-tenure-turnover-by-trade
- Entry-level (helper/apprentice) hires churn more than the tenured average: assume 25-35% leave inside 90 days at small shops [D]. With a 90-day guarantee and replacement-or-refund, effective revenue per placement = fee x (1 - refund_rate x ...). Model (per placement, $3,000 fee):
  - Gross fee $3,000; 25% fail inside guarantee; half of those refunded, half replaced (replacement costs sourcing again) -> expected revenue ~ $2,625 and expected extra sourcing cost ~ 12.5% of a placement.
  - Cost to acquire employer (field sales in person, since SMB owners are on trucks): ~6-10 hours per closed account, plus 2-4 candidate sourcing/vetting hours per placement. At $30/h blended loaded: ~$300-500 CAC + $100-200 delivery per placement. Contribution ~ $2,000/placement; at 3 placements per employer per year repeat is plausible but each employer has only 1-3 openings a year.
  - Payment risk: SMBs net 30, 10-15% delay/dispute [D].
- Per-employer annual LTV ~ $3-8k; this is a services business with software veneer. 100 placements/yr = $300k revenue, ~$200k contribution: livelihood for one person, matching a part-time-student pace but not venture.

## 7. TAM / SAM / SOM, bottom-up
Oklahoma (D-heavy):
- Openings in HVAC+electrical+plumbing ~3-4k/yr; add roofing and landscaping, say ~7-9k/yr total of trade hires [D].
- Entry-level/apprentice share that a CareerTech pipeline could feed: ~30% -> ~2,500/yr. Reached through SMB employers (<50 staff): ~70% -> ~1,750.
- TAM (OK, fee-based): 2,500 x $3,000 = **~$7.5M/yr**. SAM (SMB, reachable via tech-centre graduates, ~1,750 x ~50% who would pay for any outside help) = 875 x $3,000 = **~$2.6M/yr**. SOM yr 3 at 10% of SAM = ~90 placements = **~$260k/yr**.
US:
- Three trades 165k openings/yr; plus roofing, landscaping, carpentry etc. say 400k trade-hire openings/yr. Entry-level share 30% = 120k; SMB share 70% = 84k; at $3,500 avg fee: **TAM ~ $420M/yr theoretical for entry hires; SAM (willing to pay a fee, reachable) ~ 20% = ~$85M.**
- Reaching $100M/yr revenue as a placement fee business = >100% of the SAM. Not credible.

## 8. Path to $100M, honest
Placement alone tops out at low single-digit $M in OK and perhaps $20-40M nationally with 300+ recruiters (it is a people business with ~$150-250k revenue per recruiter, so $100M = ~500 recruiters, which is a staffing firm like TradeCorp, not a software startup). Expansion paths:
1. Apprenticeship administration SaaS/services (RAPIDS paperwork, OJT hours, related instruction tracking): real pain for sponsors, but sold to JATCs, state agencies and larger employers with long sales cycles; incumbent workforce-management vendors and state systems. 
2. Skills verification: requires employers to value it; today they use a ride-along and a licence lookup. Verified certs (EPA 608 etc.) are already issued digitally by testing orgs.
3. Workforce Pell: the money flows to institutions; a startup would have to become (or white-label for) an eligible institution, a regulated, capital-heavy business needing accreditation. Not available to a student with no capital.
Honest answer: $100M requires pivoting to (1) or to a national staffing roll-up; neither follows from the Oklahoma placement wedge. Realistic outcome of the wedge: $0.3-1M/yr lifestyle business.

## 9. Attack
- Low fee per hire: entry hires are $36-42k; employers' reference price is an Indeed ad. Revenue per placement ~$2-3k realised, with long manual delivery.
- Guarantee refunds: 90-day guarantee against 25-35% early attrition is a direct margin hit; without it no SMB signs, with it contribution thins.
- Employer reluctance to pay: owners already get free graduates from instructors and referrals; paying 15% for the same person is a hard sell. 94% positive placement shows no "unplaced" pool.
- Indeed dominance: Indeed is the job seeker's habit and is cheap. A new app has a cold-start problem on both sides; BlueRecruit has fought this since 2019 on $750k.
- Disintermediation: once the employer meets the grad, there is no reason to pay a second time; graduate can be hired directly next time (classic marketplace leakage). The CareerTech instructor is the real gatekeeper and has no incentive to share the relationship.
- Founder network: Elliot has Greenturf landscaping exposure and Edmond/OC ties, but landscaping is the lowest-wage, least certified trade and has seasonal churn; he has no HVAC/electrical employer network and no CareerTech relationships yet (founder profile). Strength: iOS craft and a trust-first brand fit candidate-side UX; weakness: the thing he'd ship (app) is the least valuable piece. Faith-driven "dignity for all" fits candidate-first, no-fee-to-worker design, which is a good brand but doesn't change economics.

## 10. Scoring
- Founder-fit: **4/10** (app/design skills and Greenturf familiarity help; but the business is sales and relationship work, with no network, and student time-constrained).
- Market attractiveness: 4/10. Timing (Workforce Pell, skilled-trades narrative): 6/10 but benefits institutions.
- Verdict: **SHELVE**; revisit only if the test below passes AND a CareerTech centre agrees to a pilot.

## 11. Most dangerous assumption
"Independent small trade employers will pay a meaningful placement fee ($2,500+) for entry-level grads they can currently get free through instructors/referrals or cheaply through Indeed, and will pay again for repeat hires."

## 12. Cheap falsifying test (3 weeks, <$200, no code)
1. Visit/call 3 CareerTech centres (Francis Tuttle, Metro Tech, Moore Norman are near Edmond) and ask the HVAC/electrical instructors: how many completers go unplaced, and how they currently match them. If answer is "all placed, we phone contractors", the supply side is closed -> kill.
2. Cold call/visit 30 OK HVAC/electrical/plumbing shops with 3-20 techs. Offer: "I will deliver 3 vetted CareerTech apprentice candidates in 14 days; $2,500 only if you hire one and they stay 60 days." Record: meetings held, # who agree in writing, # who say "I already get those from the school".
3. Pass bar: >=5 of 30 sign (17%) AND at least 2 shops give a current open req, AND at least one instructor agrees to refer. Fail bar: <3 sign or most cite free referral -> kill the placement model; if instead employers say their real pain is paperwork/hours tracking, pivot the discovery towards apprenticeship admin (separate analysis).
4. Also record the fee they'd name unprompted; if median < $1,500, unit economics fail.

## Source gaps to close if the test passes
OK trade employment and wages (OESC wage report PDF above); OK CareerTech completers by program (FY24/FY25 annual report PDFs); Oklahoma's Workforce Pell approved-programs list and who the governor/Workforce Commission designated; Oklahoma Statutes Title 40 current text on employment agencies; Workrise/Instawork/Traba current trade offerings (not researched).
