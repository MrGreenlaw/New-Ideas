# C3 "School-choice money rails": market and competition (Agents A+B)

Date: 2026-10-01. Founder context: `_founder_profile.md`.

**Evidence labels.** A = primary or official source (government, regulator, SEC filing). B = reputable secondary source (news, think tank, trade press). C = advocacy site, vendor marketing, SEO or blog content, or an aggregator whose provenance is weak. D = my own estimate or assumption. Every D input is labelled so you can change it. Anything I could not find is marked NOT FOUND, and I did not fill the gap.

---

## 0. Bottom line

1. The public money is large (about $10.6B a year) and growing fast. It does not flow through private schools' billing tools. It flows through state-mandated platforms or SGOs: Odyssey, ClassWallet, Student First Technologies and Step Up For Students. A startup cannot intercept those rails.
2. The pain that is documented is **schools waiting to be paid by the rails** (the Florida lawsuit, ClassWallet vendor complaints, the West Virginia backlog). That pain is real. The product that fits it is a **receivables and reconciliation layer**, not a payment rail. Building a reconciliation layer avoids money-transmission licensing.
3. The tuition billing and payment-plan market is dominated by FACTS (about 12,000 schools, $312M revenue) and Blackbaud. There is clear price-and-UX attack surface for small schools (Section 4).
4. The ECCA/SGO product has a structural problem: the 10% administrative cap squeezes what any SGO can pay for software, and Odyssey is already positioning as the platform vendor (Section 6).
5. Oklahoma, the founder's home state, is the weakest wedge for the reconciliation story. The Parental Choice Tax Credit goes to parents at tax time, so there is no ESA-style remittance to reconcile. Oklahoma still gives a small, reachable launch market (Section 1).

---

## 1. Counts

| Item | Figure | Label | Source |
|---|---|---|---|
| US K-12 private schools, 2021-22 | about 29,730 (down 3% from about 30,490 in 2019-20) | A | https://ies.ed.gov/learn/press-release/new-data-indicate-nations-private-school-enrollment-held-steady-overall-2019-20-2021-22 ; https://nces.ed.gov/fastfacts/display.asp?id=1225 |
| Private school enrollment, 2021-22 | about 4.7M (4,731,303 per Digest dashboard, 8.7% of national enrollment) | A | same NCES pages; https://nces.ed.gov/programs/digest-dashboard/state/oklahoma |
| Share with religious orientation | 66% of schools | A | NCES search summary on the Fast Facts pages above |
| Enrollment by affiliation, fall 2021 | Catholic 1.7M, other religious 2.0M, nonsectarian 1.1M | A | https://nces.ed.gov/FastFacts/display.asp?id=1215 |
| Oklahoma private schools, 2021-22 | 190 (another source says 189), 34,496 students, 4.7% of state enrollment | A | https://nces.ed.gov/programs/digest-dashboard/state/oklahoma |
| Oklahoma private schools accredited by OPSAC, 2025-26 | 192 schools, 47,599 students. This is the accrediting commission's count, not NCES. Other accreditors also exist and their data is not readily available. | B | https://ocpathink.org/post/independent-journalism/state-data-show-rising-demand-for-oklahoma-school-choice-tax-credits (as summarized in search results) |
| Oklahoma religious share | NOT FOUND (needs the NCES PSS data tool) | n/a | n/a |
| Microschools, 2026 | about 75,000 sites, about 1.5M students (National Microschooling Center, May 2026). Other sources say about 95,000 sites and 1 to 1.5M students. Analysts range from 750k to 2M students. | B/C | https://www.k12dive.com/news/what-you-need-to-know--about-microschools/827601/ ; https://microschoolingcenter.org/hubfs/American%20Microschools%202025.pdf ; https://ecoleschools.org/microschool-statistics/ |
| Median nonpublic microschool size | 20 students (survey of 1,000 microschools, Oct 2025 to Jan 2026) | B | k12dive and microschooling center above |

The microschool counts are low-confidence. Microschools are not a legal category in most states, and many operate under homeschool law and are invisible in state data.

**Oklahoma participation.** 39,587 students used the Parental Choice Tax Credit at the end of 2025-26, and 40,055 so far for 2026-27 with applications pending (B, https://oklahomavoice.com/2026/06/23/oklahoma-private-school-tax-credit-program-sees-growth-who-benefits/ via search summary; the full page returned 403). The cap rose from $250M to $275M (B, https://www.kgou.org/education/2026-05-06/oklahoma-parental-choice-tax-credit-cap-expanded-from-250-million-to-275-million). The credit is $5,000 to $7,000 per student for 2025-26 (B, same search results). EdChoice calls Oklahoma "the biggest mover" in its 2026 spending-share ranking, up 9 places to 9th (A/B, https://www.edchoice.org/2026-edchoice-spending-share-rankings/).

---

## 2. Dollars

| Item | Figure | Label | Source |
|---|---|---|---|
| Total private school choice spending, most recent year | $10.6B, up 29% year over year, equal to 1.3% of projected $783B public K-12 current expenditure | B (EdChoice is a pro-choice advocacy organisation, but the data is program spending) | https://www.edchoice.org/2026-edchoice-spending-share-rankings/ |
| Programs, Feb 2026 | 39 programs in 26 states (15 ESAs, 11 vouchers, 13 tax-credit programs) | B | https://www.edchoice.org/wp-content/uploads/2025/12/The-ABCs-of-School-Choice-2026-WEB.pdf (the PDF would not parse; figures came from the search summary of the EdChoice page) |
| Florida | $4.3B, 11.19% of combined spend. Over 500,000 students. | B | EdChoice ranking above; https://www.wlrn.org/education/2026-02-19/florida-school-vouchers-lawsuit-step-up |
| Arizona | $1.16B (EdChoice). State Q3 FY26 report: 102,891 ESA students with annual awards of $1,115,099,565. About 60% of ESA dollars go to private school tuition (the 60% figure comes from a search summary, so confirm). | A (state report) / B | https://www.azed.gov/sites/default/files/2026/06/ESA%20FY26%20Q3%20Executive%20_%20%20Legislative%20Report.pdf (A, via search snippet); https://commonsenseinstituteus.org/arizona/research/education/esas-in-arizona-q3-2025-report/ |
| Other EdChoice top states | Wisconsin $700M, Ohio $1.12B, Arkansas $328M | B | EdChoice ranking above |
| Texas ESA (TEFA) 2026-27 | More than 274,000 applications. About 95,600 funded accounts (EdChoice, May 2026), 102,000+ by June 2026 (Comptroller). 85,344 per an earlier press piece. About 178,400 waitlisted. Private school award $10,474, up to $30,000 for a child with a disability. Homeschool award $2,000. | A/B | https://comptroller.texas.gov/about/media-center/news/20260610-texas-education-freedom-accounts-pass-100000-student-milestone-1781032778918 ; https://www.edchoice.org/funding-expands-access-grows-and-new-battles-emerge-in-2026/ ; https://dallasexpress.com/state/texas-funds-education-freedom-accounts-for-85344-students-amid-record-demand/ |
| Texas total dollars | The user brief says $1B. I did not verify a state budget line. The mix of private and homeschool awards means the figure cannot be derived without the split, which was NOT FOUND. | D | n/a |
| Texas payment schedule (private school students) | 25% July 1, 25% October 1, 50% February 1. All transactions go through the Odyssey marketplace, with no reimbursement model. | B/C | https://support.withodyssey.com/hc/en-us/articles/51295974654107-TEFA-Funding-Timeline-and-Installments ; https://theschoolchoiceindex.com/texas/tefa-funding-disbursement-schedule/ |
| Iowa | $8,148 per student for 2026-27, half in fall and half December 1. Families must confirm and pay tuition through the ESA portal by Sept 30, 2026. | A/C | https://educate.iowa.gov/pk-12/educational-choice/education-savings-accounts ; https://support.withodyssey.com/hc/en-us/articles/35839656162203-Key-Dates-for-the-Iowa-Students-First-ESA |
| Alabama CHOOSE | $250M for about 50,000 students | B | EdChoice 2026 legislative review above |
| Tennessee | cap raised from 25,000 to 35,000 students | B | EdChoice 2026 legislative review above |
| Missouri MOScholars | $60M | B | EdChoice 2026 legislative review above |
| Projected 2026-27 total across all programs | NOT FOUND. I did not find an aggregate projection. Texas (about 100k accounts) and Oklahoma ($275M cap) are the main step-ups. | n/a | n/a |

---

## 3. ECCA / §25F: opt-ins and expected flow

**Opt-ins.**
- As of 2026-10-01, 30 states are listed as opted in (C, https://eftccredit.com/states): AL, AK, AR, CO, FL, GA, ID, IN, IA, KS, KY, LA, MS, MO, MT, NE, NV, NH, NC, ND, OH, OK, SC, SD, TN, TX, UT, VA, WV, WY.
- KS, KY and NC opted in by legislative override of a governor's veto. Tennessee opted in by statute.
- New York's governor announced an intent to opt in in May 2026, and it was not finalized per the same page.
- The IRS announced "more than half the US states" had signed up (A, https://www.irs.gov/newsroom/more-than-half-the-us-states-signed-up-to-participate-in-the-federal-scholarship-tax-credit-program-enacted-under-the-one-big-beautiful-bill). I did not open it, so I did not confirm its date or number.
- Ballotpedia keeps a tracker (https://ballotpedia.org/State_participation_in_the_federal_K-12_education_tax_credit_program). EdChoice said "nearly 30" as of May 20, 2026.
- Oklahoma is opted in.

**Mechanics.**
- Individual credit is $1,700 per return, non-refundable, starting 2027-01-01. Joint filers do not get $3,400 under current law (B, EdWeek, https://www.edweek.org/policy-politics/federal-tax-credits-for-k-12-scholarships-what-we-know-and-dont/2026/09).
- Student household income limit is 300% of area median income.
- An SGO must be a 501(c)(3), give scholarships to 10 or more students who do not all attend the same school, and spend at least 90% of its income on scholarships (B, https://www.currentfederaltaxdevelopments.com/blog/2026/6/11/treasury-previews-regulatory-framework-for-new-section-25f-education-freedom-tax-credit ; https://eftccredit.com/learn/sgo-90-10-rule-compliance (C)). Treasury's preview gives a segregated-account safe harbor for the 90% test.
- Governors submit lists of qualifying SGOs to Treasury each year.
- Proposed regulations were expected by the end of September 2026 (Treasury official, June 9, 2026). I did not check whether they have been published.

**Flow estimates.**

| Estimate | Figure | Label | Source |
|---|---|---|---|
| JCT cost | $25.9B over 10 years | B (reported; JCT original not opened) | https://www.thirdway.org/memo/what-we-know-so-far-about-the-federal-tax-credit-scholarship-program (via search results) |
| Urban Institute | 2.7 to 3.6M taxpayers claiming a year, $2.7B to $6.1B a year in revenue diverted | B | same search results |
| Advocacy ceiling (AFC) | $37.6B a year if 1 in 5 eligible donors give the full credit. This is a ceiling, not a forecast. | C | EdWeek link above |
| Simple scenarios | 2% of eligible taxpayers at $1,700 is $1.6B. 10% is about $8B. | C/B | search results |

Because the credit is dollar-for-dollar, donations roughly equal credit cost. Treat the working range as **$2.7B to $6.1B a year of SGO inflow once mature** (B), against about $2.6B a year implied by JCT's straight-line average (D, $25.9B / 10, and the early-year ramp is probably lower). I found no estimate of 2027 first-year flow.

**Comparison.** The existing pool ($10.6B) is for the entire choice sector. The federal flow, if the Urban range holds, is 25% to 60% as large again, but it runs through new and existing SGOs, not through schools directly.

---

## 4. Incumbents and pricing

| Vendor | What | Pricing/fees found | Label and source |
|---|---|---|---|
| **FACTS (Nelnet)** | Tuition management, SIS, financial aid, in K-12 private and faith-based | Serves nearly 12,000 K-12 schools. FACTS revenue $312M (2025) and $308M (2024). Capterra lists a starting price of $1,000 per user per month (unreliable). Families pay enrollment fees: for example $25 for 1 to 2 payments, $55 for 3 or more, and one parish shows a $43 per-family annual fee. Card fee 2.95% to 3.05%. Late fees are automatic. | A (SEC): https://www.sec.gov/Archives/edgar/data/1258602/000125860226000014/nni-20251231.htm ; C: https://www.capterra.com/p/10027955/FACTS-Tuition-Management/ ; school pages e.g. https://sjoa.org/facts |
| **Blackbaud Tuition Management (Smart Tuition)** | Tuition billing | Custom quotes. Platform fee 3.12% on cards. From 2025-26, ACH is 1% + $0.30, capped at $2.50 per transaction. Schools may add $50 enrollment or account fees. | B/C: https://kb.blackbaud.com/knowledgebase/articles/Article/204387 ; https://www.trustradius.com/products/blackbaud-tuition-management/pricing |
| **Sycamore** | SIS, billing | Published at $4 per student per month, all modules, plus a one-time onboarding fee. | C (vendor/blog): https://sycamoreleaf.com/compare/alma-vs-sycamore/ |
| **Gradelink** | SIS | $121 a month up to 50 students, $164 for 51 to 100, $210 for 101 to 150. | C: https://www.capterra.com/p/118900/Gradelink-SIS/ |
| **Alma** | SIS | Custom quote. Reviewers claim it costs at least 50% less than major competitors. | C |
| **TADS, Brightwheel, Transparent Classroom, Procare** | Not researched. NOT FOUND in this pass. | n/a | n/a |
| **ClassWallet** | ESA wallet and marketplace for AZ, AR, IN, OH, SC, NC, NH. Grants or tax credit programs in ID, TX, GA, AL, MO, VA. | State contract. Arizona's treasurer sought a replacement or audit vendor in 2026. | B: https://azcapitoltimes.com/news/2026/06/05/state-treasurer-seeks-esa-vendor-to-track-misspending-fraud/ ; https://schoolchoiceusa.org/payment-platforms (C) |
| **Odyssey** | ESA, tax-credit and scholarship platform for TX, UT, IA, GA, LA, WY, NE, MO, FL. Announced as the platform for Iowa's new state SGO (ISGO) and for the Education Freedom Tax Credit. | State contracts. | B/C: http://www.prnewswire.com/news-releases/iowa-scholarship-granting-organization-partners-with-odyssey-to-support-education-choice-in-iowa-302883464.html |
| **Student First Technologies** | ESA platform for TN and WV | Glitches. Over 3,000 orders were unfulfilled in WV well into the school year. | B: https://tennesseelookout.com/2025/02/13/despite-breakdowns-in-two-states-esa-provider-student-first-seeks-to-expand/ |
| **Step Up For Students** | Florida SGO and administrator, over 500,000 students | Funded by state, no software fee. | B: WLRN link above |
| **scholarships.software** | Self-described software for SGOs under §25F: applications, donor credits, disbursement to schools | Could not fetch details (page returned only a title). Provenance, status and pricing unknown. | C: https://scholarship.software/ |
| **Merit, AcademicWorks, ACE** | Not researched. NOT FOUND in this pass. | n/a | n/a |

**FACTS fee complaints.** BBB shows 23 complaints in 3 years, with themes of unresponsive customer service, excessive fees and automatic late fees (B/C, https://www.bbb.org/us/ne/lincoln/profile/scholarships-and-financial-aid/facts-management-company-0714-207000149/complaints). PissedConsumer has more but is low quality. The fee burden falls on families (card fees near 3% plus per-family enrollment fees), not just schools. I did not find any school-side quantification of switching costs or contract lock-in. That is a gap worth closing by interview.

**Derived per-school revenue.** $312M / about 12,000 schools is about $26,000 a school. This divides total FACTS revenue (including non-billing products and family fees) by school count, so it overstates what a billing-only tool earns (D).

---

## 5. How ESA money reaches schools, and the evidence of pain

**Rails.**
- Arizona: quarterly deposits to the family's ClassWallet account (K-12 general ed about $1,750 to $2,000 a quarter; IEP awards about $8,000 a quarter). Funds can be paid by Direct Pay or the marketplace (B, https://schoolchoiceusa.org/arizona-esa (C) and the Q3 report).
- Texas: families pay through the Odyssey marketplace only, with no reimbursement option. Private-school students receive 25%, 25%, 50% installments (July 1, October 1, February 1) (C).
- Iowa: families confirm and pay tuition in the ESA portal by September 30, then half of the funds arrive in the fall and half on December 1 (A/C).
- Florida: Step Up deposits into families' accounts four times a year (B).
- Oklahoma: the credit goes to parents (B). No platform sits between school and parent.

**Evidence of payment and reconciliation pain.**
- **Florida.** Seven private schools sued Step Up For Students in February 2026, alleging delays of 90 days to over a year, partial payments, unexplained reductions and in some cases no payments for over two years. Schools reported losing "$500,000 to a million" each in unpaid scholarships. A state audit in April 2025 found management errors. Audits also reported $270M in untracked student funding and $398M in excess voucher distributions. Step Up says the claims are "unwarranted." Plaintiffs are schools serving students with disabilities (B, https://www.wlrn.org/education/2026-02-19/florida-school-vouchers-lawsuit-step-up ; https://www.news4jax.com/news/local/2026/02/20/florida-private-schools-sue-step-up-for-students-over-allegations-of-delayed-scholarship-payments/). This is the strongest evidence in the file.
- **Arizona / ClassWallet.** Reported waits of weeks for approvals and months for reimbursement. A Heritage Foundation survey of vendors cited "high or complicated fees" and "delayed reimbursements that discouraged provider participation." An Arkansas Department of Education report called ClassWallet "fragmented, inefficient, and increasingly misaligned," with weak reporting and manual workarounds (B, https://grandcanyontimes.com/report-finds-esa-vendor-classwallet-fragmented-inefficient-and-increasingly-misaligned ; https://www.city-journal.org/article/arizona-education-savings-account-students). Several specifics (6 to 8 week holds, 10 to 20 business day typical reimbursement) come from SEO guide sites and are C.
- **West Virginia / Student First.** Over 3,000 orders unfulfilled; CEO promised to fix before seeking more business (B, Tennessee Lookout link above).
- **Texas.** No evidence found of school payment complaints. The program is new, and the October 1 installment was released on the day of this research (wbap.com, B). NOT FOUND does not mean absent.
- **Iowa.** No payment delay evidence found. Oversight and transparency concerns exist (B, https://iowastatedaily.com/331292/news/transparency-concerns-grow-over-iowas-314-million-private-school-program/).

The evidence concentrates on special-needs schools in Florida and on vendors and families in Arizona. I found no evidence that typical small faith-based schools suffer reconciliation pain at scale. Treat that as the main unvalidated assumption (D).

---

## 6. Licensing and payments

None of this is legal advice. The founder holds no professional licences, so the architecture should avoid needing any.

- **Stripe Connect.** Platforms can use Stripe's money licenses (US MTLs, registered MSB) rather than their own, provided the platform does not take possession or control of funds (B/C, https://stripe.com/connect/features ; https://whop.com/blog/stripe-connect/).
- **Agent-of-payee exemption.** Many states exempt an intermediary collecting on behalf of the payee, which fits a school's billing vendor. It does not exist in every state, and conditions differ (B, https://www.venable.com/insights/publications/2018/06/money-transmission-in-the-payment-facilitator-mode ; https://ibl.law/agent-of-payee-exemption/). As of early 2026, 31 states have enacted the Money Transmission Modernization Act in whole or part (C, from the faisalkhan.com style sources; verify).
- **Implications.** Tuition billing from parents to schools through Stripe Connect is feasible without a separate license. Holding or routing ESA or SGO funds is another matter. The state-run rails are the money movers, and an SGO that disburses to schools is the entity regulated under §25F and state law, not a software vendor. Staying a **read-only reconciliation and billing layer** avoids that issue. State-by-state legal review (a fixed-fee lawyer opinion) is still needed before launch.

---

## 7. Bottom-up TAM / SAM / SOM

Inputs (change any D value to rerun):

| ID | Input | Value | Label |
|---|---|---|---|
| I1 | US private schools | 29,730 | A |
| I2 | Average enrollment per school | 4.73M / 29,730 = about 159 | A (derived) |
| I3 | Software ARPA scenarios per school per year | Low $2,400 (e.g., about $200 a month), mid $3,600, high $6,000 | D. Anchors: Sycamore at $4 per student per month on 159 students is about $7,600 a year (C). Gradelink $121 to $210 a month is $1,450 to $2,500 a year (C). |
| I4 | Share of private schools that are small (<200 students), religious, in states with active choice money, and plausibly switchable | about 1/3 of all schools, about 10,000 | D |
| I5 | Nonpublic microschools | 75,000 sites (B), of which tuition-charging and not just homeschool pods: 30% = about 22,500 | D |
| I6 | Microschool ARPA | $600 a year | D |
| I7 | Existing platforms hold schools for years, so a new entrant wins schools only at annual re-bid | Year-3 win count of 150 to 300 schools | D |

**TAM, schools (billing, plans, reconciliation software):**
- Private schools: 29,730 x $2,400 = $71M; x $3,600 = $107M; x $6,000 = $178M.
- Microschools: 22,500 x $600 = $13.5M.
- Combined about **$85M to $190M a year**.
- Cross-check: FACTS at $312M total revenue is already larger than this TAM, because its revenue includes SIS, education services and family fees. This TAM covers only a software subscription slice. It is not a payments-revenue estimate.

**Payments revenue (not included above).** Card fees of about 3% (FACTS, Blackbaud) are passed to families. A new entrant using Stripe Connect would see roughly 2.9% + $0.30 in processing cost (D, standard Stripe card pricing, not sourced here), so little margin exists on card volume. ACH is where Blackbaud has already cut to 1% + $0.30 capped at $2.50. A founder who competes on price on payments gets squeezed.

**SAM:** 10,000 schools x $3,600 = **$36M**, and a range of $24M to $60M across the ARPA scenarios.

**SOM, year 3:** 150 to 300 schools x $3,600 = **$0.54M to $1.08M ARR**. This assumes one founder doing mostly direct and Oklahoma-first selling. It assumes nothing about which states.

**Oklahoma-only cut.** 190 schools (A) x $3,600 = about $0.7M, with 30 schools being a plausible realistic first year (D) ($108k).

**SGO back office (second product).**
- Inflow (B): $2.7B to $6.1B a year at maturity.
- Admin cap: 10% of income, so $270M to $610M a year across all SGOs, covering all admin costs (A/B, §25F 90% rule).
- If software and platform fees are 5% to 10% of admin (D), the pool is about **$13M to $61M a year**, shared with Odyssey and existing SGO vendors.
- The number of SGOs expected is NOT FOUND.
- Early evidence is that states pick or fund a platform (the Iowa ISGO plus Odyssey; Odyssey positioned for the tax credit program), and a competitor named scholarships.software has appeared.
- A new SGO raising $1M can spend $100k on everything. EdWeek quotes an advocate calling the cap "unworkable" for new SGOs.
- Because donations arrive from 2027-01-01, first-year SGO spend on software is small and unproven.

---

## 8. Where the money and the pain concentrate

| Party | Money | Pain | Can a small startup sell to them? |
|---|---|---|---|
| **State program administrators** | Control all the public money | Audit and fraud monitoring, vendor failure (Arizona treasurer's RFP, Arkansas report) | No. Procurement is long, contract-based, and held by Odyssey, ClassWallet and Student First. |
| **SGOs** (Step Up, ACE and new ones) | Will receive $2.7B to $6.1B a year of federal-credit donations (B) | 10% admin cap; compliance reporting; donor receipts | Possibly, but small budgets. Odyssey and others are already moving in. |
| **Schools** | Pay software $2k to $7k a year (D) | Late and partial public payments (Florida), fee complaints about FACTS, reconciliation of mixed family and public money | Yes, directly. Evidence of pain is strongest for special-needs schools in Florida and weaker for typical small faith schools. |
| **Families** | Pay 3% card fees plus per-family enrollment fees | Fees, portal friction, approval delays | Indirect. Families do not buy the software. |

My read: money sits with states and SGOs, but the sellable, documented pain sits with schools. The sellable product is the one that **does not touch the public money**. It shows a school who has paid, what is still owed from which rail, and what the family still owes.

---

## 9. Decision-relevant findings and gaps

1. Choice spending is $10.6B (B) and the public rails are locked by state contracts. This is not a rails-building opportunity.
2. School payment pain is documented, but mostly Florida special-needs schools. It is not yet shown for the typical small faith school (D).
3. FACTS dominates (about 12,000 schools, $312M) and its fee complaints are real but modest in scale (23 BBB complaints in 3 years).
4. ECCA starts January 2027 with 30 states opted in (C). New SGO software budgets are capped by the 90/10 rule and Odyssey is entrenched.
5. The schools TAM is about $85M to $190M, the SAM about $36M, and year-3 SOM about $0.5M to $1.1M ARR (all D-heavy).

**Not found or unverified:**
- Treasury proposed regulations and whether the October 1 deadline was met.
- Number of SGOs expected.
- Oklahoma religious share of private schools.
- TADS, Procare, Brightwheel and Transparent Classroom pricing.
- Texas program dollar total.
- Any survey of small-school switching costs.
- The ABCs PDF itself.
- Details of scholarships.software.
- The Oklahoma Voice page (403 on fetch).
