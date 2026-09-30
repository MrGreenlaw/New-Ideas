# 02 — Synthesis, Scorecard, and Elimination

Date: 2026-09-30. Inputs: `01a`–`01g` (seven independent Sonnet analysts, each assigned a territory,
none shown the others' work).

## 1. Cross-analyst patterns (what the independent reports agree on without prompting)

1. **The hottest categories are already capitalised.** Grid flexibility (Emerald AI at $1.05B), grid
   planning (Google/Tapestry with PJM), stablecoin rails (Bridge → Stripe, BVNK → Mastercard),
   prior-auth/RCM (Cohere, Anterior, Adonis, Latent), E&S underwriting (Federato, Sixfold),
   AI roll-ups (General Catalyst, Thrive). For a small team, entering these is paying retail for a
   lottery ticket. **Eliminated as primary theses.**
2. **Government-buyer theses have real triggers but slow money** (Medicaid work requirements,
   SNAP error penalties, permitting). The analysts independently capped them at $0.5–2B with 12+
   month sales cycles. **Eliminated as primary; retained as possible later channels.**
3. **Contingency-fee recovery businesses repeatedly surfaced as the fastest route to revenue**
   (property-tax appeals, subrogation, drawback, chargebacks, unclaimed property). They share a
   structural weakness: revenue is capped by the recoverable pool and they are easy to copy unless
   they convert into an ongoing system of record.
4. **The one territory where a structural shock is (a) enormous, (b) recurring and (c) not yet owned
   by a well-funded AI-native winner in the mid-market is US customs/trade compliance.**

## 2. Scorecard (reasoning aid, not fake precision)

Scale 1–5. Competition: 5 = open. Reg risk: 5 = benign. "Ceiling" is the analysts' and my
judgement of plausible enterprise value if things go well.

| Candidate | Size | Urgency | WTP | Competition | Defensibility | Speed to $ | Capital eff. | Durability | Ceiling | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|
| **AI-native customs compliance + duty recovery for mid-market importers** | 4 | 5 | 4 | 3 | 4 | 4 | 4 | 4 | $5–15B | **FINALIST** |
| Commercial property-tax appeals (mid-market, contingency) | 3 | 4 | 5 | 3 | 2 | 4 | 4 | 4 | $1–3B | **RUNNER-UP** |
| Subrogation recovery for regional P&C carriers | 3 | 3 | 4 | 3 | 3 | 3 | 4 | 4 | $1–3B | Reserve |
| Proof-of-mitigation rails for carriers | 3 | 4 | 3 | 3 | 3 | 2 | 4 | 4 | $1–3B | Reserve |
| Large-load request hygiene for utilities | 3 | 5 | 3 | 2 | 3 | 2 | 4 | 3 | <$2B | Killed: Google/Tapestry + utility cycles |
| DC flexibility M&V layer | 4 | 4 | 3 | 1 | 3 | 2 | 3 | 4 | ? | Killed: Emerald AI owns narrative |
| Transformer secondary market | 2 | 4 | 4 | 3 | 1 | 3 | 3 | 2 | <$1B | Killed: shortage fades ~2030 |
| Medicaid/SNAP error-rate QA | 3 | 4 | 3 | 4 | 3 | 1 | 3 | 3 | $0.5–2B | Killed as wedge: procurement |
| Provider Medicaid coverage retention | 3 | 5 | 3 | 2 | 2 | 4 | 4 | 2 | <$1B | Killed: Fortuna ahead, policy-fragile |
| SAP ECC clean-core remediation | 4 | 4 | 4 | 2 | 2 | 3 | 3 | 1 | <$1B | Killed: demand cliff after 2030 |
| Mainframe equivalence testing | 4 | 3 | 4 | 2 | 3 | 1 | 2 | 3 | ? | Killed: enterprise cycles, funded rival |
| Electrical takeoff / bid desk | 4 | 3 | 3 | 3 | 3 | 3 | 3 | 4 | $0.5–1B+ | Reserve |
| Freight fraud / carrier identity | 3 | 4 | 3 | 2 | 3 | 3 | 4 | 3 | <$1B | Killed: Highway, market upturn |
| Tariff refund claims finance | 2 | 2 | 3 | 2 | 1 | 5 | 2 | 1 | — | Killed: one-off, ~75% already paid |
| SMB stablecoin/agent treasury | 4 | 3 | 3 | 2 | 2 | 3 | 4 | 3 | ? | Killed: Stripe/Ramp bundle |
| Hiring-identity verification | 3 | 4 | 3 | 2 | 2 | 4 | 4 | 3 | <$1B | Killed: Persona feature |
| Unclaimed property automation | 2 | 3 | 3 | 4 | 3 | 3 | 4 | 4 | <$1B | Killed: small TAM |
| Estate settlement | 4 | 2 | 3 | 2 | 3 | 3 | 3 | 4 | ? | Killed: Empathy, low urgency |

## 3. Why the customs thesis survives (first pass, before red-teaming)

**The non-obvious insight: duty is now a first-order cost line, but it is still managed as a
back-office clerical service by intermediaries whose incentives are orthogonal to the importer's.**

- Pre-2025, US customs duties were ~$80B/yr on ~$3T+ of imports, an average effective rate of ~2–3%
  (C: approximate, from general knowledge; to be verified). Duty was a rounding error, so
  compliance was bought on price: $50–150 per entry to a broker.
- FY2025 duties were ~$195B and the FY2026 gross run-rate is ~$200–280B (A/B). Even after IEEPA was
  struck down, the administration rebuilt most of the wall on sturdier statutes (Section 301 on 60
  economies with no expiry; Section 232 on full value; de minimis repealed by statute from July
  2027). **The duty wall moved from executive whim to durable statute.** (A for the facts;
  C for "durable".)
- Brokers are paid **per entry filed**, not per dollar of duty saved or recovered. Nobody in the
  standard mid-market arrangement is paid to minimise duty legally. That misalignment was cheap when
  duties were 2%. At 10–50% of landed cost, it is expensive.
- The labour supply cannot scale: the April 2026 broker exam pass rate was 22% on 1,132 examinees
  (A). Complexity per entry rose sharply (232 metal-content valuation, 301 origin rules, 60-country
  schedules), while the broker pool did not.
- LLMs crossed the threshold to read commercial invoices, spec sheets, BOMs and CBP rulings (CROSS)
  and propose classifications and origin determinations with human (licensed-broker) sign-off.
  That makes a **licensed, AI-native broker** economically different from a labour-bound one.
- ~330,000 importers of record paid IEEPA duties (A/B). That is a countable, named customer universe
  (importer-of-record data is partially public via bill-of-lading data services).

## 4. Why the runner-up (commercial property tax) is kept alive

It has cleaner economics (pure contingency, 25–40% of first-year savings), no licensing moat to build
in most states, and proof of the model in residential (Ownwell, $74M raised, 1M+ appeals). It loses
on ceiling (independently estimated at $1–3B by two analysts), defensibility (appeal work is copyable,
assessors can adopt AI) and on the absence of a compounding system of record. It will be red-teamed
head-to-head against the finalist.

## 5. Open questions that decide the finalist (sent to Phase-3 analysts)

1. How many US importers fall into the mid-market band (e.g., $250K–$25M duty/yr)? Bottom-up count.
2. What do mid-market importers actually pay for brokerage and trade compliance today (all-in)?
3. How much duty is overpaid/unrecovered in the mid-market (misclassification, missed FTA/USMCA
   preferences, 232 metal-content over-valuation, drawback, unfiled protests)? Evidence quality?
4. How crowded is the AI-native customs space *really* at the mid-market level (Flexport, Gaia,
   Amari, Zonos, Caspian, Altana, Descartes, legacy brokers adding AI)?
5. Does licensure + ACE filer status + outcome data constitute a real moat, or will LLM
   classification commoditise everything?
6. What happens to the business if tariffs are cut by half? By 90%?
