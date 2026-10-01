# D_C3 Customer simulation: tuition + school-choice funds ops for small Christian schools and microschools

Date: 2026-10-01. Author: Agent D (Customer). Founder: Elliot Greenlaw (student, Edmond OK, SwiftUI/design strength, no CPA/licence, no capital, Christian-values brand).

## 0. Evidence rules and honesty notes

- EVIDENCE = sourced fact with URL. SIMULATED = my reasoning about how a persona would think; not a quote from a real person. No real quotes are used.
- Search limits: my web search did not surface retrievable Reddit threads (r/Teachers, r/homeschool, r/microschool, r/arizona, r/texas) or FACTS/TADS parent-admin review text beyond aggregators. Treat "Reddit says" claims as UNVERIFIED; the first week of the test should be to read those threads directly and add links. No KaiPod/Prenda/NMC report was read in full; only secondary mentions.

### Evidence base (URLs)

1. Oklahoma Parental Choice Tax Credit (PCTC), school side. Schools must submit enrollment verification (student, tuition/fees, scholarships) via OkTAP bulk upload, which "can only be submitted once"; late enrollees are added individually; annual reconciliation due June 15 (instructional days, grade, enrollment status by semester, discounts). Checks are mailed to the school but the school must release them to the taxpayer, who decides whether to endorse them to the school. Schools must notify OTC if checks arrive for withdrawn students. https://oklahoma.gov/tax/individuals/parental-choice-tax-credit/pctc-school-administrators.html
2. PCTC scale: ~39,637 approved applications, ~$252.3M for 2026-27; cap raised to $275M / $277.3M. https://www.kgou.org/education/2026-05-06/oklahoma-parental-choice-tax-credit-cap-expanded-from-250-million-to-275-million ; https://www.kosu.org/school-choice-program-opens ; credit $5,000-$7,000 per student per EdChoice https://www.edchoice.org/school-choice/programs/oklahoma-parental-choice-tax-credit-act/
3. PCTC vendor friction: reporting that schools had trouble uploading verification to the Merit-run site. https://www.news9.com/oklahomas-own-explains/oklahoma-private-school-tax-credit-explained and search result summaries on the Yahoo/Oklahoman cost story https://news.yahoo.com/handling-oklahomas-private-school-tax-171550953.html
4. ProPublica on voucher/ESA administrators: West Virginia private school (Beth Haven Christian) reported "significant cash flow issues" from late voucher payments; Arkansas vendor Student First late and owed the state $563,000 in fees, state went back to ClassWallet; Idaho vendors owed money since January 2024 and a vendor lost about $10,000 when families could not access funds; Oklahoma ClassWallet pandemic-relief program had $18M of questionable spending. https://www.propublica.org/article/school-voucher-management-classwallet-odyssey-merit-student-first
5. ClassWallet manual-review delays reported by families at 6-8 weeks with no status (advocacy/blog source, lower quality). https://arizonachristianhomeschools.com/resources/how-long-does-classwallet-reimbursement-take ; Arizona platform overview https://schoolchoiceusa.org/payment-platforms
6. Texas TEFA 2026-27: $10,474 per private-school student; installments 25% Jul 1 2026, 25% Oct 1 2026, 50% Feb 1 2027, in Odyssey accounts. https://outschool.com/esa-guides/texas-education-freedom-account-tefa-guide-for-texas-parents ; Comptroller https://comptroller.texas.gov/about/media-center/news/20251006-texas-comptroller-announces-texas-education-freedom-accounts-as-program-name-for-school-choice-program-selects-implementation-partner-1759758132101
7. Microschool economics: 38% of microschools receive state choice funds (2025) up from 32%; founders cite cash-flow strain, loans, credit cards; Florida ESA reimbursement lag is the most-cited provider pain (secondary sources). https://www.edchoice.org/the-state-of-microschooling/ ; https://www.kaipodlearning.com/microschool-funding-sources/ ; https://schoolchoiceusa.org/microschools ; Texas guide https://microschoolguide.com/articles/texas-esa-what-founders-should-do-before-launch/
8. Competitor pricing (aggregator, 2026): FACTS custom quote, families pay $25-$55/yr enrollment fee; TADS custom; Blackbaud ~ $50/family/yr; Sycamore $4/student/mo with 18-month minimum; TeachHero $19-$39/mo + $1.50/student; TUIO free or $500/yr; SchoolCues $75/mo; DreamClass $99-$259/mo; Omella $0 or ~1%+$1/payment (microschool-targeted). The aggregator found NO ESA/tax-credit tracking feature in any listed platform. https://teachhero.com/blog/best-tuition-management-systems ; https://omella.com/solutions/microschools (note: TeachHero is itself a vendor, so treat its rankings as marketing). FACTS complaints (price, late fees, glitches, school/vendor blame-shifting, some small schools leaving for cost): https://www.softwareadvice.com/product/526711-FACTS-Tuition-Management/ ; https://www.capterra.com/p/10027955/FACTS-Tuition-Management/ ; https://www.bbb.org/us/ne/lincoln/profile/scholarships-and-financial-aid/facts-management-company-0714-207000149/complaints
9. ECCA / Federal Scholarship Tax Credit: starts Jan 1 2027; individuals get a 100% non-refundable credit up to $1,700 for donations to SGOs; SGOs must spend at least 90% on scholarships; state must opt in and submit an SGO list. As of Sept 2026 reporting about 27-30 states opted in, INCLUDING Oklahoma and Texas (Arizona NOT in the list returned). https://www.irs.gov/government-entities/federal-state-local-governments/federal-scholarship-tax-credit-fstc ; https://www.newsweek.com/27-states-signed-up-for-trumps-new-school-tax-credit-heres-who-hasnt-12048234 ; https://ballotpedia.org/State_participation_in_the_federal_K-12_education_tax_credit_program ; Rev. Proc. 2026-6 lets SGO lists come later https://www.irs.gov/newsroom/treasury-irs-allow-states-to-make-an-advance-election-to-participate-in-the-new-federal-tax-credit-for-individual-contributions-to-scholarship-granting-organizations-under-the-one-big-beautiful-bill

Key structural take (EVIDENCE-derived): Oklahoma's PCTC is not an ESA; it is a per-student tax credit whose money flows state -> check mailed to school -> released to parent -> endorsed back. The school's hard work is enrollment verification, reconciliation by June 15, and chasing parents to endorse checks. That is a bookkeeping workflow nobody's generic tuition tool models.

---

## 1. Persona 1: Head of a 60-150 student church-affiliated Christian school, Oklahoma City metro

SIMULATED composite ("Head Dana"). Teaches/leads, often also bookkeeper; one part-time office admin; church owns the building.

- Problem: Each family's tuition now has up to 4 payers (parent, PCTC $5-7k, a private SGO/church benevolence/discount, soon ECCA-funded scholarships). She must (a) upload enrollment verification once, correctly, before parents can apply; (b) track which families got approved; (c) receive state checks made payable to the parent, make sure the parent comes in, endorses, and the amount posts to the right family; (d) reconcile by June 15; (e) handle withdrawals where a check arrives for a student who left.
- Frequency: enrolment push Jan-Mar; verification/approval Dec-Aug rolling; check receipt per installment (assume 2-ish per year, verify on OTC page); monthly billing every month; June 15 reconciliation once.
- Cost (SIMULATED estimates, to validate): 4-8 hrs/week of billing/AR in a 100-student school; PCTC adds perhaps 30-60 extra hours/year (verification upload, parent chasing, check handling, reconciliation) plus errors. At $30-40/hr loaded value that is roughly $1,000-$2,500/year of time, but the larger dollar issue is delinquency and cash timing: a 100-student school at about $7k average tuition is about $700k revenue; if 3-5% sits late at any time that is $20-35k float. Late checks are a cash-flow, payroll-timing issue.
- Current tools (SIMULATED but consistent with evidence): FACTS (if the church already contracted), or QuickBooks + spreadsheet + Stripe/Venmo/check + Gradelink/Sycamore/Renweb-type SIS. Many ~100-student schools are on a spreadsheet. FACTS complaints about price/late fees are public (evidence 8).
- Why unsolved: Generic tuition tools model "family pays installments," maybe "aid." They do not model a third party payer whose cash arrives as a check payable to the parent, with state-defined verification and reconciliation. Aggregator found no ESA/credit tracking features (evidence 8). Oklahoma's PCTC is also new (2024-25 first year) and has volume jumping.
- Budget owner: Head, with church finance committee/school board approving anything recurring above a threshold (SIMULATED: $1-2k/yr is head's call; $5k+ goes to the board).
- Decision process: head finds the pain, tests it quietly, asks the business-minded board member or pastor's finance volunteer. Pastor/elders care about "will parents be upset, is it ethical to charge fees, does it fit our mission." Trust and a known referrer (another head, ACSI/OCEA peer, church-friend) matter more than features. Board meets monthly; spring board cycle sets next year's budget (Feb-Apr).
- Switching triggers: re-enrolment (Jan-Mar), the June 15 reconciliation scramble, a missed/lost state check, an auditor/CPA comment, bookkeeper leaving, FACTS contract renewal notice, a parent complaint about double-charging.
- Barriers: contract lock-in (FACTS multi-year), church IT/accounting independence, fear of changing billing mid-year, data migration, security/PCI trust for a student 20-year-old founder, parents' autopay re-enrollment friction.
- WTP (SIMULATED, to test): $2-4/student/month ($150-$400/month for 75-100 students) is within reach if it replaces hours and prevents late money; alternatively 0.5-1% of processed tuition on top of pass-through card/ACH fees. A flat $100-$250/month feels natural to a head; a per-% fee that scales with tuition feels like "taking from ministry." Parent-paid convenience fees are a sensitive topic in church schools (SIMULATED).
- Objections: "We already pay FACTS." "Our church treasurer does QuickBooks." "I do not want another login." "Who are you, how long will you be around?" "What happens to our data when you graduate?" "We cannot add fees to families."

## 2. Persona 2: Microschool founder, 12-30 students, Texas or Arizona, living on ESA

SIMULATED composite ("Founder Marcus/Elena"). Former teacher, runs from a church classroom or rented space, no back-office staff.

- Problem: Revenue is largely ESA funds that arrive in a family's Odyssey (TX/AZ) or ClassWallet account; the provider must be approved vendor, send invoices, and wait. Texas: private-school installments Jul 1/Oct 1/Feb 1 (25/25/50), so cash is lumpy, and the family may have a different balance than the invoice. Evidence 4/5 shows platform delays and vendor payment lags in other states and slow manual reviews. Family tops up with cash/card. Founder tracks "how much ESA is left for this student, did the invoice clear, who owes the gap."
- Frequency: invoices monthly/quarterly; platform issues episodic but acutely felt; Oct 1 and Feb 1 TX disbursement dates are stress points; enrolment spikes pre-fall and mid-year.
- Cost (SIMULATED): 3-6 hrs/week at 20 students; a single stuck $10k invoice is 10-15% of a quarter's rent/pay for a tiny school. Founders reported using credit cards/loans to bridge (evidence 7).
- Current tools: Odyssey/ClassWallet portals, Google Sheets, Stripe/Venmo/Zelle, maybe Omella, TeachHero, Wonderschool-type tools, Prenda/KaiPod networks provide their own back office.
- Why unsolved: Portals are the payer's system, not the school's ledger; no good cross-payer view; and platforms do not push predictable status. Microschool software is cheap and generic (evidence 8).
- Budget owner: the founder alone. Fast decisions (days), card on file, monthly.
- Decision process: community recommendations (Facebook groups, NMC, KaiPod/Prenda networks, microschool Slack/Discords), free trial, price under $100. They want something live this week.
- Switching triggers: before a disbursement date, new school year, first stuck invoice, adding a second location, applying for vendor approval.
- Barriers: very low budget; platform API access is closed (no public ESA API; integration is manual import/screenshots/CSV); tiny market per customer; high churn (microschools close or get absorbed; many founders are not in business long-term). Arizona is not in the ECCA list returned (verify).
- WTP (SIMULATED): $25-$75/month flat or $2-3/student/month; will resist % of ESA. Free tier exists (Omella $0, TUIO free), so anchoring is brutal.
- Objections: "I can do this in a spreadsheet." "Will it talk to Odyssey?" (answer is no today.) "I need a payment before the platform pays, can you advance me?" (that is lending/factoring, a different business and regulated; founder lacks capital and should not).

## 3. Persona 3: Business manager, 400-student Christian school on FACTS

SIMULATED composite ("Brenda"). Full-time business office of 2-3, SIS plus FACTS, board-reviewed budget, CPA firm.

- Problem: Mostly handled; pain is niche: tracking PCTC/state/other-scholarship portion by family in a FACTS-centric workflow, manual reconciliation to a general ledger, parent communication, "FACTS vs school blame-shifting" (public complaints in evidence 8).
- Frequency: monthly; heavy Jan-Mar and June.
- Cost: She has staff; marginal cost $2-5k/year of hours; FACTS fees paid, including family-paid fees.
- Current tools: FACTS (billing, aid assessment), SIS (Blackbaud/Gradelink), QuickBooks/Sage. FACTS has its own app.
- Why unsolved/solved: Mostly solved by FACTS plus spreadsheet; switching is high risk and she may value one trusted vendor and aid assessment.
- Budget owner/decision: business manager recommends, head approves, board for multi-year contract.
- Triggers: FACTS contract renewal/price hike, FACTS outage in the billing run, new ECCA scholarship stream.
- Barriers: multi-year contract, parent data migration, reputational risk, procurement formality, wants SOC 2/PCI docs the founder lacks.
- WTP: could pay for an add-on that sits ALONGSIDE FACTS (reporting layer for funding sources) at $100-$300/month; will not rip out FACTS for a student's startup.
- Objections: "FACTS already does this" (partly false for state-credit tracking, but she will say it). "Can it sync to our GL?" "SOC 2?"
- Verdict: poor FIRST customer, plausible later expansion customer.

## 4. Persona 4: Parent paying partly with ESA/tax-credit funds

SIMULATED composite ("Parent Jess"), Oklahoma PCTC family or Texas TEFA family; income mid; two kids.

- Problem: Confusion about what is paid by whom and when. In Oklahoma the check comes made out to HER and she must go to the school and endorse it (evidence 1); she may forget; school then bills her late fees. In Texas, ESA funds sit in Odyssey and the school invoices. She wants a single balance: "what do I owe this month after the state portion?" Plus split payments between spouses/grandparents.
- Frequency: monthly billing, quarterly funding events.
- Cost: minutes to hours monthly, anxiety, late fees; real dollars if a check is missed. SIMULATED.
- Current tools: school's FACTS portal or emails/Venmo; ESA portal; bank app.
- Why unsolved: School tools are payer-agnostic; ESA portals are about spending not tuition billing.
- Budget owner: parent will NOT pay for the app; school pays. Parent WTP is about $0, and parent-paid convenience fees are a barrier for the school's mission. Evidence on parent reviews of FACTS shows annoyance at fees ($25-$55/yr, $50 management fees, late fees).
- Decision: parents adopt what the school mandates; they influence by complaining.
- Triggers: the new school year, a late-fee surprise.
- Barriers: app fatigue; if the app is not mandated, adoption is low; trust with bank details.
- Objections: "Another app?" "Why am I paying a fee?"
- Role in the business: adoption driver and sales demo asset (beautiful UI, which is Elliot's edge), not the buyer.

## 5. Persona 5: Director of a small or new SGO preparing for ECCA

SIMULATED composite ("Director Kyle"). A small SGO, perhaps 1-3 staff or a church/foundation spin-off, wants to be on Oklahoma's or Texas's list for 2027.

- Problem: Must (a) receive donations from individuals (up to $1,700 credit), issue donation receipts, (b) award scholarships to eligible students, pay schools, (c) spend 90%+ on scholarships (10% admin cap) (evidence 9), (d) report to the state/IRS, (e) track donors, scholarships by student/school and reconcile. Lists due; Rev. Proc. 2026-6 delays list timing but donations start Jan 1 2027. Compliance specifics are legal territory; founder is not a lawyer/CPA.
- Frequency: continuous; year-end donations spike; school-year awards.
- Cost: they will need donor CRM, student application, award disbursement, school payout, reports. Likely they use Submittable/Fluxx/Blackbaud/ spreadsheets; existing big SGOs (e.g., EdChoice-type) have custom systems.
- Why unsolved: new volume and rules; small SGOs have little budget until donations arrive; the 10% admin cap means software budget is capped and competes with salaries.
- Budget owner: SGO board/executive director. Decision cycle slow, grant/donation-based, fall 2026 is NOW.
- Triggers: state SGO list deadlines, first donation date Jan 1 2027.
- Barriers: legal/compliance liability, fiduciary/money-transmission and 501(c)(3) rules, donor trust, procurement; founder has no SGO relationship; sales cycle long; if SGO wins state approval is uncertain. Money holding by the app would raise money-transmitter issues (flag for counsel; not assessed here).
- WTP: percent of admin budget; maybe $300-$1,500/month or 1-2% of disbursed funds, but all within a 10% cap. Risky.
- Verdict: attractive in theory (concentrated buyer, many schools behind it), too heavy/regulated/slow for a part-time student as FIRST customer. Treat as a 2027 expansion once schools are live and one SGO wants school-side reconciliation (a school-facing "SGO award receivable" feature is an easier hook than SGO-side software).

---

## 6. Cross-persona comparison (SIMULATED scoring, 1-5)

| Persona | Pain | Budget exists | Fast decision | Reachable by Elliot | Product fit | Total |
|---|---|---|---|---|---|---|
| 1 OKC Christian school head | 4 | 3 | 3 | 5 (Edmond, church network, OC ties) | 5 | 20 |
| 2 TX/AZ microschool founder | 4 | 2 | 5 | 2 (remote) | 4 | 17 |
| 3 400-student FACTS | 2 | 4 | 1 | 3 | 2 | 12 |
| 4 Parent | 3 | 0 | n/a | 4 | 4 (as adoption lever) | n/a |
| 5 SGO director | 4 | 2 | 1 | 2 | 3 | 12 |

## 7. Conclusions

### Best first paying customer
Persona 1, narrowed: head/administrator of a 50-150 student Oklahoma accredited private (Christian) school that (a) takes PCTC families, (b) is NOT locked into FACTS, (c) does its own books on spreadsheet/QuickBooks, and (d) has a board member who is fast to say yes. Reasons: Oklahoma PCTC creates a documented, school-side workflow (verification, endorsement, June 15 reconciliation) that is Oklahoma-specific, concentrated in a place Elliot can drive to and visit in person, and ECCA gives the same workflow a second funding stream in 2027 (Oklahoma opted in per evidence 9). In-person trust beats online marketing for church schools. Microschool founders (Persona 2) are the easier-to-close, cheaper, higher-churn secondary segment, and TX/AZ geography makes them remote-sold; use as a fast-feedback channel, not the revenue base.

### Sharpest pain (hypothesis to prove)
Not "billing" (cheap tools exist) but "multi-payer reconciliation of state money that arrives as a check made out to the parent or as a delayed platform deposit": knowing, per family, what the state/SGO portion is, whether it has actually arrived, who must endorse, who still owes the gap, and being ready for the June 15 reconciliation. Cash-timing (late state money vs payroll) is the emotional core; hours saved is the rational justification.

### Risks to be honest about
- Competitive reality: free/cheap tools (Omella, TUIO, TeachHero, SchoolCues) and incumbents (FACTS, TADS) set low price anchors; no one in the search sample advertised ESA/credit tracking, which is either an opening or a sign the market is too small. Resolve by testing.
- Revenue per school is small: 100 students x $3 x 12 = $3,600/yr. Need roughly 25-30 schools for $100k ARR (ignoring processing revenue). Percent-of-tuition processing could be bigger (0.5% of $700k = $3,500/yr, similar) but raises PCI/money-movement trust and regulatory questions (use Stripe Connect; do not hold funds; consult counsel).
- Integration: no public API to Odyssey/ClassWallet/OkTAP assumed; the product is a ledger plus manual/CSV entry. That may feel like "another spreadsheet" unless the parent app and automated reminders are clearly better.
- Founder constraints: student time, no CPA licence (so frame as tracking/reporting, not tax or accounting advice), brand rule of no manipulative urgency (good fit with church-school trust).

## 8. 30-day part-time test (about 10 hrs/week, no code beyond a clickable prototype)

Goal: determine whether OKC-area heads feel the multi-payer pain strongly enough to pay and let Elliot touch their billing.

Weeks 1-2: discovery (target 15-20 conversations, 12 of them Oklahoma school heads/business managers, 4 microschool founders, 2 parents, 1 SGO person).
- Source: personal network, church/OCU contacts, ACSI/OCEA directories, PCTC-participating school lists on oklahoma.gov, microschool Facebook groups. Offer a free "PCTC and funds reconciliation checkup" rather than a pitch.
- Also read the Reddit threads (r/Teachers private school, r/microschool, r/homeschool, r/arizona, r/texas ESA) and add links to this file.
Weeks 2-3: a Figma/SwiftUI or Notion/Sheet "funding ledger" mock using a real (anonymized) school's data; concierge-run reconciliation for 2-3 schools.
Week 4: ask for money: paid pilot at a stated price.

Measure (pre-register thresholds):
1. Pain prevalence: of Oklahoma schools interviewed, share that took PCTC families AND track the state portion in a spreadsheet/by hand AND report at least one missed/late/confused check or reconciliation scramble. Pass: 50% or more.
2. Time/dollar quantification: median self-reported hours per year on PCTC/scholarship admin and largest cash-timing gap in dollars. Pass: 40+ hrs/yr or $10k+ float.
3. Incumbent lock-in: share not under FACTS contract and when contract renews. Pass: 40% or more switchable by next Jan-Mar window.
4. Budget owner and process: who approves, threshold, calendar (board month, spring budget). Record cycle length.
5. WTP ladder: show $150/mo flat, $3/student/mo, 0.75% of processed tuition; record accepted/refused. Pass: at least 3 of 12 schools say yes to a paid pilot (letter of intent or deposit of $100-$300) at 2+ dollars/student/month equivalent.
6. Concierge effect: after reconciling one school's data, did it find an error or an uncollected amount? Pass: at least 1 school with a concrete discovered discrepancy.
7. Parent-side: for 2 pilot schools, would parents install/use the app (7-day activation among 10 parents each)? Pass: 50% or more.
8. Kill/pivot signals: majority say "FACTS/QuickBooks handles this" with no pain; or pricing acceptance below $1/student/mo; or heads refuse to move before next fall. Then pivot to the microschool-only wedge or the SGO school-receivable feature, or shelve.

## 9. Open items to verify
- Read Reddit threads and ACSI/OCEA material directly (not retrieved here).
- Confirm PCTC disbursement schedule/frequency and any date for state checks to schools.
- Confirm ECCA state status for Arizona and Oklahoma SGO list process.
- Legal check (not CPA/lawyer): money-movement structure, student-data privacy (FERPA is not directly applicable to most private schools, but COPPA/state laws and church-school trust expectations apply).
