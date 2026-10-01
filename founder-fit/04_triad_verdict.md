# 04 — Triad review: Redbud (full pass)

Evidence base: `research/W2_*`, `W3_*`, `W4_*`. Grades: [strong] / [weak] / [unknown].

## 0. Requirement audit
| Requirement baked into the idea | Where it came from | Real or inherited? |
|---|---|---|
| "It must be an iOS app" | Elliot ships iOS | **Inherited** — homeowners need an answer, not an app |
| "It must be a $10B company" | The venture brief | Real as an ambition; **not real as a constraint on starting** |
| "The moat is roof data / FORTIFIED" | Round-1 and round-2 reasoning | **Inherited and disproved** — discount is statutory; no hail loss evidence |
| "Roofers are the channel" | Round-3 reframe | **Inherited** — killer and evidence analyst both weakened it (no legal incentive, post-claim law) |
| "Must be licensed to quote" | 36 O.S. §1435 | **Real** |
| "Partner incentives must not be paid per sale" | 36 O.S. §1204, §1435.14 | **Real** |
| "A new agency can get carrier access" | Aggregator marketing | **Unverified** — the crux |
| "Re-shopping beats the incumbent often enough" | Assumption | **Unverified** — the crux |

**Restated problem:** *Can a newly licensed, trust-first agent, with no book, place renewal-shock Oklahoma homeowners into
materially better policies often enough, and cheaply enough, that each household pays back its acquisition cost within a
year?*

## 1. The Pessimist (pre-mortem, October 2027)
Redbud is a 70-household agency that Elliot runs between classes, and it's going nowhere. Most likely cause: **the market
was already priced.** In about four of five reviews, Elliot honestly told the homeowner to stay put, because the carriers his
aggregator could reach were dearer on older hail-exposed roofs than the captive giants holding about 60% of Oklahoma. The
honesty that made the brand also meant 80% of the work earned nothing. Second cause: **carrier appetite moved under him.** A
bad hail spring led two aggregator carriers to stop new Oklahoma homeowners business, so his best product disappeared for
six months. Third: **attention.** Insurance service is not an app you ship and leave. Storm weeks bring claims calls during
finals, and an internship and three other projects (OTD, Locus, Friendly Fire) all lost. Fourth, the one he hasn't thought
of: **the co-founder never materialised.** Experienced agents with portable books want salary or equity in a real company.
Without one, he was a 20-year-old with a fresh licence asking homeowners to trust him with their largest asset, and E&O
exposure sat on him personally. Sunk-cost failure: the agency *half-works*. It earns $30k a year, enough never to kill and
never enough to matter, and it quietly eats two years. Honest downside: $3–6k cash, ~400 hours, a small E&O risk, and two
years of the attention that could have built something with a real ceiling.

## 2. The Analyst
- Payer exists: carrier commissions, ~12–15% new / 8–12% renewal on homeowners **[strong]**. OK average premium ≈ $5.4–5.9k **[strong]** → ≈ $400–650/yr to the agency after split **[strong, derived]**.
- Market: $36.6B homeowners premium across 8 hail-belt states; OK $2.56B (NAIC 2024) **[strong]**.
- Licence: exam-only, ~4 weeks, ~$100–200 **[strong]**. Agency licence + E&O $1.2–3.5k/yr **[weak]**.
- Carrier access for a no-book agency: aggregators advertise it (Smart Choice, SIAA); actual OK homeowners appetite on 10–20-year roofs **[unknown — decisive]**.
- How often re-shopping beats the incumbent: **[unknown — decisive]**. J.D. Power: ~6.8% shop, ~2.2% switch annually **[weak, secondary]**.
- Prior art: Goosehead (franchise agency; 2025 revenue ~$365M; ~86% retention; market cap ~$1.6–2.4B in 2026) **[strong]**. Porch (software → insurance → reciprocal) **[strong]**. Digital agencies (Policygenius, Gabi, Young Alfred) were acquired without becoming standalone franchises **[weak on prices]**.
- Base rate: most new independent agencies stay small. Two analysts put P($1M revenue) at ~12% as-is, and ~30–35% with an experienced co-founder **[weak, subjective]**.
- Oklahoma blunts post-claim switching (36 O.S. §3639.1; OAC 365:15-7-26) **[strong]**.
- Moat: none on day 1. Placement data becomes meaningful only above ~1,000 binds/yr **[weak]**.

## 3. The Optimist
If it works, Oklahoma is the best place in America to prove it. Premiums are 4th-highest in the US and rising. The incumbents
sell through captive agents with sales quotas. And every homeowner gets a renewal notice every year, a built-in trigger no
marketing budget can buy. Commissions are a percentage of premium, so the business grows with the very inflation that hurts
customers. That is a political risk, but also a tailwind. The best realistic 24-month case: 400–600 households, ~$250–350k of
recurring revenue at 85%+ retention, a licensed co-founder, written commission statements, and a placement dataset nobody else
in Edmond has. The asymmetry: the test costs ~$300 and ~40 hours. The upside is a durable, cash-generating, values-aligned
company that could reach $2M+ revenue in five years (base model). A venture-funded multi-state version could exceed $15M (aggressive model), with an MGA/reciprocal option
(Neptune, Porch) if loss data ever supports it. Second-order payoff even in failure: a P&C licence, deep knowledge of the
largest household expense after a mortgage in storm country, a reusable dec-page extraction engine, and a reputation as the
honest one. It compounds with OTD (the same "show the true all-in cost" instinct) and with his local network.

## 4. Simplify (Musk)
1. **Question:** the iOS app, the roof record, FORTIFIED-as-moat, roofer channel, MGA and multi-state are all inherited. None is needed to test the crux.
2. **Delete:** iOS app (v0) · roof record · roofer channel (keep one tiny probe) · MGA · Texas/Kansas · auto bundling (until homeowners proves out) · brand work beyond one page · LLM extraction (until 30 files are done by hand) · paid leads · any fundraising. *Expect to add back: the plain-dollar summary design, because it is the brand.*
3. **Simplify:** one landing page, one intake form, a hand-made plain-dollar summary, a licensed partner agent quoting while Elliot studies, and one spreadsheet.
4. **Accelerate:** interviews start this week (no licence needed). Book the exam for the end of week 3. Apply to aggregators in week 1 to get carrier menus *in writing* before investing further.
5. **Automate:** nothing until 30 files have been done manually. Then automate extraction only.

**Stripped idea:** *"A licensed person who reads Oklahomans' home insurance in plain dollars and honestly tells them whether
there's something better."* Versus proposed: an app, a roof platform, a multi-state agency and an MGA.

## 5. Optimize (Cook)
- **Cost of yes:** for 30 days, no new features on OTD, Locus or Friendly Fire, and no Greenturf expansion. Finals win any conflict; the plan is sized at ~10–15 h/week.
- **Inventory:** the danger is an unshipped app and a polished brand nobody has used. Ship only the hand-made summary. Every interview gets written up within 24 hours.
- **The one bottleneck:** *access to carriers that will write older-roof Oklahoma homes at a normal commission through a brand-new agency.* Without it, there is nothing to sell, and every other effort is decoration.
- **Unit economics / reversibility:** one household ≈ $400–650/yr revenue; target CAC ≤ $400. The test is a **two-way door** (licence and conversations are useful whatever happens). Signing an aggregator contract that claims the book is a **one-way door**: read the book-ownership clause first.

## 6. Verdict
**PURSUE THE TEST, NOT THE COMPANY.**
- **Stripped scope:** 30 homeowner interviews + carrier menus in writing + 20 real re-shops through a licensed partner agent.
- **Single next action (this week, ≤3 hours):** post the neighbourhood research message, book the Oklahoma P&C exam, and submit the Smart Choice/SIAA inquiries asking for the Oklahoma homeowners carrier list and commission schedule.
- **Kill criteria (any one kills the agency thesis at day 30):** fewer than 3 accessible carriers writing 10–20-year OK roofs at ≥10% new commission after split; better-option rate under 15% across 20 real re-shops; fewer than 20% of interviewees had an unresolved ≥15% increase.
- **The crux:** *How often can a newly appointed independent agency materially beat a renewal-shock homeowner's current policy?* (The analysts disagree most sharply here. The Pessimist says rarely, because the market is priced; the Optimist says often enough, because captive giants over-charge loyal customers. No data settles it today.)
- **Cheapest test:** 20 real re-shops. ≈ 30–40 hours over 4 weeks, ≈ $100–300 (exam, licence application, coffee), and a licensed partner agent's goodwill.
