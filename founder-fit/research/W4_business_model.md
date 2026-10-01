# W4 Business Model: Redbud (Oklahoma-first homeowners + auto agency)

Agent G, 2026-10-01. Inputs: `_founder_profile.md`, `_final_thesis_brief.md`, plus web searches run today.

**Evidence labels:** A = regulator/audited/primary filing. B = reputable trade or industry study, or a company's own statement. C = vendor, blog or aggregator marketing, or a single secondary source. D = my assumption (no source found). "Brief" = taken from `_final_thesis_brief.md` and not re-verified here.

**Method:** every figure is either sourced (labelled A to C) or flagged `ASSUMPTION (D)`. The model script is reproducible from the tables below. Rounded results; no discounting.

## 0. Benchmarks gathered

| Input | Value | Label | Source |
|---|---|---|---|
| OK avg homeowners premium | $5,298 (LendingTree/Quadrant); $5,749 (Insure.com/Quadrant, $300k dwelling); $7,255 (Ramsey/Quadrant); $3.3k (StateCalc, BoringRate: different method) | B/C | https://www.insurance.com/home-and-renters-insurance/home-insurance-basics/average-homeowners-insurance-rates-by-state ; https://www.ramseysolutions.com/insurance/home-insurance-rates-by-state ; https://statecalc.com/homeowners-insurance/oklahoma-homeowners-insurance-calculator/ |
| OK avg auto premium (full coverage) | $1,599 to $2,796; mid-cluster about $1,860 | C | https://www.moneygeek.com/insurance/auto/average-cost-car-insurance-oklahoma/ ; https://www.experian.com/blogs/ask-experian/average-cost-car-insurance-oklahoma/ ; https://www.thezebra.com/auto-insurance/oklahoma-car-insurance/ok-average-cost-of-auto-insurance/ |
| Homeowners commission, independent | New 12 to 15% (range to 20%); renewal 8 to 10% (some sources 10 to 15%) | C | https://insifter.com/commission-benchmarks.html ; https://www.agentero.com/blog/insurance-agent-commission-structure-explained |
| Personal auto commission, independent | New 10 to 15% (agent-reported 10 to 13%); renewal 8 to 12% | C | https://www.cgaa.org/article/auto-insurance-agent-commission ; https://www.sonant.ai/blog/insurance-agent-commission-structure |
| Smart Choice split | 70/30 (agent keeps 70%), no fees; moves to 100% at a "Leadership Level"; split capped at $20,000; says agent owns 100% of book | C (vendor claim) | https://www.smartchoiceagents.com/agent-services/agents-program ; https://www.smartchoiceagents.com/agent-friendly-contract |
| SIAA / Renaissance splits | **Not obtained.** SIAA/Renaissance pages not fetched successfully (WebFetch returned empty). Brief says aggregator split 10 to 30%. | gap | https://agencyheight.com/siaa-vs-smart-choice/ (unread) |
| Agency retention: Goosehead | Client retention 86%; premium retention 88% (Q2 2026) | B (company statement) | https://ir.gooseheadinsurance.com/news-releases/news-release-details/goosehead-insurance-inc-announces-second-quarter-2026-results |
| Bundle effect on retention | Homeowners who bundle home+auto with the same carrier: 95% retention vs 85% non-bundlers (J.D. Power 2022); 2009 study: 95% bundled vs 83% mono-line auto | B | https://jdpower.com/business/press-releases/2022-us-home-insurance-study ; https://www.insurancejournal.com/news/national/2009/04/22/99851.htm |
| Reagan/Big "I" Best Practices agencies | Organic growth 6.2 to 10.2% (2026 update, down from 8.7 to 11.3% in 2025); pro forma EBITDA margin 23.2 to 30.7% | B | https://www.independentagent.com/news/big-i-and-reagan-consulting-release-2026-best-practices-study-update/ ; https://www.insurancejournal.com/magazines/mag-features/2026/05/18/869973.htm |
| Reagan agency-wide revenue-retention median | **Not found** in accessible snippets | gap | n/a |
| Insurance CSR salary, OKC | $38.5k (ZipRecruiter, 25th to 75th pct $31.8k to $43.8k); $38.55k (Salary.com); $32.2k (Monster); $46k median total pay (Glassdoor, range $38k to $56k); $49.1k (ReadySetHire) | C | https://www.ziprecruiter.com/Salaries/Insurance-Customer-Service-Representative-Salary-in-Oklahoma-City,OK ; https://www.glassdoor.com/Salaries/oklahoma-city-ok-insurance-customer-service-representative-salary-SRCH_IL.0,16_IM637_KO17,58.htm |
| E&O | New solo agency $1.2k to $3.5k/yr for $1M/$1M; multi-staff $3.5k to $8k; aggregators often offer group E&O | C | https://www.launchadvisor.co/guides/eo-insurance-new-agents-insurance-agency ; https://insuranceproagencies.com/start-independent-insurance-agency-guide |
| Shared-lead economics | CPL $5 to $35 (homeowners $15 to $35); bind rate 3 to 6%; cost per bind about $167 to $625 | C | https://quotelyleads.com/insurance-lead-cost-benchmarks/ ; https://insifter.com/guide-lead-costs.html ; https://www.getinsureleads.com/blog/how-much-do-home-insurance-leads-cost |
| Agency valuation | Small personal-lines agencies (<$1M revenue): 1.5 to 2.5x revenue, 4 to 5x EBITDA; $1M to $5M: 6 to 8x EBITDA; deals with >=$1M EBITDA averaged 11.8x (H1 2025) | C | https://renegadeinsurance.com/insurance-agency-valuation/ ; https://www.feinternational.com/blog/how-to-value-an-agency-business |
| Contingent commissions | Carriers pay profit-sharing on loss ratio, volume, growth or retention; usually need direct appointments | C | https://www.agentero.com/blog/insurance-agent-commission-structure-explained ; https://www.chubb.com/us-en/agents-brokers/producer-compensation.html |
| Quote-to-bind for homeowners (agency, not lead vendor) | **Not found.** Using 3 to 6% only for shared leads. Own-channel rates are untested. | gap | n/a |
| Policies per household | Not found as an agency benchmark; modelled as 1 (home only) and 2 (bundle) | gap | n/a |
| Servicing cost per policy | Not found; derived from CSR pay (see 2) | D | n/a |
| AMS / rater costs | Not found | D | n/a |

## 1. Monetisation alternatives

| Option | Revenue potential | Legality in OK (what I could verify) | Fit with brand ("trust over pressure", free to homeowner) | Verdict |
|---|---|---|---|---|
| **A. Pure commission** | $412 to $552/yr net per household renewal (see 2); carriers pay it, customer pays nothing extra | Standard licensed activity | Best fit; consumer sees "free" and no conflict beyond the usual commission one | **Core** |
| B. Commission + optional flat "advocacy" fee | Adds maybe $50 to $150 per paying household (assumption D); take rate unknown | **Unresolved.** 36 O.S. §3623.1 defines "fees" as flat amounts reflecting actual expense incurred by insurer, agency or producer, requires full disclosure, and bars duplicate fees (https://law.justia.com/codes/oklahoma/title-36/section-36-3623-1/, B/A text via secondary summary). That statute reads as a carrier/policy-fee regime. I found no explicit OK rule either allowing or banning an agency service fee for personal-lines P&C. Needs OID/counsel opinion. | Conflicts with "free" wedge; a fee on top of commission looks like double-dipping and clashes with "stay put is fine" honesty | Defer; test only as a paid "second opinion" for a non-bind outcome, after counsel signs off |
| C. Carrier contingent / profit-share bonuses | Unknown; requires volume and good loss ratio, usually direct appointments | Standard, disclosed in carrier contract | Aligned if loss ratio is real; mild conflict if it steers placement | **Upside, not plan** (zero in model) |
| D. Referral revenue from roofers/realtors | Would be a cost, not revenue, for Redbud | Brief: anti-rebating 36 O.S. §1204 and §1435.14 bar paying commissions to unlicensed persons (not re-verified here, D/Brief). Realtor side: OK licensees must disclose in writing any compensation for referring services (C, https://www.iiat.org/agency-operations/insurance-laws-regulations/insurance-laws-regulations-sales-marketing/rebating-and-referral-fees and OREC code excerpts). RESPA limits on lenders not researched here. | Pay-for-referral breaks "trust over pressure" | **Do not pay for referrals.** Treat as free-referral channel only |
| E. Data / licensing products | Placement intelligence sold to carriers or roofers. Not sized. | Privacy/consent issues (GLBA, state law) not researched | Plausible later; premature before volume | Defer to year 4+ |
| F. Later MGA fees (20 to 30% of premium, brief) | Largest upside per premium dollar; brief and my read: no hail-specific FORTIFIED loss evidence | Needs MGA licensing, capacity, reinsurance (not researched) | High risk; needs loss data | Option value only, not modelled |

**Recommendation: A, pure commission, free to homeowner**, with contingent bonuses as unmodelled upside. Revisit an advocacy fee only after an OID/counsel opinion and a willingness-to-pay test.

## 2. Unit economics per household

**Assumptions (all D unless noted):**

- Home premium $5,500 (B/C, brief range $5.4k to $5.9k); auto $1,860 (C).
- Commission: home 13% new / 10% renewal; auto 12% new / 10% renewal (C, mid-range of sources).
- Aggregator split: 25% of commission retained by aggregator (brief range 10 to 30%; Smart Choice 30% per C). Flat premium (0% drift) to be conservative in a softening market.
- Servicing: CSR loaded about $50k (C pay $38k to $49k plus about 10 to 30% load, D) at about 700 policies per CSR (D) gives about $70 to $75 per policy. Used $75 home-only; $120 bundle (1.6x, D). Year 1 adds $50 onboarding (D).
- Retention: home-only 85% (Goosehead 86%, B, haircut by 1 pt; J.D. Power non-bundler 85%, B). Bundle 90% (J.D. Power 95%, B, haircut 5 pts because the agent re-shops every year and may move households, D).
- CAC = channel cost + $90 agent time (2.5 h x $35 loaded, D). Channel costs (D): content/organic $150; realtor/lender referral $200 (no payment; events, collateral, time); roofer referral $250; paid leads $500 (C range $167 to $625; brief $600+ realistic).
- LTV = year-1 margin + renewal margins x retention^t, 7-year horizon, undiscounted.

| Metric | Home only | Home + auto bundle |
|---|---|---|
| Year-1 gross commission | $715 | $938 |
| Renewal gross commission | $550 | $736 |
| Aggregator split (25%) yr1 / renewal | -$179 / -$138 | -$235 / -$184 |
| Net commission yr1 / renewal | $536 / $412 | $704 / $552 |
| Servicing yr1 (incl. $50 onboarding) / renewal | $125 / $75 | $170 / $120 |
| **Gross margin yr1 / renewal** | **$411 / $338** (77% / 82% of net) | **$534 / $432** (76% / 78% of net) |
| Retention (D) | 85% | 90% |
| LTV, 5 / 7 / 10 yr | $1,325 / **$1,602** / $1,881 | $1,871 / **$2,355** / $2,915 |

| Channel | CAC incl. $90 labour | Home-only LTV:CAC (7 yr) | Bundle LTV:CAC (7 yr) | CAC payback, months (home / bundle, yr-1 margin / 12) |
|---|---|---|---|---|
| Content / organic | $240 | 6.7 | 9.8 | 7.0 / 5.4 |
| Realtor / lender referral | $290 | 5.5 | 8.1 | 8.5 / 6.5 |
| Roofer referral | $340 | 4.7 | 6.9 | 9.9 / 7.6 |
| Paid leads | $590 | 2.7 | 4.0 | 17.2 / 13.3 |

Reading: paid leads are marginal on home-only (2.7x, 17-month payback) and acceptable only on bundles. Because commissions pay at bind, payback is measured on year-1 margin, but the household stays only if it renews. The channel CACs are guesses, not measurements (see section 4).

## 3. Five-year projections (Oklahoma first; TX/KS from year 3)

**Scenario inputs (D):**

| | Conservative | Base | Aggressive |
|---|---|---|---|
| New households bound, Y1..Y5 | 60 / 150 / 250 / 350 / 450 | 120 / 350 / 650 / 950 / 1,300 | 200 / 600 / 1,200 / 1,900 / 2,700 |
| Bundle share | 30% | 40% | 50% |
| Retention home / bundle | 82% / 88% | 85% / 90% | 87% / 92% |
| Channel mix content / realtor-lender / roofer / paid | 15/15/5/65 (paid $600) | 30/25/10/35 (paid $500) | 40/30/10/20 (paid $500) |
| Blended CAC incl. labour | $545 | $385 | $335 |

Cost rules (D): 1 CSR per 700 policies in force at $50k loaded (min 1); two founders counted in headcount (one part-time student), with cash pay of $0 in Y1, $80k total in Y2 and $160k total from Y3 in base and aggressive, and $0 / $0 / $80k / $160k / $160k in conservative; extra licensed staff at $65k loaded (base: 0/0/1/2/3 from Y3 for TX/KS and marketing; cons: 0/0/0/1/2; aggr: 0/1/3/5/8); other opex $20k + $15k per year of age + $25k from Y3 (TX/KS licensing, E&O, AMS) + 3% of revenue; marketing = new households x blended CAC. Founder pay is an assumption and a large lever on EBITDA. Revenue = gross commission before aggregator split; gross margin = revenue minus aggregator split minus CSR cost.

**Base case**

| Year | New HH | HH in force | Revenue | Gross margin | GM % | Headcount | EBITDA | Cumulative |
|---|---|---|---|---|---|---|---|---|
| 1 | 120 | 120 | $97k | $22k | 23% | 3 | -$47k | -$47k |
| 2 | 350 | 454 | $347k | $210k | 61% | 3 | -$50k | -$97k |
| 3 | 650 | 1,045 | $771k | $428k | 56% | 6 | -$145k | -$242k |
| 4 | 950 | 1,860 | $1.34M | $802k | 60% | 8 | +$16k | -$226k |
| 5 | 1,300 | 2,919 | $2.06M | $1.25M | 60% | 11 | +$225k | -$1k |

Peak cash need: about $242k (cumulative EBITDA; ignores working capital and any founder-owned build costs). Add a 6-month buffer, so plan roughly $275k to $300k. Breakeven EBITDA in year 4, cumulative payback in year 5.

**Conservative**

| Year | New HH | HH in force | Revenue | Gross margin | Headcount | EBITDA | Cumulative |
|---|---|---|---|---|---|---|---|
| 1 | 60 | 60 | $47k | -$15k | 3 | -$69k | -$69k |
| 2 | 150 | 200 | $148k | $61k | 3 | -$60k | -$129k |
| 3 | 250 | 418 | $298k | $173k | 3 | -$127k | -$256k |
| 4 | 350 | 700 | $487k | $266k | 5 | -$255k | -$511k |
| 5 | 450 | 1,037 | $711k | $433k | 6 | -$229k | -$739k |

Never reaches break-even in 5 years; losses grow because paid-lead CAC and TX/KS overhead outrun the book. Verdict: if early CAC looks like this, do not expand to TX/KS; stay a part-time OK book.

**Aggressive**

| Year | New HH | HH in force | Revenue | Gross margin | Headcount | EBITDA | Cumulative |
|---|---|---|---|---|---|---|---|
| 1 | 200 | 200 | $165k | $74k | 3 | -$18k | -$18k |
| 2 | 600 | 779 | $612k | $359k | 5 | -$41k | -$59k |
| 3 | 1,200 | 1,897 | $1.44M | $832k | 10 | -$43k | -$102k |
| 4 | 1,900 | 3,599 | $2.67M | $1.60M | 15 | +$310k | +$208k |
| 5 | 2,700 | 5,923 | $4.32M | $2.59M | 23 | +$769k | +$978k |

Peak cash need about $102k. Year-5 EBITDA margin: 18% (base 11%, versus Best Practices agencies at 23 to 31%, B). For scale, base year-5 revenue $2.06M at 6 to 8x EBITDA is not meaningful (EBITDA $225k, so about $1.4M to $1.8M); at 1.5 to 2.5x revenue (small-agency range, C) it would be $3.1M to $5.2M. The two valuation methods disagree, which shows the sources are loose; use as a rough range only.

Caveat on cohort math: revenue treats full year-1 commission as earned in the year of bind, with no churn within the first year, no premium inflation, and no loss of households to Oklahoma post-claim switching limits (brief). Hail-driven non-renewals by carriers are not modelled and could cut retention below the conservative case.

## 4. The three assumptions that most move LTV:CAC, and the experiment for each

Sensitivity from the model: base bundle LTV is about $2.36k at 90% retention; at 85% it drops to about $2.0k and at 82% about $1.8k (7-year, same margins). Paid-lead CAC range of $333 to $625 (C) moves paid-channel LTV:CAC from about 5x to about 3x. A 10-point change in aggregator split moves net renewal by about $55 (home) or $74 (bundle).

| # | Assumption | Base value | Why it dominates | Experiment |
|---|---|---|---|---|
| 1 | Retention (esp. bundle at 90%, home at 85%) | 85% / 90% | LTV is a geometric sum; every point is worth about $25 to $40 per household | Cohort tracker from day 1: for the first 100 households, log renewal outcome and why (carrier non-renewal, price, switched by us, left). Need 12+ months; leading indicator is "second policy added within 90 days" |
| 2 | Own-channel cost per bind (realtor/lender, roofer, content) | $150 to $250 plus $90 labour | These channels carry 65% of base-mix spend and are untested; $90 labour also guessed | 8-week pilot: 10 realtor/loan officer meetings, 5 roofers, 12 posts with a free Renewal Check; track cost, hours, uploads, quotes, binds per channel. Target: 30+ binds to see rates |
| 3 | Net commission after aggregator split and carrier appetite (25% split; 13%/10% rates) | $412 / $552 net renewal | Appetite risk on older roofs may push to lower-commission or non-standard carriers; split terms for SIAA/Renaissance unseen | Get written commission schedules and split terms from Smart Choice, SIAA and Renaissance for OK homeowners, plus Openly direct; run 20 real roof-age-stratified quotes (0 to 5, 6 to 15, 16+ yrs) and record placement rate and commission |

## 5. Contract and structure notes

All of this is outside my verified research except where cited; get counsel before signing.

- **Licensing:** the brief says the founder is licensed and the co-founder is an experienced P&C agent. Agency (entity) licence and a designated responsible licensed producer are needed in OK; and each additional state (TX, KS) needs nonresident or entity licences (not researched here; NIPR state requirements: https://nipr.com/licensing-center/state-requirements/oklahoma-non-resident-licensing-individual). Budgeted at $25k from Y3 (D).
- **Aggregator vs book ownership:** Smart Choice advertises that agents own 100% of their book and clients (C, vendor claim): https://www.smartchoiceagents.com/agent-friendly-contract. Industry guidance warns that network contracts often hide gotchas (e.g. restrictions on moving business, sub-code appointments, chargebacks): https://www.iamagazine.com/2021/11/22/6-agency-network-contract-gotchas-you-should-know-before-they-get-you/ (C, not read in detail). Practical reality (assumption D): under sub-code appointments the carrier's agency of record is the aggregator's code, so on leaving, renewals are not automatically yours; you must obtain a carrier appointment and broker-of-record / agent-of-record change, and carriers may not honour it quickly. **Questions for each aggregator before signing:** Who is agent of record at the carrier? What happens to renewal commissions on exit (paid out, truncated, or kept)? Is there a non-solicit or tail period? Is the split ever contractually capped or reduced (Smart Choice cap $20k claim)? Who owns client data in the aggregator's AMS?
- **Own your data:** keep the client file, Renewal Check extractions and consent records in Redbud's own systems, not only the aggregator AMS, so the book (and any later valuation) is transferable.
- **Direct appointments:** carriers like Openly may require minimum premium production (examples seen: $250k to $500k, C: https://insuranceproagencies.com/best-insurance-companies-for-independent-agents); path is aggregator first, direct once volume exists, since direct codes lift commission and unlock contingents.
- **Producer agreements:** if staff or the co-founder are licensed producers, use written agreements covering compensation (commissions only to licensees; brief cites §1435.14), book ownership (company-owned), non-solicit, and E&O. Do not pay partners (realtors, roofers, lenders) per referral (section 1D).
- **E&O:** $1.2k to $3.5k solo, $3.5k to $8k multi-staff (C); aggregator group E&O may cover part. Budgeted within other opex (D).
- **Advocacy fee, if ever tested:** get OID or counsel opinion first; disclose in writing; apply 36 O.S. §3623.1 actual-expense and disclosure tests.

## 6. Gaps / what I could not verify

SIAA and Renaissance split terms; Reagan agency-wide revenue-retention median; agency quote-to-bind for homeowners; policies per household; servicing cost per policy; AMS/rater cost; direct OK statute text on agent service fees and on §1204/§1435.14 (taken from the brief); RESPA/lender referral rules. Every figure tagged D should be replaced by measurement before fundraising.
