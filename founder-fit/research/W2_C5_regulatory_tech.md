# W2_C5: Regulatory, Operations and Technology Path (Oklahoma hail-belt agency, later MGA)

Date: 2026-10-01. Author: Agent E.
Evidence labels: A = official/primary source fetched or quoted in search; B = reputable secondary; C = vendor/blog marketing (directional only); D = my inference or not verified, confirm before acting.
Not legal advice. Items marked D must be confirmed with the Oklahoma Insurance Department (OID) Legal Division (405-521-2746, per OID bulletin) or an insurance-regulatory attorney.

---

## 1. LICENSING PATH IN OKLAHOMA

### 1.1 Individual P&C producer (Elliot personally)
| Item | Finding | Label / source |
|---|---|---|
| Age | 18+ (statutory producer-licence requirement; same text appears in the MGA licence section search result) | A/B: OK statutes via search summary; https://law.justia.com/codes/oklahoma/title-36/section-36-1435-7/ |
| Pre-licensing education | No formal requirement in Oklahoma; course recommended | B: https://www.xcelsolutions.com/oklahoma/insurance-license/requirements (statute text says "where required by the Commissioner") |
| Exam | Pearson VUE; combined P&C is 155 Qs (150 scored), 2.5 h, 70% to pass; separate Property or Casualty exams are 80 Qs, 2 h. Fee $38 (cut from $41 on 2024-08-01) | B: https://staterequirement.com/insurance-license-exam/oklahoma-insurance-license-exam/ |
| Licence application | Via NIPR; state fee $60 plus ~$5.60 transaction fee; first-time applicants upload a colour copy of OK driver licence/ID; app held 7 days for documents; exams valid 2 years | A: https://nipr.com/licensing-center/state-requirements/oklahoma-resident-licensing-individual |
| Fingerprints/background | Not confirmed in sources fetched; expect a background check and possibly fingerprints | D |
| Timeline | Study 1-3 weeks, exam booking days, NIPR issuance typically days to ~2 weeks. Realistic: 3-6 weeks start to licence | D (estimate) |
| Lines | Take Property & Casualty (combined). Personal lines is all that is needed at launch | D |
| CE | Not due at first issue; applies on renewal (OK is 24-month cycle, hours to be confirmed) | D |

Elliot is a student with no professional licences, but there is no barrier here: no experience or education prerequisite. He should be the first licensed producer and the Designated Responsible Licensed Producer (DRLP) for the entity, or hire a licensed DRLP.

### 1.2 Agency (business entity) licence
- All business entities (LLC, corp, partnership) selling, soliciting or negotiating in the entity name must hold a producer licence. A = https://www.oid.ok.gov/licensing-and-education/agency-business-entities/
- Needs at least one DRLP holding an active OK licence with the same lines of authority; the DRLP is responsible for the whole agency's compliance. A (same source).
- Fees: $60 resident entity new/renewal plus $20 organisational-document filing fee; requires FEIN and certified copy of Articles of Organization/Incorporation. A/B (same source).
- Practical: form an Oklahoma LLC first (about $100 filing, D), get an EIN (free), then apply through NIPR. Timeline about 1-2 weeks after the individual licence exists. D.

### 1.3 E&O insurance
- New agency typically $1,200-$3,500/yr; solo personal-lines agent roughly $500-$1,200 up to $1,200-$2,500 at $1M limits; 5-10 agent shops $3,500-$8,500 at $2M/$2M. C/B: https://www.techinsurance.com/errors-omissions-insurance/cost and https://www.launchadvisor.co/guides/eo-insurance-new-agents-insurance-agency
- Carriers and aggregators usually require E&O ($1M/$1M) as a condition of appointment. Aggregators often offer group E&O. C.
- Budget $1,500-$2,500 year one. Consider a technology E&O/cyber rider if the app collects roof data, since the agency is giving advice on a verified-data product. D.

### 1.4 Non-resident licences (TX, KS, etc.)
- Oklahoma resident licence is the base; non-resident licences are processed through NIPR using home-state licence in good standing (reciprocity). Fees roughly $50-$100 per state, no new exam typically for a P&C licence in good standing. D (general NIPR/NAIC reciprocity knowledge; not verified per state here). Each state also needs an entity non-resident licence if the entity sells there. D.
- Texas: TDI licences are via TDI/NIPR. Texas also requires the appointing carrier appointment for P&C agents (Ins. Code 4001.201; 28 TAC 19.905). B: search result for TDI.
- Sequence: do not get TX/KS until OK book exists; first need carrier appointments covering those states (see section 2).

### 1.5 What an unlicensed person may and may not do
- Licence not needed for officers, directors or employees whose activities are executive, administrative, managerial, clerical, only indirectly related to sale/solicitation/negotiation, and who receive no commission. A: 36 O.S. 1435.5, via search result https://ok.elaws.us/os/36-1435.5
- OID guidance: receiving requests for coverage for transmittal to a licensed producer, or processing via an automated system developed and maintained under supervision of an insurer or licensed producer, is clerical. B/A (search summary of OID guidance; confirm the primary text).
- Practical rule for the app: an app that collects property facts and routes the lead to the licensed founder is clerical. An app or unlicensed employee that discusses coverage options, recommends a carrier, quotes premium or explains coverage differences is likely "solicit/negotiate" territory and needs a licensed producer on that interaction. Quote engines are normally operated under a licensed producer's supervision. D (inference; get written regulatory counsel opinion before launching a self-serve quote flow).
- Commission to an unlicensed person for selling/soliciting/negotiating is prohibited for insurers and producers. A: 36 O.S. 1435.14, https://law.justia.com/codes/oklahoma/2016/title-36/section-36-1435.14/

### 1.6 Anti-rebating, gifts, and referral fees (critical for the roofer channel)
- 36 O.S. 1204(8): no rebate of premium, special favour, or "any valuable consideration or inducement whatever not specified in the contract" as inducement to buy, except per approved rate filings. A: https://law.justia.com/codes/oklahoma/title-36/section-1204/ and OID Bulletin 2025-01 https://www.oid.ok.gov/bulletin-no-2025-01/ (which prohibits returning commissions to insureds, directly or indirectly; the bulletin does NOT state a gift value limit or referral safe harbour).
- Consequences:
  1. The agency cannot give customers a rebate, cashback, free roof inspection tied to purchase, gift cards, or similar as an inducement. "Free" FORTIFIED consulting or roof verification must be genuinely independent of purchasing a policy, or must be legally reviewed. D.
  2. A roofer who is not licensed cannot be paid per policy sold or per bound policy (1435.14). A flat, bona fide marketing or lead fee that is not contingent on sale may be defensible in some states, but Oklahoma's position is unconfirmed. D: ask OID Legal or counsel. Safest design: (a) roofer gives homeowner a link; no payment tied to a policy; (b) pay roofers for something unrelated and fair-market (e.g., co-marketing, paying them for verification work they actually perform such as a roof-condition report), not contingent on policy; or (c) licensed roofer-affiliated producer arrangement.
  3. The roofer is not allowed to discuss coverage or pricing. They should say only "our partner is a licensed agency."
  4. Roofers paying homeowners' deductibles is a separate issue (OK law on contractor deductible rebates, 36 O.S./ 59 O.S. contractor rules; not researched here): do not partner with any roofer that does this. D.
- Gifts to roofers (non-customers) are not rebates, but gifts to referral sources that are really commissions can be construed as paying unlicensed persons. Keep nominal and not tied to volume. D.
- The grant (Strengthen Oklahoma Homes, up to $10,000) is state-run and applications are via OID; the agency may help homeowners apply as a free public-service guide but must not charge for it or make it conditional on buying insurance. D.

### 1.7 MGA licensing
- Oklahoma: a managing general agent is an individual or entity appointed by insurers with authority to appoint producers and supervise the insurer's business in-state. A/B search summary of Oklahoma statute and OAC (OID licensing). The NIPR OK page lists MGA among licence classes where exam is NOT required. A: https://nipr.com/licensing-center/state-requirements/oklahoma-resident-licensing-individual. The exact MGA Act citation was not verified (D); locate the current section in Title 36 (Art. 14A producer licensing and the MGA provisions) before relying on "36 O.S. 1451".
- An MGA in OK still needs a producer licence plus MGA licence; fee in the $60 range per NIPR (not confirmed for MGA specifically). D.
- Texas: Insurance Code Chapter 4053 governs managing general agents; it requires MGA licensing, plus contract and oversight requirements; P&C agents and surplus lines agents must be appointed with the MGA or insurer issuing the policy. B: https://texas.public.law/statutes/tex._ins._code_title_13_subtitle_b_chapter_4053
- Typical market practice: E&O of $250K or 25% of prior-year DWP (whichever greater) and a surety bond around $50K or 10% of premium handled, state-dependent. C: https://insillion.com/blog/mga-insurance-model-risk-capacity-basics. D for Oklahoma/Texas specifics.

---

## 2. CARRIER ACCESS

### 2.1 How a brand-new agency gets appointments
- Direct appointments typically want a minimum written premium (commonly $100K-$500K per carrier) and often prior production history. A new agency cannot hit that in year one. C: https://insuranceproagencies.com/insurance-aggregators-comparison-2026 and https://openly.com/the-open-door/articles/how-to-get-appointed-with-insurance-carriers
- Exceptions: insurtech or growth carriers such as Openly, which accepts agency appointment requests through its website, review of agency information and eligibility, then onboarding. A/C: https://openly.com/agents (Openly lists Oklahoma agency partners such as Comma Insurance in Oklahoma City and Phillips Insurance in El Reno).
- Aggregators and networks provide appointments quickly (Smart Choice advertises 24-hour access via Express Markets). C: https://www.smartchoiceagents.com/

### 2.2 Aggregators/networks (verified facts are limited; marketing-sourced)
| Network | What search showed | Label |
|---|---|---|
| SIAA | Alliance of 4,500+ members; claims it is not an aggregator and members with direct appointments get commission from the writing company directly | C: https://www.siaa.com/faqs/ |
| Smart Choice | Express appointments; stops taking commission percentage once a threshold is reached | C |
| Renaissance (and Agency Network Exchange, acquired by Renaissance Alliance Jan 2022) | Independent-agency network with tech products | C: https://www.renaissanceins.com/independent-agents/ |
| Iroquois Group | No up-front fees; members remain independent | C |
| Insurance Pro Agencies (hybrid) | 80/20 start then flat fee with 100% commissions | C |
| Evolve, Reliance Partners | Not researched in this pass | D |
- Typical economics: 80-90% to agency, 10-20% to aggregator, or 2-4 points of commission (e.g., 12% carrier commission, you keep ~9%). Homeowners new business commission 12-20%, renewal 10-15%. C: https://insuranceproagencies.com/the-best-insurance-agency-aggregator and https://insifter.com/commission-benchmarks.html
- Recommendation: join one aggregator for breadth in first 90 days (Smart Choice or SIAA: fast, low fee); revisit direct appointments for the 2-3 carriers that work best once premium hits about $250K+ with that carrier. Compare E&O group coverage, contract exit terms (who owns the book, contingent/profit-sharing rights, "sub-producer" status). D.

### 2.3 Wholesale/E&S for hard-to-place roofs
- Old roofs in hail territory commonly go to surplus lines/E&S via a wholesale broker; surplus lines licensing is a separate Oklahoma licence class for those placing directly. NIPR lists Surplus Lines Broker as a class that needs no exam. A (NIPR page). Practical path: use a wholesaler (e.g., Amwins/CRC/Brownyard-type shops) via the aggregator or by direct wholesale appointment. Specific wholesalers and commission not researched. D.

### 2.4 Which carriers write OK homeowners through independent agents (evidence is thin; confirm appetite by carrier portal/aggregator)
| Carrier | Evidence | Label |
|---|---|---|
| Openly | Writes in OK; agent appointments direct | B/C (openly.com/agents) |
| Safeco, Travelers, Progressive, Liberty Mutual, Mercury, Foremost, NatGen (National General), AAA | Named as markets by OK independent agencies (Zoellner Insurance, OKC Insurance Brokers) | C: https://zoellnerinsurance.com/insurance-agency-in-broken-arrow-ok/ and https://okcinsurancebrokers.com/home-auto-insurance/ |
| Branch | Listed as available through Smart Choice; Oklahoma homeowners availability NOT confirmed | C/D |
| Nationwide, Hippo, Kin, American Modern, Germania, National Security Fire & Casualty | Not verified in this pass | D |
| Oklahoma Farm Bureau, Shelter, State Farm | Captive carriers; an independent agency cannot place with them | D (well known; not sourced here) |
- Note: carriers adjust Oklahoma roof appetite constantly; a premium offering is "verified roof data gets your client into a better tier at 2-4 markets", so the first discussions should be with market managers at Openly, Safeco, Travelers and Foremost (underwriting leaders), asking if they would give a roof-verification credit or pre-approved appetite for FORTIFIED/new roofs. D.
- State law: Oklahoma requires carriers to apply FORTIFIED discounts of up to 42% on the wind/hail portion of premium after certification; average saving $749/year per OID. A/B: https://www.insurancejournal.com/news/southcentral/2026/01/13/854151.htm and https://www.oid.ok.gov/release_011226/. This is the core economic hook and applies to all admitted carriers.
- Grant context: Strengthen Oklahoma Homes grants up to $10,000 for FORTIFIED Roof (High Wind and Hail), homestead exemption required, income tiers, first-come; first quarter filled quickly, next rounds opened (e.g., July 13, 2026). A: https://www.oid.ok.gov/release_031226/ and https://www.oid.ok.gov/release_071026/

---

## 3. TECHNOLOGY

### 3.1 Landscape (pricing from search)
| Category | Options | Cost signal | Label |
|---|---|---|---|
| AMS/CRM | HawkSoft ($85-$100/user/mo), AgencyZoom (from $99/mo), EZLynx (~$350/mo base incl. rater; $400-$600 typical), Applied Epic ($150-$200+/user/mo plus implementation) | small agency under $600/mo | B/C: https://www.quotesweep.com/blog/ams-comparison-2026 |
| Comparative rater | EZLynx (built in), Zywave/QuoteRUSH, Bold Penguin, Semsee, Gaya | Not priced in this pass; EZLynx bundle is the default | C/D |
| Carrier APIs | Openly (quoting API/portal for agents), Branch (embedded/API partner model) | Access not verified | D |
| Property data (roof age/condition) | CAPE Analytics (Roof Age and Roof Condition Rating; RCR approved for ratemaking in 39+ states), Nearmap (Roof Age API; Roof Assessment launched Feb 2026), Cotality, Verisk, Regrid (parcel), BuildFax/permit data | Enterprise contracts; expect custom pricing, typically a minimum commitment. Not publicly priced | B/C: https://capeanalytics.com/roof-age/ and https://developer.nearmap.com/docs/roof-age-api |
| FORTIFIED verification | IBHS public FORTIFIED address lookup (designations last 5 years) | Free lookup; bulk/API access needs IBHS/FORTIFIED partnership. Not verified | B: https://ibhs.org/fortified-database/ |
| Capture | iPhone camera with EXIF/GPS plus optional drone; RoomPlan (LiDAR) is interior only | Low | D |
| E-sign, compliance logging | DocuSign/Dropbox Sign or AMS-native e-sign; own audit table | Low | D |

### 3.2 BUILD vs BUY vs MANUAL (first 90 days)
- BUY: AMS+rater (EZLynx or HawkSoft + carrier portals), E&O, aggregator appointments, e-sign, email/SMS compliance tooling, website hosting.
- MANUAL (concierge): roof assessment per lead using free tools (Google Earth historical imagery, county assessor, OKC/Tulsa permit portals, homeowner photos), quoting through carrier portals/rater by Elliot, FORTIFIED status via IBHS address lookup, grant-application help by checklist.
- BUILD (his edge, small): (a) iOS capture app that guides the homeowner or roofer to take required roof photos, stores EXIF/GPS/timestamp, and uploads; (b) a roof evidence record (photos, age evidence, FORTIFIED status, permit link) as a shareable PDF/web report for carriers; (c) intake web form (Next.js) that routes to the licensed producer; (d) lightweight compliance log (who was told what, when).
- DEFER until revenue: paid CAPE/Nearmap contracts (use pay-per-lookup or pilot only if offered), custom rater, AI quoting agent, carrier API integrations.

### 3.3 MVP architecture
```
Homeowner / roofer
  -> Next.js web (Vercel): intake, report viewer, consent + disclosures
  -> SwiftUI iOS app: guided roof photo capture (AVFoundation), EXIF/GPS, offline queue, upload
Backend (Supabase: Postgres + Auth + Storage + Edge Functions)
  - tables: leads, properties, roof_evidence, fortified_status, consents, audit_log
  - jobs: IBHS lookup (manual at first), permit/assessor lookups, report PDF generation
  - webhook -> AMS/CRM (HawkSoft or EZLynx/AgencyZoom) for the licensed producer
Licensed producer (Elliot) quotes in rater/carrier portals -> e-signature in AMS/DocuSign -> bind
Compliance: audit_log for every disclosure and who spoke; retention policy; privacy notice; no unlicensed quoting in the app
```
- Estimated 90-day cash costs: AMS+rater $350-$600/mo; E&O $1.5-2.5K/yr; Apple developer $99/yr; Vercel/Supabase $0-$100/mo; domain/email $50-$300; licences about $200; e-sign $10-$30/mo; aggregator fees via commission split; optional property data pilot $0 to a few thousand. Total about $3K-$6K for the first 90 days, excluding Elliot's time. D (estimate built from sourced price points above).
- Elliot can build the iOS app and web frontend; the main learning curve is insurance operations, not code.

---

## 4. MGA PHASE
Required elements (B/C sources, https://insillion.com/blog/how-to-launch-a-start-up-mga-strategy-distribution, https://www.ajg.com/gallagherre/-/media/files/gallagher/gallagherre/2024/north-america-mga-market-fronting-carrier-counterparties-2023.pdf):
1. MGA and producer licences per state (OK, TX), E&O (greater of $250K or 25% prior DWP) and surety bond (about $50K or 10% premiums), per a general guide. D for OK/TX specifics.
2. Fronting/paper carrier with a program/binding authority agreement (managing general agency agreement and binder). Fronting carriers lean heavily on third-party quota-share reinsurance; fronting fee is a percent of GWP.
3. Reinsurance capacity (quota share typical) from reinsurers/capital providers; they will want underwriting data, loss history and, for a new roof-verification thesis, evidence that verified roofs reduce hail losses. IBHS research is the main external support (not reviewed in this pass). D.
4. Actuarial rate and form filing: admitted programs need filing (can take up to 12 months in some states); surplus lines or a non-admitted structure avoids filing but changes distribution. B/C source says start-up MGAs should expect 12-24 months; carrier onboarding adds 8-12 weeks.
5. Claims handling: TPA or carrier claims; hail claims surge needs CAT capacity.
6. Capital/cost: roughly $550K-$1.6M to launch, around $1.5M to get through launch period. C: https://insurnest.com/blog/pet-insurance-mga-launch-timeline-phases/ (pet-insurance-specific, directional). For an MGA, risk capital is mostly the capacity provider's, but expect the carrier to require collateral/funds-withheld or performance triggers. D.
7. Roles to hire: Chief underwriting officer (property cat experience), pricing actuary (contractor then employee), compliance/regulatory lead, claims manager/TPA oversight, finance/reinsurance accounting, head of distribution, CTO/data lead. Elliot becomes CEO/product, not underwriter. D.
- Founder fit: cannot raise large capital before revenue; MGA is year 2-4, financed by agency book data, outside capital, and a carrier partner. Strongest early MGA signal: an agency book with FORTIFIED/verified-roof policies and loss data over at least one hail season.

---

## 5. AI STRATEGY LAYERS
| Layer | Commodity / owned? | Notes |
|---|---|---|
| Foundation models, OCR, vision APIs | Commodity | Rent. Do not train models. |
| Application layer (chat intake, photo QA, document summarisation) | Mostly commodity | Differentiates only through UX and trust; Elliot's design strength helps but copyable. |
| Proprietary data | Potential moat | Verified-roof records (photo evidence, age, FORTIFIED status, claims outcomes) linked to policies; carrier-loss feedback. Only moat if collected at scale and carriers/reinsurers value it. CAPE/Nearmap already sell aerial roof data, so the unique piece is ground-truth, claims-linked data. D. |
| Workflow | Moderate | Making roof upgrade to FORTIFIED to grant to discount to policy one flow (checklist, roofer coordination, grant application help, policy re-shop). Sticky once built. |
| Distribution | Strong early moat | Roofer/FORTIFIED-evaluator partnerships, grant-program mindshare, trust brand (founder voice). Anti-rebating rules constrain how roofers are paid, so channel economics must be designed carefully. |
| Moat (long-term) | MGA with proprietary underwriting on verified resilient roofs | Combines data + capacity + regulatory approval; the hardest to replicate. |
- Regulatory note: use of AI/external data in underwriting and rating is under state regulatory scrutiny; keep AI out of coverage advice until a licensed producer reviews. D.

---

## TIMELINE (realistic, one founder part-time)
| Weeks | Milestone |
|---|---|
| 0-1 | Form LLC, EIN, buy P&C prep course, book Pearson VUE |
| 2-4 | Pass exam, NIPR individual licence (~$60 plus fees) |
| 3-6 | Entity licence (DRLP = Elliot, $60 plus $20), E&O bound |
| 4-8 | Aggregator contract, first appointments (24 h to few weeks after contract, per vendor claims), Openly direct request in parallel |
| 6-10 | AMS/rater live, first quotes via manual roof workflow; first policies bound |
| 10-13 | Roofer/evaluator pilot, TX/KS non-resident licences only if carriers and demand justify |
| Month 12+ | Book at $250K+ premium: direct appointments. Month 18-36: MGA feasibility with fronting carrier |

## THREE BIGGEST OPERATIONAL BOTTLENECKS
1. Carrier appetite and appointments for hail-exposed Oklahoma roofs (new agency lacks premium volume; carriers restrict older roofs; aggregator splits compress margin).
2. Compliance design of the roofer referral channel and "free" services (anti-rebating plus no commissions to unlicensed persons) with no confirmed safe harbour; needs a counsel/OID opinion before launch.
3. Roof evidence that carriers will actually credit: independent verification, FORTIFIED lookup/bulk data access, and grant timing (funds first-come, quickly exhausted) – plus founder time as the sole licensed producer.

## OPEN ITEMS TO CONFIRM
OK MGA statute citation and fees; OK fingerprint requirement; TX/KS non-resident fees; Branch/Kin/Germania/Nationwide OK homeowners appetite; Evolve/Reliance terms; IBHS bulk access; CAPE/Nearmap pricing; OID view on flat lead fees to roofers.
