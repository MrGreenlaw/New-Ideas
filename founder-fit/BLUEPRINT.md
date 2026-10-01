# Redbud — Founder-Fit Venture Blueprint

*Prepared for Elliot Greenlaw · 1 October 2026 · branch `claude/founder-fit-venture`*

Evidence grades: **A** directly verified · **B** strongly supported · **C** reasonable inference · **D** speculative.
Anything about customers is **UNVALIDATED** until the 30-day plan runs. Customer "voices" in the research are simulations.

---

## How we got here (one paragraph)

Thirty Sonnet analysts worked independently across four rounds: five landscape lenses, round-by-round market, customer, technical, VC, business-model and killer roles, and a blind second sweep. Together they generated about 60 candidates. They killed or shelved every app-shaped idea that fits Elliot's skills, because each was small, crowded, or had nobody paying: roof records, instant quotes, school-choice reconciliation, an OTD-style audit for credit unions, a trades talent pipeline, and LiDAR tools. The one payer that survived every attack is the **homeowners insurance commission** in storm country. Oklahoma homeowners pay about **$5,378 a year, fourth-highest in the US** (A, LendingTree 2026), and across eight hail-belt states homeowners premium totals **$36.6B** (A, NAIC 2024). A blind second-sweep analyst, never told about insurance, independently ranked a trust-first Oklahoma insurance agency as its best bet. Along the way the research disproved several of my own favourite assumptions. Oklahoma's roof-age bill died; the FORTIFIED discount is mandated for every carrier, so it differentiates no one; there is no hail-specific FORTIFIED loss evidence; and Oklahoma law blunts post-claim switching. The thesis below is what is left after those cuts. **It is a strong small business with a venture option, not a proven $10B company**, and it is offered on those terms. Full trail: `01_…` to `04_…` and `research/`.

---

## EXECUTIVE SUMMARY

**Redbud is an honest, licensed, independent homeowners-and-auto insurance agency for storm country, starting in Edmond and Oklahoma City.** Its wedge is the **renewal shock**, the moment each year when an Oklahoma family opens a renewal notice and sees their premium jump. Redbud reads the policy and shows it in plain dollars. It shows the wind and hail deductible as a dollar figure, explains how the roof is covered, and says why the price moved. A licensed agent then re-shops the policy across the carriers Redbud can access and gives a straight "stay or switch" recommendation. The homeowner pays nothing; carriers pay Redbud a commission of roughly 12–15% in the first year and 8–12% on renewals (B/C), about **$400–650 per household per year** after aggregator splits (C).

**Why Elliot.** He already built OTD, an app whose whole idea is "show people the true all-in cost so nobody gets pressured". Redbud is that instinct applied to the largest recurring household bill in Oklahoma after the mortgage. His design craft matters in a category where documents are unreadable and the incumbents sell through captive agents with quotas. He is local, the licence is exam-only and takes about four weeks (A), and the brand promise, *"we'll tell you the truth even when it doesn't pay us,"* is his own value of "trust over pressure" written as a business rule.

**Why now.** Oklahoma premiums have risen sharply and sit around 2–3x the national average by some measures (B). Severe-storm insured losses have topped $50B for three straight years (A). Carrier appetite for older roofs is narrowing (C). Oklahoma moves to prior-approval rate review on 1 July 2027 (HB 3781, A). AI document extraction has also become cheap and accurate enough to turn a photo of a declarations page into structured data in seconds (B).

**The honest ceiling.** The base-case model (`model/output.md`) gives about **$2.2M revenue in year 5 and profitability from year 4**: a good business. A venture-funded, three-state version reaches about **$15M+** in year 5. Multi-billion-dollar enterprise value would require either about **$250M+ revenue**, Goosehead scale, or a later **MGA/reciprocal layer**, as Neptune and Porch built. The research found no evidence yet that would justify that layer. The final VC analyst puts the success-case value at **$350–550M** and calls $10B "not conceivable for an agency". I agree.

**What happens next.** A ~$300, ~40-hour, 30-day test settles the crux: *how often can a brand-new independent agency materially beat a renewal-shock homeowner's current policy, and can it get carriers at all?* Pre-registered kill criteria are below. If the test fails, Elliot keeps a P&C licence and a clear answer, and moves to the pre-registered fallback.

---

## THE COMPANY

- **Name:** Redbud (working name; trademark and domain not yet cleared). The redbud is Oklahoma's state tree and blooms in early spring, at the start of storm season.
- **One sentence:** Redbud reads your home insurance in plain dollars, re-shops it every renewal, and tells you the truth, even when the truth is "stay where you are."
- **One paragraph:** Redbud is a licensed independent agency for homeowners in America's hail belt. A family photographs their policy. Redbud's software extracts the numbers, and a licensed agent explains them in dollars, compares every carrier Redbud can reach, and gives an honest recommendation. Redbud then watches the policy every year before renewal. It earns standard carrier commissions and never charges the homeowner. Over time, every placed home teaches Redbud which carriers will take which homes at which prices. That placement intelligence lowers the cost of each new household and raises the hit rate, and it becomes the company's core asset.
- **Long-term vision:** *the household risk advisor for storm country.* Home, auto, umbrella, flood and roof are handled by one honest relationship across the eight hail-belt states. If, and only if, Redbud's own loss data proves its homes outperform, Redbud adds an underwriting layer (MGA or reciprocal exchange) for verified, well-roofed homes.

---

## THE PROBLEM

- **Who has it:** about 1.03M owner-occupied Oklahoma households (B, via `research/W3_new_roof_moment.md`) and roughly 15.3M across eight hail-belt states (C).
- **How painful:** Oklahoma's average premium is about $5,378 a year, fourth-highest in the US (A). One cited case shows a deductible rising tenfold, from $900 to about $10,000 (B). Roof age gates access to coverage (B/C). Wind and hail deductibles are expressed as 1–5% of dwelling coverage, so most homeowners do not know their deductible in dollars (C; tested in E2).
- **What it costs:** often $1–3k a year of increases per household (C). Coverage gaps that surface only after a hailstorm cost far more (C).
- **How it's solved today:** homeowners accept the renewal, call their captive agent (who can only offer one carrier), or fill in one online quote. About 6.8% shop in a year and about 2.2% switch (J.D. Power via secondary source; B).
- **Why current solutions fail:** captive agents (State Farm, Allstate, Farmers and similar, roughly 60% of Oklahoma; B) cannot compare carriers. Online comparison sites sell leads to the highest bidder and generate calls, not answers. Independent agents are good but busy; their intake is a phone call and a PDF, and they rarely re-shop proactively (C). Nobody shows the homeowner the bill in plain dollars.

---

## THE INSIGHT

1. **In storm country the insurance bill, not the roof, is where the money and the pain meet.** Every roof-, contractor- and data-shaped idea we tested died because nobody paid. The insurance commission is a payer that already exists, recurs, and is indexed to premium inflation.
2. **Honesty is the product, not the marketing.** An agent who visibly recommends "stay" when staying is right earns referrals that paid leads cannot buy. In a market of captive quotas and lead auctions, a public "told them to stay" rate is a differentiator incumbents are structurally unable to copy.
3. **The declarations page is the API.** Every household already holds a standardised document describing its risk and price. Turning that photo into structured data is now cheap (B), and it lets one licensed human advise many more households than a phone-and-PDF agency.
4. **Placement knowledge compounds.** Which carrier takes a 14-year-old roof in Edmond, at what price, this month, changes constantly and lives in individual agents' heads. Capturing it across thousands of placements is the only moat the research found plausible (C/D; it becomes meaningful only around 1,000+ binds a year).

*Why hasn't this become obvious?* Because it is boring, licensed and local. Insurtechs went national with paid acquisition and burned out (C). Local agents rarely have product and design talent. The combination of a licensed local operator and real product craft is uncommon, and Oklahoma's premium crisis is only a few years old.

---

## WHY NOW

| Change | Evidence | Grade |
|---|---|---|
| Oklahoma premiums among the highest in the US and rising | ~$5,378/yr, 4th highest (LendingTree 2026) | A |
| Severe-storm losses structurally higher | >$50B insured SCS losses three years running (Triple-I) | A |
| Hail exposure extreme | 49.7% of OK roofs hit by severe hail in four years; average roof replacement $17,631 (OID/Verisk) | A |
| Regulatory change | HB 3781: prior-approval rate review from 1 July 2027 | A |
| Carrier behaviour | Roof-age restrictions, ACV roof schedules (ZestyAI analysis says ~85% of OK carriers use ACV schedules) | C |
| Consumer-protection attention | OK AG suits against State Farm and Allstate over hail claims (2026) | A/B |
| Technology | Phone document capture + LLM extraction makes dec-page parsing cheap and fast | B |
| Mitigation incentives | FORTIFIED discount mandated (36 O.S. §961–962), $10k Strengthen Oklahoma Homes grants; TDI Bulletin B-0008-26 (16 Sept 2026) pushes FORTIFIED into Texas rating | A |

*Could this have been built ten years ago?* The agency could have, and many were. What has changed is the size of the pain in Oklahoma, which turned a sleepy, loyal market into an anxious one, and the cost of the software leverage. That is enough for a better agency, not a new category. We say so plainly.

---

## PRODUCT

### Initial product: "Renewal Check"
1. **Snap.** The homeowner photographs the declarations page and renewal notice (iOS document scanner, or upload on the web).
2. **Read.** Software drafts the extraction: carrier, premium and change, Coverage A–F, all deductibles with **wind/hail converted to dollars**, roof settlement (ACV or RCV), and notable endorsements. A licensed human verifies every field before anything is shown.
3. **Explain.** A one-page plain-dollar summary, for example *"If hail damages your roof, you pay the first $7,000,"* with a premium history and questions to consider. Advice-like statements appear only after licensed review.
4. **Compare.** A licensed agent quotes across appointed carriers through an aggregator and direct appointments, using a commercial rater.
5. **Recommend.** A plain recommendation: **stay** (with why), **switch** (with exact trade-offs), or **fix** (for example, ask your current carrier to update your roof year).
6. **Watch.** With opt-in, Redbud re-checks 60 days before every renewal.

### User experience (v1 screens)
- *Home:* "Your home insurance, in plain dollars." One button: **Check my policy**.
- *Summary card:* premium this year versus last; the deductible you'd actually pay after a hailstorm; roof covered at replacement cost or depreciated value; three plain questions.
- *Recommendation:* the agent's photo, name and licence number; "We recommend you stay. Here's why." or "Option B saves $1,140 a year with the same coverage, except…"
- *Trust strip:* "We're paid by insurers only if you switch. We tell you to stay about X% of the time." This is the public trust KPI.

v0 (days 1–30) is entirely concierge: an intake form, hand-made summaries, and a licensed partner agent quoting. See `execution/05-mvp-spec.md`.

---

## INITIAL CUSTOMER

**An Edmond or North Oklahoma City homeowner household in a home built 1995–2015, whose most recent renewal rose 15% or more, who has not successfully re-shopped, and who is reachable through a warm local connection.** The household decision-maker is 35–60, with combined premium around $4–7k and often a 1–2% wind/hail deductible they cannot state in dollars. Their trigger is the renewal notice 30–60 days before expiry. Their objection is "agents are salesmen" or "I've been with my carrier twenty years". The second wedge, home buyers at closing reached via realtors and loan officers, follows once the first works. The detailed archetypes are in `execution/06-first-100-and-first-10.md`.

---

## BUSINESS MODEL

- **Revenue:** carrier commissions, about 12–15% of homeowners premium in year one and 8–12% on renewal, with auto at a little less (B/C). Contingent profit-sharing bonuses from carriers are upside and are not modelled.
- **Free to the homeowner.** An "advocacy fee" was considered and deferred: Oklahoma rules on P&C broker fees need counsel review (36 O.S. §3623.1 covers disclosed policy fees; legality for this use is unknown, D).
- **No referral payments** to realtors or roofers tied to sales (36 O.S. §1204(8) anti-rebating; §1435.14 bars commissions to unlicensed persons; A).
- **Per-household economics** (base, `research/W4_business_model.md` and `model/`): year-one contribution about $410 home-only and $530 bundled; renewal contribution about $340–430; LTV about $1.6k at 85% retention home-only and about $2.4k at 90% bundled; payback 5–10 months from organic and partner channels, 13–17 months from paid leads (all C/D until measured).
- **Later revenue (gated):** MGA commissions and fees, typically a larger share of premium than agency commission (C), only if Redbud's own loss data justifies it.

---

## MARKET

**Top-down (sanity check):**
- **TAM:** 8-state homeowners premium $36.6B (A) × ~11% blended commission ≈ **$4.0B a year** of homeowners commission across all channels (C). Auto adds a comparable pool (not sized; D).
- **SAM:** the independent-channel share (C) of homeowners in OK, TX and KS that are reachable within three years, ≈ **$150–400M a year** of commission (VC estimate; C/D).
- **SOM (Oklahoma, year 3):** about **$0.4–0.7M** revenue (market analyst ≈ $0.4M; base model $0.72M; C/D).

**Bottom-up (the one we plan with):** households in force × revenue per household.
- Year 3 base: 1,109 households × ~$650 premium-weighted revenue ≈ **$0.72M** (model).
- Year 5 base: 3,001 households ≈ **$2.19M**. Year 5 aggressive (three states, funded): 19,949 households ≈ **$15.8M**.

The market is not the constraint. **CAC, carrier access and the better-option rate are.**

---

## COMPETITION

| Type | Who | Strength | Weakness Redbud exploits |
|---|---|---|---|
| Captive carriers/agents | State Farm, Allstate, Farmers, Oklahoma Farm Bureau, Shelter (~60% of OK; B) | Brand, local agents, bundling | One carrier; quota culture; cannot recommend a competitor |
| Independent agencies | Hundreds of local OK agencies | Carrier menus, relationships | Phone/PDF intake, little proactive re-shopping, weak design (C) |
| Franchise agency | Goosehead (2025 revenue ~$365M; 86% retention; franchises in OK; A/B) | Service centre, scale | Franchisee sales culture varies; not local-first in OK |
| Digital agencies / comparison | Policygenius (sold to Zinnia), Gabi (Experian), Matic (mortgage-embedded), Insurify, EverQuote/MediaAlpha lead sellers | Reach, funding | Lead auctions and call spam; no local trust; mixed outcomes (B/C) |
| Insurtech carriers/MGAs | Openly (agent-only), Hippo, Kin, Branch, Porch reciprocal | Product, tech | Many are carriers, so potential *partners* for Redbud, not competitors |
| Substitutes | Doing nothing; calling the current carrier; FORTIFIED retrofit; raising the deductible | Free | Doesn't solve understanding or ongoing re-shopping |
| Internal solutions | Realtors and lenders with a go-to agent | Habit | Speed and clarity at closing are the wedge |

**Strategic differentiation:** honesty as a measurable operating rule (the "told them to stay" rate), plain-dollar explanation, proactive yearly re-shopping, and product-grade intake that lets each licensed person serve more households. None of these alone is a moat. Together they make a local brand that is hard to copy for anyone whose incentives require selling one carrier.

---

## MOAT

Honestly: **there is none on day one.** What can form, and when:
1. **Book stickiness** (year 1+): renewals retained at roughly 85–90% are recurring revenue that compounds (B).
2. **Referral network** (years 1–2): realtors, loan officers and, carefully, roofers who send people because the experience reflects well on them.
3. **Brand trust** (years 1–3): a published "told them to stay" rate and transparent pay. Incumbents with quotas cannot match it without changing their economics.
4. **Placement intelligence** (years 3–5, at ~1,000+ binds a year): structured data on which carrier accepts which home at what price. This lowers quoting time and CAC and raises bind rates. It is the first real data moat (C/D).
5. **Underwriting layer** (year 5+, gated): an MGA or reciprocal for verified homes, if loss data supports it. This is where Neptune's and Porch's valuations come from (A).

Weak moats we explicitly reject: "first mover", "AI", and "better UX" on their own.

---

## GO-TO-MARKET

- **First 10:** warm households from the 30 research interviews who asked for help, met in person, with a printed plain-dollar summary (`execution/06`).
- **First 100:** neighbourhood groups and a church-community education evening (education only, no selling at the event, sign-ups for follow-up); a strong local explainer page, "Why did my Oklahoma home insurance go up?"; 3–8 realtors and loan officers for closings; and referrals from the first 10.
- **First 1,000:** a second licensed producer focused on the realtor and lender channel; renewal-season content each spring; a home-buyer checklist co-branded with lenders (no fees); and a carefully designed, counsel-approved roofer "new-roof review". Auto bundling raises revenue per household and retention.
- **First 10,000:** Tulsa, then Texas (DFW suburbs) and Kansas (Wichita), using the same playbook. A service centre of licensed CSRs is run on Redbud software, and placement intelligence lowers the cost per bind.
- **How distribution gets cheaper with scale:** referrals from retained households, partner networks that compound, a brand that appears in local news every storm season, and placement data that raises bind rates (C).

---

## MVP

The smallest experiment that proves people will pay (via commission) is **concierge**: a landing page, an intake form, hand-made plain-dollar summaries, and 20 real re-shops through a licensed partner agent while Elliot earns his licence. There is no app until 30 files have been done by hand and the bind rate is known. Full spec, manual-versus-automated split, costs (~$3–6k in the first 100 days) and success metrics: `execution/05-mvp-spec.md`.

---

## TECHNICAL ARCHITECTURE

- **Clients:** SwiftUI iOS app with VisionKit document capture; Next.js responsive web.
- **Backend:** Postgres with row-level security, encrypted object storage, auth, audit log (Supabase or equivalent).
- **Extraction:** OCR plus a frontier LLM with a strict JSON schema, every field human-verified. The model is a **commodity layer**: swappable, and customer data is not used for training.
- **Agent console:** file queue, extracted data, notes, recommendation templates, rater hand-off, bind status, compliance log.
- **Bought, not built:** agency management system and comparative rater (EZLynx or HawkSoft class), e-sign, aggregator carrier portals, E&O.
- **Existential dependencies:** carrier access through an aggregator (mitigate by obtaining direct appointments at ~$100–500k premium per carrier; B/C); aggregator book-ownership terms (read before signing; this is a one-way door); LLM providers (low risk, swappable).
- **AI strategy layers:** commodity (OCR/LLM) · application (dec-page schema, deductible maths, recommendation templates) · proprietary data (placements and outcomes) · workflow (renewal watch, agent console) · distribution (local trust, partners) · moat (placement intelligence plus book stickiness). Wrapping an LLM is not the company.

---

## UNIT ECONOMICS

| Item | Initial assumption | Long-term target | Source/grade |
|---|---|---|---|
| Homeowners premium (OK) | $5,400 | indexed to inflation | A/B |
| Commission new / renewal (home) | 13% / 10% | same | C |
| Aggregator split kept by Redbud | 75–80% | 90%+ (direct appointments) | C |
| Revenue per household, year 1 | ~$450–550 | ~$600+ with bundle | C |
| Servicing cost per policy per year | ~$150 | ~$100 with software | D |
| Blended CAC | ≤$400 | ≤$300 | D (E8 measures) |
| 12-month retention | 85% | 88–90% (bundled) | B/C (E9 measures) |
| LTV (contribution) | ~$2.2k | ~$3k | model |
| LTV:CAC | ~6x | ~10x | model |
| CAC payback | ~9 months | ~6 months | model |
| Gross margin (after servicing) | ~70% | ~75% | model |
| Capex / working capital | negligible (commissions arrive 30–60 days after bind) | — | C |

---

## FINANCIAL MODEL

Reproducible at `model/model.py` → `model/output.md`. Five-year summary:

| Scenario | Year 5 households | Year 5 revenue | Year 5 EBITDA | Cumulative cash, year 5 | Notes |
|---|---|---|---|---|---|
| Conservative (OK only, CAC $550, 80% retention) | 1,658 | $1.12M | ≈ break-even | −$444k | Never pays back expansion: don't expand on these numbers |
| Base (OK, CAC $350, 85% retention) | 3,001 | $2.19M | $478k | +$604k | Reconciled to the business-model analyst (≈$2.06M) |
| Aggressive (OK+TX+KS, funded, CAC $250, 88%) | 19,949 | $15.8M | $4.6M | +$6.2M | Requires pre-seed and seed and a strong co-founder |

The business-model analyst's base case shows a **peak cash need of about $242k, so plan $275–300k**, including modest founder pay. The model's simple fixed-cost line understates early founder pay. The conservative case never breaks even on expansion, which is why expansion is gated on measured CAC.

---

## SCALE PATH

| Milestone | Households (≈) | Revenue/household | Geography | Channels | Headcount | Gross margin | Capital | Bottleneck |
|---|---|---|---|---|---|---|---|---|
| $1M revenue | ~2,000 | ~$500 | OKC + Tulsa | warm, realtor/LO, content | 6–8 | ~70% | bootstrap or $0.3–1M pre-seed | licensed service capacity |
| $10M | ~18–20k | ~$520 | OK, TX, KS | producers per metro, partners, service centre | 50–70 | ~73% | $3–5M seed | carrier appetite across states; hiring licensed CSRs |
| $50M | ~90k | ~$550 | 8 hail-belt states | + embedded partners (lenders, builders) | 250+ | ~75% | Series A/B or profitable growth | brand at scale; quality of service |
| $100M | ~170–180k (~$1B premium placed) | ~$570 | 8 states + adjacent | + franchise or acquisition of local books | 450+ | ~75% | growth equity or M&A debt | M&A integration; carrier concentration |
| $500M–$1B | — | — | national CAT-exposed states | MGA/reciprocal fees layered on agency | — | — | $50M+ plus capacity partners | **requires an underwriting layer with proven loss data** |

---

## ENTERPRISE VALUE LOGIC

Insurance distribution is valued on EBITDA: agency M&A at roughly 8–16x EBITDA, Goosehead at roughly 14–21x EBITDA, with ~31% adjusted EBITDA margin (VC analyst; B/C). Its market cap was about $1.6–2.4B during 2026 on ~$365M revenue (B).

| Outcome | Revenue | EBITDA | Multiple | Value | What must be true |
|---|---|---|---|---|---|
| Lifestyle | $0.5–1.5M | $0.1–0.4M | 4–8x | $1.5–5M | A good local agency |
| Good | $10–20M | $2–5M | 10–14x | $35–60M | Repeatable multi-metro playbook; ≥85% retention |
| Great | $100M+ | $25–32M | 14–18x | $350–550M | Eight-state brand, placement-data moat, M&A engine |
| Multi-billion | ~$250M+ agency **or** an MGA/reciprocal layer | — | MGA comps (Neptune IPO ~$2.8B on ~$160M revenue; A) | $1–3B | Redbud's own data shows its homes outperform; capacity partners commit; specialist underwriting talent hired |
| $10B | — | — | — | not conceivable for this model | We say so plainly |

These are scenarios, not predictions. The VC analyst's subjective probabilities of reaching $1M / $10M / $100M revenue: **12% / 3% / 0.2% as-is**, and **30–35% / 8–10% / 0.5–1% with an experienced licensed co-founder** (D).

---

## COMPETITIVE WAR GAME

| If… | What happens | Our response |
|---|---|---|
| State Farm/Allstate notice | Captives can't sell rivals; they may retention-price loyal customers | Our "fix" recommendation (ask your carrier to re-rate) still earns trust; we win on breadth and honesty |
| Goosehead pushes harder in OK | Franchisees compete for the same households | Compete on local trust, plain-dollar product, proactive re-shop; partner networks |
| Google/Amazon/Meta | Google Compare (US) shut down in 2016 (B, from memory, not re-verified); big tech has repeatedly avoided licensed distribution risk | Stay licensed and local; be the partner of choice for embedded offers |
| OpenAI/Anthropic-powered agents shop insurance for consumers | The reading-the-dec-page layer commoditises | Good: we use the same models. The licence, carrier appointments, accountability and placement data are not commoditised. Become the licensed endpoint those agents hand off to |
| A well-funded startup raises $100M for digital home insurance distribution | Paid-lead CAC rises | Avoid paid auctions; referral-led CAC; regional depth over national breadth |
| CompanyCam/Porch add roofer-to-insurance | Roofer channel contested | Roofer channel is secondary by design; realtor/LO and renewal channels are primary |
| Carriers cut commissions | Revenue per household falls | Bundle, retention, contingency bonuses; MGA option later |
| Premiums fall (soft market) | Less shopping motivation and smaller commissions | Book retention; service relationships; expand lines |
| Regulation changes | HB 3781 may slow rate increases | Neutral to positive for consumers; we explain filings in plain language |

---

## FAILURE MODES (Failure memo)

**Top 10 reasons Redbud could fail**
1. **The market is already priced.** Re-shopping rarely beats the incumbent for older hail-exposed roofs (the crux; E4).
2. **No carrier access.** Aggregator carriers don't write older OK roofs at normal commission (E3).
3. **No experienced co-founder.** Elliot alone lacks credibility, book and bandwidth.
4. **Attention collapse.** Finals, internship, other projects, and storm-week servicing all collide.
5. **CAC creep.** Organic channels stall and paid leads cost $600+ per bind (B/C).
6. **Carrier appetite whiplash** after a bad hail season.
7. **Compliance error:** an inducement, an unlicensed quote, or an advertising claim.
8. **Retention below 80%:** households churn as soon as someone cheaper calls.
9. **Half-works forever:** a $30k/yr agency that eats two years.
10. **Aggregator lock-in:** the book is owned by the aggregator; leaving loses renewals.

- **Most dangerous assumption:** that a new independent agency can *materially* beat renewal-shock homeowners' current policies often enough (≥30% of files).
- **Most dangerous competitor:** the incumbent carrier's own retention desk, which can re-rate a loyal customer the moment they threaten to leave.
- **Most dangerous technological development:** consumer AI agents that shop insurance directly through carrier APIs, bypassing agencies (D). The mitigation is to become their licensed endpoint.
- **Biggest regulatory risk:** anti-rebating and inducement rules constraining partner channels (36 O.S. §1204); secondarily, MGA licensing and rate approval later.
- **Biggest distribution risk:** partners won't introduce without compensation, which leaves only content and word of mouth.
- **Biggest capital risk:** expanding on conservative-case CAC (model shows −$444k cumulative).
- **Biggest customer-adoption risk:** "agents are salesmen". Distrust of the whole category.
- **Most likely reason investors reject it:** agency economics are not venture-shaped, and the team has no distribution edge (VC analyst).
- **Most likely reason customers reject it:** inertia and loyalty to the carrier that just paid their roof claim.

**Which risks can be tested now:** 1, 2, 5 and 7 (via E3, E4, E8 and a counsel opinion) within 30–100 days. Risk 3 is tested by the co-founder search. Risk 8 needs 12 months.

---

## VALIDATION PLAN

Pre-registered experiments E1–E10 with thresholds and failure conditions are in `execution/04-experiments.md`. The three that matter most:
- **E3 Carrier access:** at least 3 carriers writing 10–20-year OK roofs at ≥10% new commission after split, **in writing**.
- **E4 Better-option rate:** in at least 30% of 20 real re-shops, a ≥15% saving or materially better coverage at the same or lower price.
- **E1 Pain prevalence:** at least 40% of interviewees had a ≥15% increase they did not successfully resolve.

---

## FIRST 10 CUSTOMERS

Ten Edmond or North OKC households drawn from the 30 research interviews. Each had a ≥15% renewal increase, asked for help, and is met in person once Elliot is licensed and appointed, or earlier through the licensed partner agent. Approach: send the follow-up script (`execution/02`), deliver a printed plain-dollar summary at the kitchen table, and give an honest stay-or-switch recommendation. Success means 10 binds from ≤40 completed reviews, with ≥3 by referral (`execution/06`).

---

## FIRST 30 DAYS (sized for ~10–15 hours a week around coursework)

| Week | Objective | Experiments | Outreach | Product | Research | Deliverables | Metrics | Kill criteria |
|---|---|---|---|---|---|---|---|---|
| 1 | Start learning and open the carrier question | E1 begins; E3 inquiries sent | Neighbourhood research post; 10 interviews booked; 3 independent agents contacted | One-page site + intake form (no quoting) | Read the OK P&C exam outline; read 36 O.S. §1204/§1435 | Exam booked (end of week 3); Smart Choice/SIAA/Openly inquiries; interview log template | 10 interviews booked | — |
| 2 | Understand the customer | E1, E2 | 10 interviews done; realtor/LO emails (8) | Hand-made plain-dollar summary template (design matters) | Study for exam (6 h) | 10 interview write-ups within 24 h each | ≥10 interviews; % unable to state deductible in $ | — |
| 3 | Get a licensed partner and real files | E4 begins; E5 | 10 more interviews; recruit 1 licensed partner agent for a 30-day pilot | Secure upload; compliance log | Exam (end of week); counsel opinion requested on referral design | Partner agreement; ≥5 dec pages (consented) | Partner signed? Dec pages ≥5 | No partner agent willing → extend 2 weeks, then reconsider |
| 4 | Decide | E3 result; E4 (20 re-shops); E7 probe | Follow-ups to interviewees; 3 roofers (E10 probe) | Summaries for every file | Commission schedules in writing | **Day-30 decision memo** | E1 ≥40%, E3 ≥3 carriers at ≥10%, E4 ≥30% | **Any of E1 <20%, E3 ≤1 carrier or <8% after split, E4 <15% → KILL the agency thesis** |

---

## FIRST 100 DAYS

- **Product:** v1 Renewal Check (iOS + web), human-verified extraction, agent console, renewal-watch reminders; roof-record PDF only as a partner goodwill artefact.
- **Customers:** 150 dec pages; ≥50 bound households; ≥3 by referral; a published "told them to stay" rate.
- **Revenue:** first commission statements; ≥$25k annualised.
- **Hiring:** a licensed co-founder signed (equity, vesting); part-time compliance counsel on retainer.
- **Technology:** AMS and rater purchased; extraction automated for the fields that were stable across 30 manual files.
- **Distribution:** ≥8 partners making real introductions; one local media explainer.
- **Capital:** none raised unless the day-100 milestones hit. Then consider a $500k–1M pre-seed (VC milestones: co-founder, 150+ dec pages, 20–30+ binds at CAC < $250–400, direct appointments, counsel sign-off).
- **Partnerships:** aggregator signed (after reading the book-ownership terms); Openly appointment; one credit-union or lender mortgage team.
- **Legal/regulatory:** agency licence, DRLP, E&O, privacy notice, advertising review, counsel opinion on partner design.
- **Metrics:** see `execution/09-kpi-dashboard.md`.

---

## THREE-YEAR ROADMAP

| | Year 1: product-market fit | Year 2: repeatable growth | Year 3: scale and category leadership (regional) |
|---|---|---|---|
| Revenue | $50–150k | $250–700k | $0.7–2.5M |
| Households in force | 120–250 | 450–1,100 | 1,100–3,500 |
| Team | 2–3 (Elliot, co-founder, 1 CSR) | 3–6 | 6–12 |
| Product | Renewal Check v1; agent console | Auto bundling; closing-desk flow for realtors/LOs; placement data model v1 | Multi-state; placement intelligence drives carrier choice; service centre tooling |
| Distribution | Warm network; first partners | Realtor/LO channel at scale in OKC; Tulsa | Texas and Kansas metros (only if CAC ≤ $350 and retention ≥ 85%) |
| Capital | Bootstrapped (~$5–30k) | Optional $0.5–1M pre-seed | $3–5M seed if expanding |
| Major risks | Crux fails; no co-founder | CAC; carrier appetite | Multi-state licensing and appetite; service quality |
| Strategic priority | Prove the better-option rate and bind rate | Prove CAC ≤ $350 and retention ≥ 85% | Prove the playbook travels |

Growth is not assumed to be linear: storm seasons and renewal cycles make revenue lumpy, and the plan expects at least one bad hail spring with carrier pullbacks.

---

## FOUNDING TEAM

- **Elliot Greenlaw:** CEO, product, design, engineering; licensed producer; brand and honesty standard.
- **Co-founder (critical path):** an experienced licensed Oklahoma P&C agent (5–15 years; CISR or CIC; carrier relationships; ideally left a captive agency over sales pressure). Producer of record, carrier access, service, compliance. Part-time in the pilot, full-time at ~250 households or funding.
- **First hires:** licensed CSR (~150–250 households); second producer for the realtor/LO channel (~$300k revenue); outsourced compliance counsel (day 1); senior engineer for the data layer (after pre-seed).
- Spec details: `execution/07-hiring-specs.md`. No executive titles until revenue justifies them.

---

## CAPITAL STRATEGY

- **Bootstrap first.** The test and first 100 days cost about $3–6k (licences, E&O, software).
- **Optional pre-seed ($500k–1M, ~10–15% dilution, C)** only after day-100 milestones. It funds the co-founder's salary, a CSR and the realtor/LO channel.
- **Seed ($3–5M)** only for multi-state expansion with measured CAC ≤ $350 and retention ≥ 85%.
- **MGA layer ($10M+ and capacity partners)** only with Redbud's own loss data. Do not raise for it on hope.
- **What can be achieved without venture money:** a profitable Oklahoma agency of $1–2M revenue (base case), which preserves every option, including selling the book or raising later from a position of strength. Venture capital is *not* automatically desirable here.

---

## KEY METRICS

1. **Better-option rate** (% of reviews with a materially better option) — the crux.
2. **Bind rate** (binds / recommended switches).
3. **Blended CAC per bound household**, founder hours included.
4. **12-month household retention.**
5. **Revenue per household** (after split).
6. **"Told them to stay" rate**, the trust metric, published.

---

## KILL CRITERIA

- **Day 30:** fewer than 3 accessible carriers writing 10–20-year OK roofs at ≥10% new commission after split; **or** better-option rate < 15% across 20 real re-shops; **or** < 20% of interviewees had an unresolved ≥15% increase → **KILL** the agency thesis.
- **Day 100:** < 20 bound households, **or** blended CAC > $800, **or** no licensed co-founder or partner willing to commit → **SHELVE** as a venture. Trip-wire to revisit: a proven agent offers to join, **or** the "told them to stay" brand produces ≥3 unsolicited referrals a month.
- **Month 12:** retention < 75% **or** CAC > $500 with no downward trend → stay a small agency; do not expand or raise.
- **Pre-registered fallback if killed:** the shelved **"honest-price studio" for local trades** (trust-first website, instant estimate and booking for exterior trades; `02_round1_verdicts.md`, C2). It is a cash business with excellent founder fit, not a venture. A P&C licence plus that studio is still a stronger position than today.

---

## FINAL INVESTMENT THESIS

**The strongest argument FOR.** Redbud attacks the largest recurring, fastest-rising household bill in one of the most storm-exposed states in America. It has a payer that already exists, recurs and is indexed to premium inflation, and it needs only an exam-based licence to begin. Its founder's instinct, "show people the true all-in cost, never pressure them", is precisely what this market lacks. That instinct can be measured (the "told them to stay" rate) in a way that captive incumbents cannot copy without breaking their own economics. The crux can be tested in 30 days for about $300. Even failure leaves a licence, a reusable extraction engine, and a clear answer. And if the data ever shows Redbud's homes outperform, the underwriting layer offers a genuine path to the $1B+ valuations that Neptune and Porch have reached.

**The strongest argument AGAINST.** It is an insurance agency: a well-understood, competitive, low-moat business whose venture outcomes are rare. The insurance commissions are real but thin. The incumbents are deeply entrenched, and the founder has no insurance background, no capital, and a student's calendar. Every analyst who looked at the venture-scale claim rejected it. The most likely outcome, even if the test passes, is a respectable local business worth single-digit millions. The highest-ceiling version depends on loss evidence that does not exist today.

**Evidence still missing.**
1. How often a new agency can materially beat renewal-shock policies (better-option rate).
2. Which carriers will appoint a no-book agency for older OK roofs, and at what commission (in writing).
3. Real blended CAC through warm, partner and content channels.
4. Retention of Redbud-placed households.
5. Whether an experienced licensed agent will join as co-founder.
6. A counsel opinion on partner-channel design under 36 O.S. §1204 and §1435.14.
7. Whether placement data and loss data could, in time, justify an underwriting layer.

---

## Founder-fit scorecard (all finalists)

| Candidate | Founder fit | Ceiling (evidence-based) | Payer clarity | Speed to first $ | Verdict |
|---|---|---|---|---|---|
| **Redbud (honest storm-country agency)** | 7/10 (9/10 with licensed co-founder) | $35–60M good / $350–550M great; $1B+ only via MGA | Strong (carrier commission) | 6–10 weeks | **PURSUE THE TEST** |
| C2 Honest-price trades studio / instant quote | 8/10 | $50–80M at best | Medium (SMB SaaS, high churn) | 4–8 weeks | SHELVE (pre-registered fallback) |
| C3 School-choice money rails | 7/10 | Wrong layer (state vendors own rails) | Weak in OK | Slow | SHELVE |
| C1 Roof Record | 7/10 | Small | None | — | KILL |
| C4 OTD Check for credit unions | 4/10 | <$1M ARR yr 3 | Conflicted | Slow | KILL (keep as free OTD feature) |
| C7 Trades talent pipeline | 4/10 | <$100M | Weak | Medium | SHELVE |

## Comparison with the earlier run ("Keelson", `venture/` on another branch)

Keelson is a tariff-exposure and refund-rights system for about 35,000 mid-market US importers. It is a better *venture-shaped* business (enterprise SaaS, $0.5–2B base case in its own analysis). It is a poor *founder* fit: it needs enterprise sales gravitas, customs and trade-law credibility, and buyers (CFOs, trade-compliance managers) that a 20-year-old engineering student in Edmond cannot credibly reach in 30 days. On the brief's joint criterion of market size × evidence × founder-market fit, Redbud wins for Elliot, and Keelson would win for a founder with ten years in trade compliance. One useful piece of Keelson's research was carried over: its insurance landscape confirmed the Hurricane Sally FORTIFIED study (73% lower claim frequency; A). That study concerns *wind*, which is exactly why this run did not build the thesis on FORTIFIED-for-hail.
