# 03 — Legal, Regulatory, Tax and Ethical Landscape for an Autonomous AI Trading Bot (US)

*Research date: 2026-11-03. **This is general research, not legal, tax or investment advice.** Rules are fact-specific and state law varies. Before touching anyone else's money, a securities lawyer (and a CPA for tax) should be consulted. Items marked "(verify)" came from secondary sources or could not be fully confirmed against a primary source.*

---

## TL;DR — the decision map

| What you do | Likely regulatory status | Risk level |
|---|---|---|
| Bot trades **only your own money** in **your own** brokerage account | No registration. Ordinary taxpayer; broker margin rules apply | Low (financial risk only) |
| **Paper trading / backtests / school demo** with no real client money | No registration | Minimal |
| Publish **open-source code** or a general, impersonal newsletter/signals feed, same content to everyone, on a regular schedule | Likely within the **publisher's exclusion** (Lowe v. SEC) / CFTC Rule 4.14(a)(9), *if* bona fide, impersonal, regular and general. AI-washing / anti-fraud rules still apply | Moderate (marketing claims) |
| Run the bot **on family members' accounts for free** (no economic benefit of any kind) | Probably not an "investment adviser" (no "compensation"), but fiduciary/agency duties, elder exploitation law and broker ToS still apply | Moderate–High |
| Run the bot on **friends'/others' accounts and get anything of value** (fee, profit share, "tips", Venmo, free rent) | **Investment adviser** → generally **state** registration (RIA + Series 65 for you as IAR). Profit-share fees restricted to "qualified clients" | **High** without registration |
| **Pool** people's money into one account/entity and trade it | Possibly an unregistered **securities offering** (pool interests = securities), unregistered investment company/adviser, and — if futures/crypto derivatives — a **commodity pool operator (CPO)**. This is the fact pattern of most SEC/CFTC "AI trading bot" fraud cases | **Very high — don't** |
| Take **transaction-based pay** or execute/hold funds for others | **Broker-dealer** registration issues | Very high |
| Advise on/trade **futures, options on futures, or leveraged crypto derivatives** for others | **CTA** (and CPO if pooled) — CFTC/NFA, unless an exemption fits | High |
| Put **retirees on fixed income / SSI / Medicaid recipients** into speculative day trading | Unsuitable / likely breach of fiduciary duty; potential **elder financial exploitation**; can **destroy SSI/Medicaid eligibility** (SSI resource limit $2,000) | **Do not do this** |

**Safest real-money structure:** each person owns their own account at a regulated broker, in their own name, controls their own API keys and kill switch, and runs (or self-hosts) an *open-source* bot themselves. You give no individualized advice, take no money, never touch funds and never hold credentials. For a school project: paper trading only.

---

## 1. Registration: investment adviser, broker-dealer, CTA/CPO, and selling software or signals

### 1.1 Investment adviser — federal definition and the three-part test
- **Statute:** Investment Advisers Act of 1940 §202(a)(11), 15 U.S.C. §80b-2(a)(11). An "investment adviser" is any person who, **for compensation**, **engages in the business** of **advising others** about securities (directly or through publications), or who issues analyses or reports about securities as part of a regular business.
  - Text: https://www.law.cornell.edu/uscode/text/15/80b-2
- **SEC staff interpretation (Release IA-1092, 1987):** the three elements are (1) advice about securities, (2) "in the business", (3) "for compensation". **"Compensation" means receiving *any economic benefit*,** whether a fee, a share of profits, or bundled with other services. It does not have to be called an advisory fee or come from the client directly.
  - https://www.sec.gov/rules/interp/ia-1092.pdf (also summarized in the SEC staff's *Regulation of Investment Advisers*: https://www.sec.gov/about/offices/oia/oia_investman/rplaze-042012.pdf)
- **Discretionary trading by an algorithm is "advice":** choosing and placing trades in someone's account is the strongest form of advisory activity. The SEC treats robo-advisers as registered advisers subject to the full fiduciary duty (IM Guidance Update 2017-02: https://www.sec.gov/investment/im-guidance-2017-02.pdf).
- **Fiduciary duty** (duty of care + loyalty) applies to all advisers: *Commission Interpretation Regarding Standard of Conduct for Investment Advisers*, Release IA-5248 (2019): https://www.sec.gov/rules/interp/2019/ia-5248.pdf

**Implication for the student:** helping family **completely free** (no money, no profit share, no "you can keep 10% of gains", no in-kind benefit) usually fails the compensation element. **The moment there is any economic benefit**, the student is likely an adviser.

### 1.2 SEC vs. state registration
- **Advisers Act §203A:** advisers with **< $100 million** in regulatory AUM are generally **prohibited** from SEC registration and register with their **state securities regulator** instead ("mid-sized" $25–100M → state; < $25M → state). A student bot would be state-regulated.
  - SEC overview: https://www.sec.gov/divisions/investment/iaregulation/memoia.htm and Form ADV info: https://www.sec.gov/iard
- **National de minimis (§222(d), 15 U.S.C. §80b-18a(d)):** a state may **not** require registration of an adviser with **no place of business in that state** and **fewer than 6 clients resident there** in the preceding 12 months. **This does not help in your home state**: wherever you live and work *is* a place of business, so that state's law applies from client #1 unless the state itself has an exemption.
- **State law** (most states use the Uniform Securities Act / NASAA model): registration as an RIA plus an **Investment Adviser Representative** license for the individual, usually the **Series 65** exam (or Series 66 + 7). Find your regulator: https://www.nasaa.org/contact-your-regulator/
- **Internet adviser exemption (Rule 203A-2(e)), amended March 2024 (Release IA-6383; compliance date March 31, 2025):** lets a *pure online* adviser register with the SEC below $100M. It now requires an **operational interactive website at all times** and **eliminated the old de minimis carve-out for up to 14 non-internet clients**. Anyone using it is still a *registered* adviser, so it is not an exemption from regulation.
  - https://www.sec.gov/rules-regulations/2024/03/s7-16-23 (verify exact URL)
- **Family office exclusion (Rule 202(a)(11)(G)-1):** covers a *family office* (an entity owned and controlled by family clients that advises **only family clients**). It is built for wealthy single families. It does **not** cover friends, neighbors, or "older people I know", and it does not help someone who starts a business serving the public.
  - 17 CFR 275.202(a)(11)(G)-1: https://www.law.cornell.edu/cfr/text/17/275.202(a)(11)(G)-1

### 1.3 Performance fees ("I keep 20% of profits")
- **Advisers Act §205(a)(1) / Rule 205-3:** a *registered* adviser may only charge performance-based fees to **"qualified clients"**. The 2026 inflation order (Release IA-6961, issued April 28, 2026, effective **June 29, 2026**) raised the thresholds to **$1.4 million AUM with the adviser, or $2.7 million net worth** (verify on sec.gov; reported by Holland & Knight, Alston & Bird). Many states adopt the same standard.
  - https://www.hklaw.com/en/insights/publications/2026/06/sec-raises-qualified-client-thresholds-under-rule-205-3
- **Practical upshot:** a profit-share arrangement with low-income or ordinary-income friends and relatives is **prohibited**, not merely unwise.

### 1.4 Pooling money is the danger zone
If the student collects money from several people into one account or LLC and trades it, that can be:
- an **unregistered offering of securities** (pool interests are "investment contracts" under *SEC v. W.J. Howey Co.*, 328 U.S. 293 (1946)). Securities Act §5 violation,
- an **investment company** issue (Investment Company Act) and an adviser to a pool,
- a **commodity pool** if any futures/swaps/leveraged crypto derivatives are traded. The operator is then a **CPO** requiring CFTC registration/NFA membership unless exempt (e.g., Rule 4.13).

**This is the exact fact pattern of current SEC "AI trading bot" cases:**
- *SEC v. Nathan Fuller* (S.D. Tex., filed May 28, 2026; Lit. Rel. **LR-26558**): allegedly raised ~$12.3M from ~150 investors for "proprietary AI-based crypto trading bots" doing "high-frequency arbitrage". The SEC alleges the bots did not work as claimed, about half the money went to personal expenses, and much of the rest paid earlier investors Ponzi-style. Charges: Securities Act §§5(a), 5(c), 17(a); Exchange Act §10(b)/Rule 10b-5.
  - https://www.sec.gov/enforcement-litigation/litigation-releases/lr-26558 ; complaint: https://www.sec.gov/files/litigation/complaints/2026/complaint-fuller.pdf
- SEC Press Release **2025-144**: charges against three purported crypto trading platforms and four "investment clubs" in a scheme that targeted retail investors (incl. AI-signal claims): https://www.sec.gov/newsroom/press-releases/2025-144-sec-charges-three-purported-crypto-asset-trading-platforms-four-investment-clubs-scheme-targeted
- SEC Press Release **2026-95**: multiple entities, fraud schemes totaling at least $15M using WhatsApp and other platforms: https://www.sec.gov/newsroom/press-releases/2026-95-sec-charges-multiple-entities-fraud-schemes-totaling-least-15-million-used-whatsapp-other-platforms

Even an *honest* student whose pooled bot loses money can face the same registration charges (§5 has no intent element), plus civil suits from friends and family.

### 1.5 Broker-dealer
- **Exchange Act §15(a)** requires registration for anyone "engaged in the business of effecting transactions in securities **for the account of others**." Red flags: **transaction-based compensation** (per-trade fees, commissions), **holding customer funds or securities**, soliciting investors, executing orders for others.
  - SEC *Guide to Broker-Dealer Registration*: https://www.sec.gov/about/reports-publications/investorpubsbrokerdealerreg
- A bot product that *routes other people's orders* through a single master account, or charges per trade, gets close to broker activity. Using **each user's own account at a registered broker** (via the broker's own API/OAuth) avoids most of this.

### 1.6 CFTC / NFA: CTA and CPO (futures, options on futures, swaps, leveraged retail crypto)
- **Commodity Trading Advisor (CTA):** CEA §1a(12), 7 U.S.C. §1a(12). Anyone who, for compensation or profit, advises others on trading futures/options/swaps, including by **exercising trading authority** over their accounts.
- **Exemptions:**
  - **CEA §4m(1) / CFTC Rule 4.14(a)(10):** has advised **15 or fewer persons** in the past 12 months **and** does not hold itself out generally to the public as a CTA. Self-executing, no filing. Marketing a bot publicly can break the "holding out" prong.
  - **Rule 4.14(a)(9):** advice that is **not directed to the needs of any particular account** (impersonal, e.g., newsletters, software). This is the CFTC analog of the publisher's exclusion. See *Taucher v. Born*, 53 F. Supp. 2d 464 (D.D.C. 1999), which held on First Amendment grounds that impersonal publishers of commodity advice need not register.
  - NFA CTA page: https://www.nfa.futures.org/registration-membership/who-has-to-register/cta.html
  - 17 CFR 4.14: https://www.ecfr.gov/current/title-17/chapter-I/part-4/subpart-C/section-4.14
- **CPO:** operating a pool that trades commodity interests → registration as a CPO unless an exemption applies (e.g., Rule 4.13(a)(3) de minimis, which requires a notice filing with NFA).
- **Crypto:** retail **leveraged, margined or financed** crypto transactions fall under CFTC jurisdiction (CEA §2(c)(2)(D)). US persons trading offshore perpetual futures on unregistered venues is itself a problem (see the CFTC's 2023 Binance enforcement).
  - **Status as of Nov 2026:** the SEC and CFTC jointly issued interpretive Release **33-11412** (March 17, 2026), *Application of the Federal Securities Laws to Certain Types of Crypto Assets…*. It sorts crypto into digital commodities, collectibles, tools, stablecoins and digital securities; only "digital securities" are fully SEC-jurisdictional. It is interpretive and was open for comment (S7-2026-09). https://www.sec.gov/files/rules/interp/2026/33-11412.pdf
  - The **CLARITY Act** (H.R. 3633, market-structure bill) passed the House on July 17, 2025 but **failed Senate cloture 49–50 on September 15, 2026**. It remains on the calendar and could be revived. The spot crypto market structure is **still unsettled** (secondary sources: The Defiant, Coingape).

### 1.7 Selling software or signals: the publisher's exclusion
- **Statute:** §202(a)(11)(D) excludes "the publisher of any bona fide newspaper, news magazine or business or financial publication of general and regular circulation."
- ***Lowe v. SEC*, 472 U.S. 181 (1985):** the exclusion covers publications that are (1) **impersonal**, i.e., not tailored to any individual client's portfolio; (2) **bona fide**, i.e., genuine disinterested commentary, not a promotional tool or touting; and (3) of **general and regular circulation**, not timed to specific market activity ("hit-and-run tipsters").
  - https://supreme.justia.com/cases/federal/us/472/181/
- **Applying it to bots (the line is blurry; get counsel):**
  - *Probably within the exclusion:* selling or open-sourcing **software that users configure and run themselves**, the same for every user, with the user making the decision to deploy it. A regular, general market newsletter or signal feed delivered identically to all subscribers.
  - *Probably outside the exclusion:* you **operate** the bot on the customer's account (discretionary management); you **tune it to each user's** goals, risk or portfolio; you send ad hoc "buy now" alerts timed to pumps; you have a financial interest in what you recommend.
  - **Anti-fraud rules apply regardless.** Securities Exchange Act §10(b)/Rule 10b-5 applies to everyone, and if the student is an adviser of any kind, Advisers Act §206 also applies, even an unregistered or exempt one.
- **FINRA/SEC investor alerts about "AI trading" and signals services** are a good indicator of how regulators view this market: SEC/NASAA/FINRA *Artificial Intelligence (AI) and Investment Fraud* alert: https://www.sec.gov/resources-for-investors/investor-alerts-bulletins/artificial-intelligence-ai-investment-fraud (verify URL)

### 1.8 SEC rules on AI and predictive data analytics (PDA): status
- **Proposed rule "Conflicts of Interest Associated with the Use of Predictive Data Analytics by Broker-Dealers and Investment Advisers"** (Release 34-97990 / IA-6353, File S7-12-23, July 26, 2023). It would have required firms to **eliminate or neutralize** conflicts arising from "covered technologies" (including AI/ML) in investor interactions.
  - https://www.sec.gov/rules/2023/07/s7-12-23
- **Withdrawn June 12, 2025**, together with 13 other Gensler-era proposals. The SEC said it would issue a new proposal if it revisits the topic. (Ropes & Gray: https://www.ropesgray.com/en/insights/alerts/2025/06/sec-clears-unfinished-rulemakings-from-regulatory-agenda)
- **What still applies:** the existing fiduciary duty (IA-5248), Reg BI, the **Marketing Rule** (Rule 206(4)-1), the Compliance Rule (206(4)-7) and anti-fraud.
- **SEC Division of Examinations FY2026 priorities (released Nov 17, 2025):** examiners will review **automated investment tools, AI and trading algorithms**, whether outputs match disclosures and **investor profiles, especially for retail and older investors**, and AI-washing. https://www.sec.gov/exams (priorities PDF)

### 1.9 "AI-washing" enforcement
- **Delphia (USA) Inc. and Global Predictions Inc.** (SEC Press Release **2024-36**, March 18, 2024). These were the first AI-washing cases. Both settled for false or misleading claims about AI use under Advisers Act §206(2), the Marketing Rule and others. Penalties: **$225,000** (Delphia) and **$175,000** (Global Predictions, which called itself the "first regulated AI financial advisor").
  - https://www.sec.gov/newsroom/press-releases/2024-36
- **2024 follow-ons:** a settled action against a firm marketing an "AI-driven" trading platform it never implemented (Oct 2024), and a settled action against an adviser, its parent, CEO and a board member over AI automated-trading claims (Nov 2024) (secondary: Seward & Kissel 40 Act blog).
- **2025:** SEC litigation against the founder of an AI startup for misleading investors (April 2025; outside the adviser context). Gibson Dunn noted in Nov 2025 that the Atkins-led SEC had not yet brought an adviser AI-washing case.
- **2025–2026 fraud cases involving "AI trading bots":** TSAI / Cryptoaiml (Sept 2025), SEC v. Fuller (May 2026, above), and PR 2026-95.
- **Lesson for a student product:** never claim "AI-powered", "guaranteed", "beats the market", "X% monthly returns" or "regulated" without documentary proof. Backtests and hypothetical performance are tightly restricted under the Marketing Rule for advisers, and they can be misleading for anyone under Rule 10b-5 / FTC Act §5.

---

## 2. Pattern Day Trader rule and account mechanics — **major 2026 change**

### 2.1 The PDT rule has been replaced
- The old regime under **FINRA Rule 4210(f)(8)(B)** treated an account as a *pattern day trader* after **4+ day trades within 5 business days** in a margin account. PDT accounts needed **$25,000 minimum equity**, and day-trading buying power was capped at 4× maintenance excess.
- **SEC approval:** on April 14, 2026, the SEC granted accelerated approval to **SR-FINRA-2025-017** (Release 34-105226, verify number). The amendments **replace the day-trading margin requirements in their entirety**, including the **day-trade count test and the $25,000 minimum equity requirement**, with a new **intraday margin standard** in Rule 4210(d)(2).
- **FINRA Regulatory Notice 26-10** (April 20, 2026): **effective June 4, 2026**. Firms that need more time may **phase in implementation until October 20, 2027**.
  - https://www.finra.org/rules-guidance/notices/26-10
- **How the new standard works (per Notice 26-10):**
  - It applies to **margin accounts** (it excludes good-faith/cash accounts and portfolio margin accounts).
  - On days with "IML-reducing" transactions, the firm computes an **intraday margin deficit**. Real-time monitoring is not required.
  - A deficit must be met promptly (deposits or improved margin level). It stays outstanding until satisfied or until the close of the **15th business day**.
  - If a customer **habitually** fails to meet deficits and one remains unmet by close of the **5th business day**, a **90-calendar-day freeze** applies: no increasing short positions or debit balances.
  - Deficits ≤ the **lesser of 5% of equity or $1,000**, or ones caused by extraordinary circumstances, do not count toward a "pattern".
- **Practical implications:**
  - (a) Some brokers may still enforce PDT-style restrictions until they implement the change (phase-in to Oct 2027), and **brokers may impose stricter "house" rules**. Check your broker.
  - (b) Removing the $25k floor **lowers the barrier for small, vulnerable accounts to day-trade on margin**. That makes the ethical concerns in §3 *more* acute, not less.
  - (c) Reg T (12 CFR Part 220) initial margin of 50% still applies.

### 2.2 Cash accounts and free-riding / good-faith violations
- In a **cash account** you can only buy with **settled** funds. The **T+1 settlement** cycle has been in effect since **May 28, 2024** (SEC Rule 15c6-1 amendments: https://www.sec.gov/newsroom/press-releases/2023-29).
- **Good-faith violation:** buying with unsettled sale proceeds and then selling that new position before the original sale settles.
- **Free-riding (Reg T §220.8):** buying, then paying for the purchase with the proceeds of selling the same security. The penalty is a **90-day restriction** to settled-cash-only trading. Brokers typically also restrict accounts after 3–4 good-faith violations in 12 months.
  - SEC Investor.gov "Freeriding": https://www.investor.gov/introduction-investing/investing-basics/glossary/freeriding (verify)
- **A high-frequency bot in a cash account will hit these limits quickly.** Design the bot to track *settled* cash.

---

## 3. Elder and vulnerable-investor protection, suitability, and **public-benefits impact**

### 3.1 FINRA protections
- **FINRA Rule 4512 (Customer Account Information):** firms must make reasonable efforts to obtain the name and contact information of a **Trusted Contact Person** for non-institutional accounts.
- **FINRA Rule 2165 (Financial Exploitation of Specified Adults):** https://www.finra.org/rules-guidance/rulebooks/finra-rules/2165
  - A **"Specified Adult"** is a person aged **65+**, or 18+ and reasonably believed to have a mental or physical impairment that leaves them unable to protect their own interests.
  - A firm **may** place a temporary hold on **disbursements and securities transactions** if it reasonably believes financial exploitation has occurred, is occurring, has been attempted or will be attempted.
  - The firm must notify authorized parties and the trusted contact within 2 business days (unless they are suspected), and it must start an internal review.
  - **Duration:** initial hold up to **15 business days**, a first extension up to **10 business days**, and a further extension up to **30 business days** if the firm has reported the matter to a state regulator, agency or court.
  - **Implication:** a broker can and will **freeze trades a third-party bot places** in an older person's account if it looks like exploitation.
- **Senior Safe Act of 2018** (Economic Growth, Regulatory Relief, and Consumer Protection Act, Pub. L. 115-174, §303; 12 U.S.C. §3423). It provides **immunity** to trained employees of covered financial institutions who report suspected senior exploitation to regulators or law enforcement in good faith. In practice, brokers and banks are **encouraged to report** suspicious third-party activity.
  - FINRA/SEC/NASAA guide: https://www.finra.org/rules-guidance/guidance/reports-studies/senior-safe-act-report (verify)
- **State elder-exploitation laws:** almost every state has adult-protective-services statutes, and many have **criminal financial exploitation** offenses. These typically cover someone in a position of trust (including a POA agent or relative) who obtains or uses an elder's assets through undue influence, deception or breach of fiduciary duty. Losses caused by a reckless or undisclosed strategy can be framed as exploitation or breach of fiduciary duty even with **no intent to steal**. Many states adopted NASAA's **Model Act to Protect Vulnerable Adults from Financial Exploitation**, which adds mandatory/permissive reporting and holds for broker-dealers and advisers.
  - NASAA senior resources: https://www.nasaa.org/policy/legislative-policy/nasaa-model-act-to-protect-vulnerable-adults-from-financial-exploitation/ (verify)

### 3.2 Suitability, Reg BI and fiduciary standards: why this is "unsuitable"
- **FINRA Rule 2111 (Suitability):** recommendations must be suitable based on the customer's **investment profile**: age, other investments, financial situation and needs, tax status, objectives, experience, **time horizon, liquidity needs, risk tolerance**. "**Quantitative suitability**" bans excessive trading even when each trade alone looks fine. https://www.finra.org/rules-guidance/rulebooks/finra-rules/2111
- **Regulation Best Interest** (17 CFR 240.15l-1, effective June 30, 2020) for broker-dealers, and the **adviser fiduciary duty** (IA-5248). Both require a reasonable basis to believe the recommendation, *including a strategy* such as frequent trading, is in the customer's **best interest**, considering costs and **reasonably available alternatives**. https://www.sec.gov/regulation-best-interest
- **Why speculative or automated day trading for retirees or people on subsistence income fails these tests:**
  1. **Liquidity and time horizon:** subsistence money is needed for rent, food and medicine on a monthly basis, with no capacity to wait out a drawdown.
  2. **Risk capacity ≠ risk appetite:** someone who cannot afford to lose money lacks risk *capacity*, even if they say they want high returns.
  3. **Evidence on outcomes:** studies of retail day traders show most lose money after costs (e.g., Barber, Lee, Liu & Odean on Taiwan; Chague, De-Losso & Giovannetti on Brazil, where ~97% of persistent day traders lost money). The SEC's own investor bulletins warn that day traders typically suffer severe losses early.
  4. **Cost drag and quantitative suitability:** high turnover, spreads, slippage and short-term tax rates.
  5. **Reasonably available alternatives:** for this population, an emergency fund, Treasury bills or a high-yield savings account, or low-cost diversified index funds, together with benefits counseling, are plainly better.
  6. **Model risk:** an untested autonomous AI with no independent validation, no audit trail and no kill switch is not a "reasonable basis".
  - SEC Investor.gov, *Day Trading* bulletin: https://www.investor.gov/introduction-investing/investing-basics/investment-products/stocks/day-trading (verify)
- The SEC's **FY2026 exam priorities** specifically flag automated tools and recommendations to **older investors**.

### 3.3 Public benefits: **critical** for low-income and older people
**Trading gains can cause someone to lose SSI and Medicaid, which can be far more costly than any trading profit.**

- **SSI resource limit: $2,000 individual / $3,000 couple** (unchanged for 2026). Countable resources include **cash, bank accounts, stocks, bonds, mutual funds and crypto**, measured as of the **first moment of each month**. If countable resources exceed the limit on the 1st of a month, **no SSI is payable for that month**. Overpayments must be repaid.
  - SSA, *Understanding SSI — Resources* (2026 ed.): https://www.ssa.gov/ssi/text-resources-ussi.htm
  - Bills to raise the limit (e.g., the *SSI Savings Penalty Elimination Act*, $10k/$20k) are **not enacted**.
- **How trading interacts with SSI (POMS):**
  - Selling a stock is a **conversion of a resource**, not income; the proceeds remain a resource (POMS **SI 00815.200**; 20 CFR 416.1103(c)). https://secure.ssa.gov/poms.nsf/lnx/0500815200
  - **Dividends and interest on countable resources are excluded from income** for SSI benefits payable on or after July 1, 2004 (POMS **SI 00830.500**). https://secure.ssa.gov/poms.nsf/lnx/0500830500
  - Virtual currency: POMS **SI 00830.102** and related resource guidance. https://secure.ssa.gov/poms.nsf/lnx/0500830102
  - **Net effect:** a person on SSI basically **cannot hold a brokerage account** of meaningful size. Any account above ~$2,000 (with their other cash) makes them ineligible. Even *depositing* money to trade with can push them over. **Transfers for less than fair value** (e.g., "giving" money to the student to trade) can trigger a **transfer-of-resources penalty** of up to 36 months: https://www.ssa.gov/ssi/spotlights/spot-transfer-resources.htm
  - Excluded alternatives exist: **ABLE accounts** (for disability onset before age 26, rising to 46 from Jan 1, 2026 under the ABLE Age Adjustment Act; first $100,000 excluded for SSI) and special needs trusts. These are the legitimate way to save while on SSI, not a trading bot.
  - ABLE NRC fact sheet: https://www.ablenrc.org/wp-content/uploads/2026/08/FactSheetOnSSIResourceLimitsAndCommonSolutions.pdf
- **Medicaid:**
  - In most states, SSI recipients get Medicaid automatically, so **losing SSI can mean losing Medicaid**.
  - **Aged/blind/disabled Medicaid** and long-term-care Medicaid have their own **asset tests** (often around $2,000; they vary by state). Nursing-home Medicaid also has a 60-month **look-back** for transfers.
  - **MAGI-based (expansion) Medicaid** and **ACA premium tax credits** have no asset test but count **capital gains in MAGI**, so a short-term gain can push a household over 138% FPL or change subsidies. Medicaid generally uses *current monthly income*.
  - Medicaid.gov eligibility overview: https://www.medicaid.gov/medicaid/eligibility/index.html
- **Medicare Savings Programs / Extra Help (Part D LIS)** have resource limits (roughly $9–10k individual for 2026; verify at medicare.gov/ssa.gov).
- **SNAP:** has an asset limit (about $3,000, or $4,500 if a household member is 60+ or disabled; many states waive it via broad-based categorical eligibility). Lump-sum gains generally count as resources. Verify: https://www.fns.usda.gov/snap/recipient/eligibility
- **Social Security retirement/disability (OASDI, not SSI):**
  - **Investment income, capital gains, dividends and interest do NOT count** toward the retirement **earnings test**. Only wages and net self-employment income count. https://www.ssa.gov/benefits/retirement/planner/whileworking.html
  - However, gains **raise "combined income"**, which can make up to 85% of Social Security benefits **taxable** (IRS Pub 915: https://www.irs.gov/publications/p915).
  - For Medicare enrollees, higher MAGI can trigger **IRMAA** Part B/D surcharges two years later: https://www.ssa.gov/benefits/medicare/medicare-premiums.html
  - **SSDI:** "trading as a business" could be scrutinized as work activity (SGA) if it is structured as self-employment (edge case; verify).
- **Housing assistance (HUD Section 8/public housing):** asset income and assets above $50,000 (HOTMA, indexed) are counted. Verify with the local PHA.

**Bottom line:** for anyone on SSI, Medicaid, SNAP or Extra Help, the expected *loss* from losing benefits dwarfs any realistic trading gain. Gains are as dangerous as losses.

---

## 4. Taxes

### 4.1 Basics
- **Short-term capital gains** (assets held ≤ 1 year) are taxed at **ordinary income rates**. Nearly all bot gains will be short-term. Long-term gains get 0/15/20% rates. **Net Investment Income Tax** of 3.8% applies above $200k/$250k MAGI. Reporting is on **Form 8949 / Schedule D**.
  - IRS Topic 409: https://www.irs.gov/taxtopics/tc409 ; Pub 550: https://www.irs.gov/publications/p550
- **Capital-loss limit:** net capital losses offset only **$3,000/yr** of ordinary income; the rest carries forward.
- **Estimated taxes:** gains are not withheld. Quarterly **Form 1040-ES** payments may be needed to avoid underpayment penalties. https://www.irs.gov/forms-pubs/about-form-1040-es
- **Students — the "kiddie tax" (IRC §1(g), Form 8615):** a full-time student **under 24** whose earned income doesn't exceed half their support has unearned income (including trading gains) above a threshold (about $2,700 for 2025, indexed; verify the 2026 figure) **taxed at the parents' marginal rate**. https://www.irs.gov/taxtopics/tc553
- **Section 1256 contracts** (regulated futures, broad-based index options): **60/40** long/short-term treatment and mark-to-market at year end, on Form 6781.

### 4.2 Wash-sale rule (IRC §1091)
- A loss is **disallowed** if you buy a "substantially identical" security within **30 days before or after** the sale. The disallowed loss is added to the basis of the replacement shares. It applies **across all your accounts**, including an IRA purchase (Rev. Rul. 2008-5, where the loss is permanently lost) and a spouse's account.
- **Bots that repeatedly trade the same ticker trigger wash sales constantly.** Brokers report wash sales only within the same account and identical CUSIP, so the taxpayer must track the rest. Tax software/the 1099-B may understate them.
- **Crypto:** §1091 applies to "stock or securities"; **digital assets are currently not covered** (most crypto is property, Notice 2014-21). **H.R. 9172** (introduced June 8, 2026, Rep. Arrington) and a bipartisan "Digital Asset PARITY Act" draft would extend wash-sale rules to digital assets. **Not enacted as of this writing**; watch for retroactive effective dates (H.R. 9172 as drafted covers taxable years after Dec 31, 2025).
  - https://arrington.house.gov/UploadedFiles/BILLS-119hr9172ih.pdf

### 4.3 Trader tax status (TTS) and the §475(f) mark-to-market election
- **TTS** is not an election. It is a facts-and-circumstances test: substantial, regular, continuous trading that seeks to profit from short-term price swings. With TTS, expenses (data, servers, software) are deductible on Schedule C. IRS **Topic 429**: https://www.irs.gov/taxtopics/tc429
- **§475(f) mark-to-market election** (available only with TTS): gains and losses become **ordinary**, so the **$3,000 cap and wash-sale rule no longer apply** to those securities. Positions are marked to market at year end. The election is reported on Form 4797.
- **Deadline (Rev. Proc. 99-17):** an existing taxpayer must attach the election statement to the **prior year's return (or extension) by its original due date**. For 2027, that is by about **April 15, 2027**. A new taxpayer must record it in its books within 2 months and 15 days of the start of the year. A late election is generally not allowed. Revocation requires IRS consent.
- Courts deny TTS to part-timers (e.g., *Endicott v. Commissioner*, *Poppe*, etc.). **An automated bot run by a student with modest volume is unlikely to qualify**, and courts have questioned whether algorithmic trading counts as the taxpayer's own "trading activity". Get CPA advice.

### 4.4 Crypto reporting: **Form 1099-DA**
- **Transactions on or after Jan 1, 2025:** custodial brokers (centralized exchanges, hosted wallets) report **gross proceeds** on Form 1099-DA. The first forms were furnished in early 2026.
- **Transactions on or after Jan 1, 2026:** **cost basis** reporting is added for "covered securities", i.e., digital assets acquired on or after Jan 1, 2026 in the same account. Optional de minimis methods apply for qualifying stablecoins and specified NFTs.
  - About Form 1099-DA: https://www.irs.gov/forms-pubs/about-form-1099-da ; 2026 instructions: https://www.irs.gov/instructions/i1099da ; broker FAQ: https://www.irs.gov/filing/frequently-asked-questions-about-broker-reporting
- **DeFi brokers are excluded.** The December 2024 DeFi broker rule was nullified by Congress under the Congressional Review Act (signed April 10, 2025; Pub. L. 119-5). The 1099-DA instructions confirm DeFi brokers are not required to file.
- **Every return asks the digital-asset question** (Form 1040, "At any time during the year did you… receive… or sell… a digital asset?").
- **Each person's own account → each person gets their own 1099-B/1099-DA.** If the student trades *in his own account* for others, **he** is taxed on all the gains and the "distributions" to friends become gifts or loans, which is a tax mess. Gifts above the annual exclusion ($19,000 in 2025/2026; verify) require Form 709.

---

## 5. Practical safe structures (in descending order of safety)

1. **Paper trading / academic project (recommended for school).**
   - Use broker paper-trading environments (e.g., Alpaca paper API, Interactive Brokers paper account) or historical backtests. Publish results with honest disclosures: hypothetical, no costs/slippage modeled (if true), past ≠ future.
   - This involves no registration, no client money and no benefits impact. It is ideal for a portfolio, thesis or competition. Frame it as **education/research**, and avoid "invest with me" language.
2. **Your own money only.** Keep it small and risk-limited (hard max position size, daily loss limit, kill switch). Use a cash account to avoid margin. Track wash sales and settle cash correctly.
3. **Open-source or self-serve software (if productising).** Publish code that **each user runs against their own account with their own API keys**, with identical functionality for everyone and no personalized tuning. Stay within the publisher's exclusion / CFTC 4.14(a)(9) logic.
   - Don't custody keys, funds or trade execution.
   - Write honest marketing: no performance promises and no "AI" overclaiming (Delphia/Global Predictions).
   - Use clear terms of service, risk disclosures, an "educational tool, not investment advice" notice, and age/eligibility gating.
   - Comply with broker API terms: **many brokers prohibit sharing login credentials** or third-party access outside approved OAuth/partner programs (e.g., Alpaca *Broker API* / OAuth apps, Schwab/IBKR third-party authorization processes).
   - Get a lawyer before charging money. Charging a **subscription for software** is a different analysis from charging for **management**.
4. **Helping a family member, for free, in *their* account.** The account must be in their name, at a regulated broker. Prefer having them install and run the open-source tool, with them making the go/no-go decisions.
   - If you must place trades: use the broker's **Limited Trading Authorization (LTA)** form, not a password. An LTA lets an agent trade but **not withdraw** funds. A **general/durable power of attorney** is broader and imposes **fiduciary duties** on the agent (Uniform Power of Attorney Act §114: act in good faith, in the principal's best interest, keep records, avoid conflicts). Brokers often require their own forms.
   - **No compensation of any kind**, a written understanding, the person's own kill switch, statements going to *them*, and a **trusted contact** on file.
   - **Never do this for someone on SSI, Medicaid or other means-tested benefits, or for anyone with cognitive decline.**
5. **Real business serving the public.** Form an entity and register as a **state RIA** (Form ADV via IARD). Pass the Series 65, adopt compliance policies, write a Form ADV Part 2 brochure and a Form CRS (if SEC-registered), maintain books and records, get E&O insurance, and consider partnering with a broker that offers an advisor platform. Performance fees are limited to qualified clients ($1.4M / $2.7M). Futures or crypto-derivatives strategies need CFTC/NFA analysis.

**Things to avoid entirely:**
- Pooling money.
- Accepting deposits into your account.
- Profit-sharing with non-qualified clients.
- Holding others' passwords or API keys.
- Margin or leverage for vulnerable people.
- Offshore crypto derivatives venues.
- Marketing "AI" returns.
- Touching money belonging to anyone on SSI or Medicaid.

---

## 6. Ethical considerations (beyond the law)
- **Asymmetry of harm:** a 20% drawdown is an inconvenience for a student but a missed rent payment, lost Medicaid or eviction for a person on subsistence income. Losses also damage family and friend relationships.
- **Autonomy and informed consent:** older or less-sophisticated people may consent out of trust, not understanding. Undue influence is the core of exploitation law, even when intentions are good.
- **Model risk and overconfidence:** backtest overfitting, regime change, API bugs, runaway order loops (cf. Knight Capital 2012, which lost about $440M in 45 minutes from a deployment error), LLM hallucination in "agentic" trading, and data-feed errors. An autonomous system needs hard limits, monitoring, logging and a human kill switch.
- **Honesty in claims:** describe what the system does in plain language. Report net-of-cost, out-of-sample, live (not backtested) results, including losses.
- **Fairness to low-income users:** if the goal is to help low-income or older people, the higher-impact and lower-risk project is a **benefits-aware budgeting or savings tool** (e.g., ABLE/SSI-aware savings guidance, fee-free index investing education, scam/AI-fraud detection for seniors) rather than speculative trading.

---

## 7. Key primary sources (quick list)
- Advisers Act §202(a)(11): https://www.law.cornell.edu/uscode/text/15/80b-2 · SEC IA-1092: https://www.sec.gov/rules/interp/ia-1092.pdf · Fiduciary interpretation IA-5248: https://www.sec.gov/rules/interp/2019/ia-5248.pdf
- *Lowe v. SEC*, 472 U.S. 181 (1985): https://supreme.justia.com/cases/federal/us/472/181/
- Robo-adviser guidance IM 2017-02: https://www.sec.gov/investment/im-guidance-2017-02.pdf
- PDA proposal S7-12-23 (withdrawn June 12, 2025): https://www.sec.gov/rules/2023/07/s7-12-23
- AI-washing PR 2024-36: https://www.sec.gov/newsroom/press-releases/2024-36
- SEC v. Fuller LR-26558: https://www.sec.gov/enforcement-litigation/litigation-releases/lr-26558 · PR 2025-144 · PR 2026-95 (links above)
- SEC/CFTC crypto interpretive release 33-11412: https://www.sec.gov/files/rules/interp/2026/33-11412.pdf
- NFA CTA registration: https://www.nfa.futures.org/registration-membership/who-has-to-register/cta.html · 17 CFR 4.14: https://www.ecfr.gov/current/title-17/chapter-I/part-4/subpart-C/section-4.14
- FINRA Reg Notice 26-10 (PDT replaced; effective June 4, 2026): https://www.finra.org/rules-guidance/notices/26-10
- FINRA Rule 2165: https://www.finra.org/rules-guidance/rulebooks/finra-rules/2165 · Rule 2111: https://www.finra.org/rules-guidance/rulebooks/finra-rules/2111 · Reg BI: https://www.sec.gov/regulation-best-interest
- SSA SSI resources: https://www.ssa.gov/ssi/text-resources-ussi.htm · POMS SI 00815.200, SI 00830.500, SI 00830.102 (links above) · Transfers: https://www.ssa.gov/ssi/spotlights/spot-transfer-resources.htm · Earnings test: https://www.ssa.gov/benefits/retirement/planner/whileworking.html
- IRS Topic 409, 429, 553; Pub 550; Pub 915; Form 1099-DA: https://www.irs.gov/forms-pubs/about-form-1099-da

*Not legal, tax or investment advice. Verify all figures (especially items marked "verify") against the primary source before relying on them.*
