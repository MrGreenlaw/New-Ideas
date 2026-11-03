# Automated Trading Strategies for an Individual: A Three-Tier Risk Case Study

*Prepared 2026-11-03. Research brief, not investment advice.*

**How to read the numbers.** A figure with a citation comes from that source. A figure marked **(est.)** is my estimate, built from the cited evidence plus practitioner norms. Treat estimates as orders of magnitude, not forecasts. All return ranges are nominal, long-run and before personal taxes unless stated. The comparison table treats "Sharpe-ish" as a rough risk-adjusted score. For reference, the U.S. stock market has historically scored about 0.3–0.5.

---

## 0. Executive summary

1. **The more automated and "edgy" a strategy looks, the less evidence there is that a retail account keeps the edge after costs.** Tier 1 strategies rest on about 100 years of data. Tier 2 rests on decades of peer-reviewed research, but the premia are modest and can lag for years. Tier 3 mostly rests on short track records, survivorship-filtered anecdotes and, for retail accounts, strongly negative aggregate results.
2. **Most of the reliable return comes from just staying invested.** S&P 500 total return has averaged about 10%/yr since 1926 (about 7% real) ([Hartford Funds](https://www.hartfordfunds.com/dam/en/docs/pub/whitepapers/CCWP091.pdf); [extension.org](https://personal-finance.extension.org/what-are-the-long-term-average-annual-returns-on-investments/)). The best-documented things automation adds are cost and tax efficiency: tax-loss harvesting is worth about 0.8–1.1%/yr in the academic study ([Chaudhuri, Burnham & Lo, FAJ 2020](https://dspace.mit.edu/handle/1721.1/135992)), plus behavioural discipline.
3. **Tier 2's value is mainly diversification, not higher return.** Trend following lost little in most equity bear markets and had a record 2022: SG Trend Index +27.35% ([Hedgeweek](https://www.hedgeweek.com/flat-december-sees-ctas-complete-record-year-2022/)). It also went through roughly flat or negative stretches in 2023–2025 ([Top Traders Unplugged](https://www.toptradersunplugged.com/trend-following-performance-report-october-2025/)).
4. **For retail, Tier 3 has negative expected value unless you hold a structural edge in speed, information or market access.** The evidence:
   - Only about 1% of Taiwanese day traders were predictably profitable ([Barber, Lee, Liu & Odean](https://faculty.haas.berkeley.edu/odean/papers/day%20traders/Day%20Trading%20Skill%20110523.pdf)).
   - 97% of persistent Brazilian futures day traders lost money ([Chague et al.](https://repositorio.fgv.br/items/e87d04fc-4b4c-4a56-ab5a-1c84c1afde1b/full)).
   - About 70–84% of Polymarket wallets lose money ([Motley Fool](https://www.fool.com/research/prediction-markets-vs-stock-market-returns/); [The Defiant](https://thedefiant.io/news/research-and-opinion/polymarket-profitability-report-april-2026)).
   - About 98.6% of pump.fun tokens show rug-pull or pump-and-dump traits ([Solidus Labs via BeInCrypto](https://beincrypto.com/pump-fun-tokens-scams-solidus-labs-report/)).
5. **Survival comes before return.** A 50% loss needs a 100% gain to recover. A 96% loss (XIV, February 2018) needs a 2,400% gain. Size every position so that the worst case you can imagine is survivable. That is the practical meaning of Kelly sizing and risk of ruin (Section 5).

---

## 1. TIER 1: Safest (capital preservation and market beta, highly automatable)

### 1.1 Automated index DCA (dollar-cost averaging)
- **How it works:** A scheduled buy of a broad index fund (e.g., a total-market ETF) on every paycheck, with dividends reinvested.
- **Return:** Same as the market, about 7–10%/yr nominal over the long run (S&P 500 about 10%/yr since 1926 ([Hartford Funds](https://www.hartfordfunds.com/dam/en/docs/pub/whitepapers/CCWP091.pdf))). Forward-looking 10-year estimates from many institutions are lower, at about 5–8% **(est.)**.
- **Max drawdown:** Equal to the market: about −55% in 2007–09 and about −86% in 1929–32. DCA softens the experience of a drawdown but does not shrink it.
- **Capital needed:** $1 and up, since fractional shares are widely available.
- **Automatability:** Very high. It is a native feature at almost every broker.
- **Evidence:** About 100 years of index data. Vanguard found that **lump-sum investing beats DCA about two-thirds of the time** (61.6–73.7% by market, 1976–2022), because markets rise more often than they fall. DCA's value is behavioural and limits regret ([Rob Berger summary of Vanguard](https://robberger.com/lump-sum-investing-vs-dollar-cost-averaging); [Vanguard UK](https://vanguard.co.uk/professional/vanguard-365/financial-planning/financial-well-being/cost-averaging)). For income invested as it is earned, DCA is simply the natural approach.
- **How it fails:** A long sideways market (Japan 1990–2010s, U.S. 2000–2012); stopping contributions in a crash; concentration in a single country.

### 1.2 Robo-advisors (Betterment, Wealthfront)
- **How it works:** An algorithm builds a diversified ETF portfolio for your risk score, then rebalances, harvests tax losses and reinvests automatically.
- **Return:** Market return minus about 0.25%/yr advisory fee minus fund expenses. For a 60–90% equity mix, about 5–8%/yr **(est.)**.
- **Max drawdown:** About −20% to −45% depending on equity share **(est.)**. Comparable 60/40 portfolios fell about 20–30% in 2008 and 2022.
- **Capital needed:** Betterment $0 minimum ($10 to start investing; a flat monthly fee applies below about $20–24k unless you have recurring deposits). Wealthfront $500 minimum. Both charge 0.25% ([NerdWallet 2026](https://www.nerdwallet.com/investing/learn/betterment-vs-wealthfront)).
- **Automatability:** Total. This is "set and forget."
- **Evidence:** Rests on standard asset-allocation and indexing research. The track records of the robo platforms themselves are only about 10–15 years old.
- **How it fails:** Fee drag on large balances, though it is small at 0.25%. Model portfolios sometimes lag (e.g., tilts to international or emerging markets that underperformed in 2010–2024). The investor can override the plan and sell at the bottom.

### 1.3 Tax-loss harvesting (TLH)
- **How it works:** Sell positions that are below cost to realize capital losses, buy a similar but not "substantially identical" fund, and use the losses to offset gains and up to $3k/yr of ordinary income.
- **Return added ("tax alpha"):** **1.08%/yr gross and 0.82%/yr under wash-sale constraints** (1926–2018, 500 largest U.S. stocks). Transaction costs subtract about 13 bp. Over 1949–1972 the alpha was only 0.51%/yr ([Chaudhuri, Burnham & Lo, FAJ 2020](https://dspace.mit.edu/handle/1721.1/135992); [CFA Institute summary](https://rpc.cfainstitute.org/research/financial-analysts-journal/2020/empirical-evaluation-tax-loss-harvesting-alpha)). Vendor claims are often higher; treat them as marketing.
- **Max drawdown:** Adds no market risk; drawdown is that of the underlying portfolio.
- **Capital needed:** Works in any taxable account. Direct-indexing variants work best above about $100k **(est.)**.
- **Automatability:** High. It is built into robos and direct-indexing platforms.
- **How it fails:** It is mostly a tax deferral, because your cost basis falls. The benefit fades as a portfolio ages and its losses run out. It is worthless in IRAs and 401(k)s. Wash-sale violations across accounts, including a spouse's IRA, can cancel it. It benefits most in volatile and down markets.

### 1.4 Periodic rebalancing
- **How it works:** Return to target weights on a calendar schedule (annually or quarterly) or when a weight drifts past a threshold band (e.g., ±5 pp).
- **Return:** Its main job is risk control. Any "rebalancing bonus" is small and depends on the regime, at about 0–0.5%/yr **(est.)**. In strongly trending markets, rebalancing can lower return.
- **Max drawdown:** Keeps the portfolio at its intended risk instead of drifting toward 100% equities.
- **Capital needed:** Any amount.
- **Automatability:** Very high.
- **How it fails:** Taxable gains when rebalancing in taxable accounts. Excessive trading. Buying more of an asset that keeps falling (single stocks, unlike broad indexes).

### 1.5 Treasury / T-bill ladders
- **How it works:** Hold staggered maturities (e.g., 4-, 8-, 13-, 26- and 52-week bills, or 1–10-year notes) and roll each one as it matures. Brokers offer automatic auto-roll.
- **Return:** T-bills have earned about **3.4%/yr since 1926**, roughly inflation plus 0.5% ([Morningstar/SBBI data via UW](https://faculty.washington.edu/ezivot/econ422/Risk%20&%20Return%20Updated.pdf); [extension.org](https://personal-finance.extension.org/what-are-the-long-term-average-annual-returns-on-investments/)). The 3-month bill yielded about **3.86–3.96% in mid-2026** ([MarketXLS](https://marketxls.com/indicators/3-month-treasury-bill-rate); [Slickcharts](https://www.slickcharts.com/treasury/3-month)). Check [FRED DTB3](https://fred.stlouisfed.org/series/dtb3) for the current rate.
- **Max drawdown:** About 0% nominal for bills held to maturity. The real risk is inflation: negative real returns in 1940s, 1970s and 2021–22 (est.). Longer notes can show mark-to-market losses before maturity.
- **Capital needed:** $100 per bill at TreasuryDirect or at brokers.
- **Automatability:** Very high (auto-roll).
- **How it fails:** Inflation shocks. Reinvestment risk when rates fall. Opportunity cost against equities over long horizons.

### 1.6 Risk-parity-lite
- **How it works:** Weight asset classes (stocks, Treasuries, TIPS, gold or commodities) by equal *risk* rather than equal dollars. "Lite" versions are unlevered, such as a permanent portfolio or an all-weather-style ETF mix. Full versions lever up the bonds.
- **Return:** About 4–7%/yr **(est.)**, with lower volatility than equities.
- **Max drawdown:** Usually shallower than equities, **but 2022 was a stress test.** The RPAR Risk Parity ETF fell **more than 32% from its November 2021 peak**, a record, because stocks and bonds fell together and the fund held leveraged long bonds (1.2x) ([Bloomberg](https://www.bloomberg.com/news/articles/2022-09-28/-perfect-storm-for-risk-parity-has-etf-posting-record-32-drop); [ETF Central](https://www.etfcentral.com/news/risk-parity-etfs-effective-2022)).
- **Capital needed:** Under $1k using ETFs.
- **Automatability:** High: rule-based weights plus rebalancing.
- **Evidence:** Strong 1970s–2020 backtests, which benefited from a 40-year bond bull market.
- **How it fails:** Stocks and bonds moving together during inflation shocks. Leverage on duration. Backtests that rely on the falling-rate era.

### 1.7 Dividend reinvestment (DRIP)
- **How it works:** Dividends automatically buy more shares.
- **Return:** Reinvested dividends have been a large share of long-run equity total return. Return is equal to the market, or to the factor exposure for dividend-tilted funds.
- **Max drawdown:** Market drawdown. Dividend funds fell about as much as the market in 2008.
- **Capital needed:** $1 and up.
- **Automatability:** Total.
- **How it fails:** Dividend *chasing* (high-yield value traps) concentrates you in financials and energy, which drew down heavily in 2008 and 2020. Dividends are taxed every year in taxable accounts, which makes them less tax-efficient than buybacks.

---

## 2. TIER 2: Middle (systematic rules, documented premia, multi-year underperformance risk)

### 2.1 Time-series trend following (managed-futures style)
- **How it works:** Go long assets whose 1-, 3- or 12-month return is positive and short those whose return is negative. Positions span equity-index, bond, currency and commodity futures, each sized to equal volatility.
- **Evidence:** Hurst, Ooi & Pedersen, *A Century of Evidence on Trend-Following Investing* (AQR / JPM 2017): 67 markets, 1880–2016, positive in every decade. The 10 largest drawdowns lost **up to about 25%** and lasted extended periods. On average the strategy did well in the worst 60/40 drawdowns ([paper PDF](https://fairmodel.econ.yale.edu/ec439/hurst.pdf); [AQR summary via TrendFollowing.com](https://www.TrendFollowing.com/whitepaper/Century_Evidence_Trend_Following.pdf)). Secondary coverage cites about 11% net excess return at about 10% volatility, after simulated 2/20 fees. These are **backtest** numbers. Real CTA indexes have earned far less since 2010.
- **Live track record:** SG Trend Index **+27.35% in 2022**, its best year since 2000 ([Hedgeweek](https://www.hedgeweek.com/flat-december-sees-ctas-complete-record-year-2022/); [The Full FX](https://thefullfx.com/year-end-drop-fails-to-dampen-stellar-2022-for-trend-followers/)). 2023 was roughly flat. August 2024 was −4.51% for the month. 2025 was about −5.3% YTD in September before recovering ([Top Traders Unplugged](https://www.toptradersunplugged.com/trend-following-week-in-review-september-12-2025-2/)).
- **Realistic return:** About 3–8%/yr over cash, net **(est.)**. Correlation to stocks has been near zero.
- **Max drawdown:** About −15% to −30% (live CTA indexes, 2011–2013 and 2016–2019 doldrums) **(est.)**.
- **Capital needed:** About $10k with managed-futures ETFs (DBMF, KMLM, CTA). A DIY futures version needs $100k–$1M+ to diversify across about 20+ markets with micro contracts **(est.)**.
- **Automatability:** High. Signals are daily or monthly, and it is a classic algorithm.
- **How it fails:** Choppy, range-bound markets. Sharp V-shaped reversals (e.g., April 2025). Long flat periods that cause investors to quit just before the payoff. Overfitted lookbacks.

### 2.2 Cross-sectional momentum rotation
- **How it works:** Each month, rank stocks, sectors or ETFs by their past 3–12-month return and hold the top group.
- **Evidence:** Jegadeesh & Titman (1993): winners minus losers earned **about 1% per month** over 3–12-month holds ([JT 1993 PDF](https://floridapsc.com/library/filings/2013/07457-2013/Support/Gulf's%20response%20to%20OPC's%201st%20POD,%20No.%2057/Jegadeesh%20and%20Titman%201993%20(140-167).pdf); [NBER follow-up](https://www.nber.org/system/files/working_papers/w7159/w7159.pdf)). The effect has been replicated internationally and across asset classes.
- **Crash risk:** Daniel & Moskowitz, *Momentum Crashes* (JFE 2016): in March–May 2009 the past-loser decile rose **163%** while winners rose 8%, a catastrophic loss for long-short momentum ([NBER w20439](https://www.nber.org/system/files/working_papers/w20439/w20439.pdf); [Chicago Booth Review](https://www.chicagobooth.edu/review/understanding-momentum-crashes)). A secondary source puts the 3-month 2009 loss above 73% for the long-short version ([Alpha Architect](https://alphaarchitect.com/avoiding-momentum-crashes/)).
- **Realistic return (long-only retail):** Market return plus 0–3%/yr, net of costs and taxes **(est.)**.
- **Max drawdown:** Long-only about −40% to −60% **(est.)**. Long-short versions have lost more than 70%.
- **Capital needed:** About $5k for a sector-ETF version. About $50k+ for stock-level versions to diversify **(est.)**.
- **Automatability:** High.
- **How it fails:** Sharp junk-rallies after bear markets (1932, 2009, Nov 2020 "vaccine Monday"). Turnover costs and short-term capital-gains tax.

### 2.3 Dual momentum (Antonacci "GEM")
- **How it works:** Each month, compare U.S. versus international equities and hold the stronger. If neither beats T-bills over 12 months (absolute momentum), hold bonds instead.
- **Evidence:** The book backtest (1974–2013) shows **17.43%/yr with −22.7% max drawdown versus 8.85% and −60.21% for the global index** ([Quant Investing](https://www.quant-investing.com/blog/how-much-can-dual-momentum-increase-your-investment-returns)). These are **in-sample**. Since publication (2014), independent analyses generally show GEM lagging the S&P 500 because of whipsaws in 2015–16, 2018, 2020 and 2022. I did not find a clean, independently audited out-of-sample number. Treat the claim that it beats buy-and-hold since 2014 as **unproven** ([AlgoEdge robustness review](https://algoedgeinsights.beehiiv.com/p/is-gary-antonacci-s-global-equity-momentum-strategy-robust)).
- **Realistic return:** About 6–9%/yr **(est.)**, with shallower drawdowns in slow bear markets.
- **Max drawdown:** About −20% to −30% **(est.)**. Fast crashes such as 2020 hit before the monthly signal flips.
- **Capital needed:** About $1k (three ETFs).
- **Automatability:** Very high: one decision a month.
- **How it fails:** Whipsaw in V-shaped markets. Single-lookback fragility, because results are highly sensitive to the 12-month window and the rebalance day. Tax drag. 2022, when bonds were the "safe" asset and also fell.

### 2.4 Volatility targeting
- **How it works:** Scale exposure inversely to recent volatility (e.g., target 10–15% annualized). When volatility spikes, cut equity and hold cash; when it is calm, raise exposure, possibly to more than 1x.
- **Evidence:** Moreira & Muir (JF 2017) found higher Sharpe ratios for volatility-managed factors. **But** Cederburg, O'Doherty, Wang & Yan (JFE 2020) tested 103 strategies and found real-time volatility-managed portfolios **do not systematically beat** unmanaged ones out of sample. Barroso & Detzel find the gains do not survive transaction costs. DeMiguel et al. (JF 2024) recover about a 13% Sharpe improvement out of sample in a multifactor setting ([Lehigh PDF, Cederburg et al.](https://www.lehigh.edu/~xuy219/research/COWY.pdf); [DeMiguel et al.](https://lbsresearch.london.edu/id/eprint/3716); [Alpha Architect](https://alphaarchitect.com/does-portfolio-timing-based-on-volatility-signals-outperform-buy-and-hold/)).
- **Realistic return:** About market-like, with smoother path and lower tail risk **(est.)**. The robust benefit is **drawdown control** rather than extra return.
- **Max drawdown:** About −20% to −35% **(est.)**.
- **Capital needed:** About $1k.
- **Automatability:** High.
- **How it fails:** Gap crashes (e.g., February 2018, the March 2020 first leg) that arrive before the volatility signal. Selling after the drop and re-buying late. Leverage in calm regimes before a shock. Industry-wide volatility-target deleveraging amplifies selloffs.

### 2.5 Mean-reversion swing trading on liquid ETFs
- **How it works:** Buy short-term oversold conditions (e.g., 2-day RSI below 10, or 3 down days) in SPY or QQQ while the asset is above its 200-day average, then sell into a bounce within 2–10 days.
- **Evidence:** Short-term reversal in index ETFs is widely documented in practitioner backtests (Connors-style). Academic short-term reversal is strongest in illiquid single stocks and has decayed since the 1990s. Expect **published backtests to overstate live results by a lot** because of overfitting and look-ahead bias **(est.)**.
- **Realistic return:** 0–4%/yr of edge over the time actually invested. The strategy sits in cash about 70–80% of the time, so on its own it often trails buy-and-hold **(est.)**.
- **Max drawdown:** About −15% to −35% (buying dips into 2008- or 2022-style trends) **(est.)**.
- **Capital needed:** About $2–25k. Note that the U.S. pattern-day-trader rule was historically $25k for margin day trading; check current FINRA rules.
- **Automatability:** High (broker APIs such as Alpaca or IBKR).
- **How it fails:** Regime change into persistent trends. Slippage. Crowding. Data-mined parameters.

### 2.6 Covered calls / cash-secured put "wheel"
- **How it works:** Sell out-of-the-money puts backed by cash. If assigned, hold the shares and sell calls against them. The strategy collects option premium, which is the volatility risk premium.
- **Evidence:** Cboe PutWrite (PUT) returned **9.40%/yr against 9.91% for the S&P 500, with about 10.3% volatility against 15.4%** (July 1986–August 2023) ([Cboe](https://www.cboe.com/insights/posts/key-cboe-benchmark-indexes-using-spx-options-offer-strong-risk-adjusted-returns/); [Bondarenko via Cboe](https://www.cboe.com/insights/posts/generating-income-and-managing-risk-cash-secured-put-writing-in-a-low-equity-return-environment)). BuyWrite (BXM) has trailed the S&P by about 2–3 pp/yr over the long run, with lower volatility (secondary: [ThetaEdge](https://thetaedge.ai/blog/covered-calls-index-returns-study-insights)).
- **Realistic return:** Equity return minus 0–3%/yr, with about two-thirds the volatility **(est.)**.
- **Max drawdown:** About −30% to −40% (the PUT index in 2008) **(est.)**. You keep most of the downside and cap the upside.
- **Capital needed:** One SPY put needs about $60k+ of cash backing at mid-2020s prices. XSP mini options or single stocks need about $5–20k **(est.)**.
- **Automatability:** Medium to high. Brokers allow automated rolls, but assignment and edge cases need monitoring.
- **How it fails:** Selling puts on single stocks that collapse ("picking up nickels in front of a steamroller"). Capped upside in V-shaped rallies. Ordinary-income tax treatment on the premium.

### 2.7 Factor tilts (value, size, quality, low-volatility, momentum)
- **How it works:** Overweight stocks with factor characteristics using rules-based ETFs.
- **Evidence:** Decades of Fama-French and AQR literature. **However, value suffered its largest-ever drawdown:** HML fell about 51% from January 2007 to March 2020, and about 42% from 2017 to 2020 alone ([Alpha Architect](https://alphaarchitect.com/do-interest-rates-explain-values-underperformance/)). AQR's *Is (Systematic) Value Investing Dead?* concluded it was not dead ([AQR](https://www.aqr.com/Insights/Research/Journal-Article/Is-Systematic-Value-Investing-Dead)).
- **Realistic return:** Market plus 0–2%/yr before fees, with high tracking error **(est.)**.
- **Max drawdown:** About the market's, plus multi-year relative drawdowns (more than 10 years for value).
- **Capital needed:** About $1k (ETFs).
- **Automatability:** Total (buy the ETF).
- **How it fails:** Premia compressing after publication. Crowding. Investors quitting during a lost decade.

---

## 3. TIER 3: Bleeding edge (high leverage, speed games, new markets)

### 3.1 Intraday day-trading bots (equities and futures)
- **How it works:** A bot trades intraday signals (breakouts, VWAP reversion, order-flow) and is flat by the close.
- **Evidence (retail):**
  - **Taiwan:** In a ~1992–2006 sample, more than 80% of day traders lost money, and **fewer than 1% were predictably profitable** after fees ([Barber, Lee, Liu & Odean](https://faculty.haas.berkeley.edu/odean/papers/day%20traders/Day%20Trading%20Skill%20110523.pdf); [CXO summary](https://www.cxoadvisory.com/individual-investing/do-day-traders-make-money/)).
  - **Brazil:** Among people who day traded mini-Ibovespa futures for 300+ days, **97% lost money**, and only about 1.1% earned more than minimum wage ([Chague, De-Losso & Giovannetti](https://repositorio.fgv.br/items/e87d04fc-4b4c-4a56-ab5a-1c84c1afde1b/full)).
  - Bots remove emotion, but they face the same professionals with better latency, data and costs.
- **Realistic return (median retail):** Negative **(est.)**.
- **Max drawdown:** −50% to −100% of the allocated account **(est.)**.
- **Capital needed:** $25k+ historically (U.S. pattern-day-trader rule), plus data and VPS costs.
- **Automatability:** High technically; the hard part is having an edge.
- **How it fails:** Overfitted backtests, slippage, latency, API outages, runaway order loops (see Knight Capital).

**Case study: Knight Capital (August 1, 2012).** A deployment error re-activated dead code on one of eight servers. In about 45 minutes the system sent erroneous orders, traded about 397M shares, and lost **about $440M pre-tax**. Knight needed a $400M rescue financing within days and was later acquired. The SEC fined it $12M for market-access-rule violations ([Knight 8-K](https://www.sec.gov/Archives/edgar/data/0001060749/000119312512336167/d392288d8k.htm); [Knight 10-Q](https://www.sec.gov/Archives/edgar/data/0001060749/000119312512346917/d361681d10q.htm); [Wikipedia](https://en.wikipedia.org/wiki/Knight_Capital_Group)). *Lesson for an individual:* add hard position and loss limits, a kill switch and deploy checks. An automated bug compounds at machine speed.

### 3.2 0DTE options
- **How it works:** Trade options expiring the same day (SPX or SPY), either buying lottery-like convexity or selling premium for theta.
- **Evidence:** Beckmeyer, Branger & Gayda (2023) found retail traders lost on average **$358k per day** after daily expirations began in May 2022. That is more than $70M over two years, and more than $50M of it was transaction costs (spreads). About 75% of retail SPX option trades are 0DTE ([BNN Bloomberg](https://www.bnnbloomberg.ca/day-traders-lose-358-000-per-day-gambling-on-zero-day-options-1.1910634); [WealthManagement/Swedroe](https://www.wealthmanagement.com/equities/retail-investors-are-love-same-day-options)). The aggregate dollar loss is small relative to volume. The structural problem is that spread costs dominate small accounts.
- **Realistic return:** Buyers are negative on average. Sellers earn a small positive premium with crash-tail exposure **(est.)**.
- **Max drawdown:** Premium sellers can lose many months of gains in one gap day. Undefined-risk short options can lose more than the account **(est.)**.
- **Capital needed:** $2–25k (defined-risk spreads); margin approval required.
- **Automatability:** High (option APIs). Execution quality is critical.
- **How it fails:** Gamma explosion near expiry, bid-ask spreads, intraday news shocks, leverage.

### 3.3 Leveraged ETF rotation (TQQQ, UPRO, SOXL, etc.)
- **How it works:** Hold 2–3x daily-reset ETFs, often with a trend filter (e.g., hold TQQQ above the 200-day average, otherwise cash or bonds).
- **Evidence:** TQQQ fell **about −81.7% from November 2021 to December 2022**, against about −33% for QQQ, and took about 486 sessions to recover ([VT Markets](https://www.vtmarkets.com/?p=60374); [ChartRow](https://chartrow.com/quote/tqqq/drawdown)). A simulated 3x Nasdaq through 2000–02 would have been wiped out by about 99% (well-known simulation; **est.**). Backtests since 2010 look spectacular because they are dominated by a single bull run (survivorship and regime bias).
- **Volatility decay (plain language):** Daily reset means a −10% then +10% day leaves the 1x fund at −1%. The 3x fund ends at −30% then +30%, which is −9%. A rough rule: the long-run drag is about (L² − L) × σ² / 2. At 3x with 25% index volatility, that is about **(9 − 3) × 0.0625 / 2 ≈ 19%/yr** of drag relative to 3x the index return **(est.; approximation)**.
- **Realistic return:** Highly path-dependent, anywhere from −100% to +40%/yr **(est.)**.
- **Max drawdown:** −60% to −99% unfiltered. A trend filter can cut it to about −40% to −60%, but gap risk remains **(est.)**.
- **Capital needed:** About $1k.
- **Automatability:** Very high.
- **How it fails:** Whipsaw around the filter. Gap-down days (a 33% one-day index drop would zero a 3x fund). Issuer termination (see XIV).

**Case study: XIV (February 5, 2018, "Volmageddon").** Credit Suisse's inverse-VIX ETN **lost about 96% of its value in a single session** after the VIX spiked, triggering an "acceleration event" and termination of the note. Investors who had treated short volatility as a steady income bot were wiped out ([Reuters via Investing.com](https://investing.com/news/stock-market-news/credit-suisse-defeats-lawsuits-over-huge-us-volatility-crash-1986182); [InvestingLive](https://investinglive.com/news/!/rip-xiv-credit-suisse-declares-acceleration-event-will-close-etn-20180206/)). *Lesson:* a strategy that has never had a losing year may simply be selling insurance against a rare disaster.

### 3.4 Crypto perpetual futures with leverage
- **How it works:** Use 5–100x leverage on perpetual swaps (Binance, Bybit, Hyperliquid), often through grid, DCA or martingale bots.
- **Evidence and blowups:**
  - **October 10–11, 2025:** the largest crypto liquidation day on record, at **about $19B** liquidated ($16.7B longs), about $10B of it on Hyperliquid. Auto-deleveraging (ADL) forcibly closed even *profitable* hedges. CoinShares suggests the real losses could exceed $50B ([KuCoin/CoinGlass data](https://www.kucoin.com/news/flash/crypto-market-sees-19-15b-liquidation-event-on-october-10-2025); [CoinShares](https://coinshares.com/at/insights/knowledge/billions-in-liquidations-what-happened/); [The Defiant](https://thedefiant.io/newsletter/defi-daily/the-ultimate-10-10-crash-autopsy)).
  - **James Wynn (May 2025):** a Hyperliquid trader ran up a position of about $1.25B at 40x and **lost about $100M** when BTC fell below $105k. He was later liquidated repeatedly ([The Block](https://www.theblock.co/news/ecosystems/2025-05-30-hyperliquid-trader-james-wynn-hit-with-over-100-million-loss-as-leveraged-bitcoin-trade-unravels-356341); [DL News](https://www.dlnews.com/articles/defi/hyperliquid-trader-james-wynn-liquidated-nine-times)).
- **Realistic return:** Negative median **(est.)**. At 20x, a 5% adverse move wipes out the position.
- **Max drawdown:** −100% is common. At high leverage the question is when, not whether.
- **Capital needed:** $10 and up, which is part of the danger.
- **Automatability:** Very high (exchange APIs).
- **How it fails:** Liquidation cascades, ADL, oracle or exchange outages, exchange insolvency (FTX 2022), API-key theft (below).

**Case study: 3Commas API-key leak (2022).** About 100,000 exchange API keys used by this popular trading-bot platform leaked, and 10,000 were published. Attackers used them to push victims' funds into illiquid pump trades. Reported losses were about **$14M–$27M**, the FBI investigated, and exchanges mostly declined to reimburse ([BleepingComputer](https://www.bleepingcomputer.com/news/security/crypto-platform-3commas-admits-hackers-stole-api-keys); [ForkLog/HAPI](https://forklog.com/en/api-key-leaks-and-exchange-inaction-a-hapi-analysis-of-the-3commas-incident/)). *Lesson:* third-party bot platforms add custody and counterparty risk on top of market risk. Use trade-only keys with no withdrawal permission and IP whitelists.

**Case study: Terra/LUNA and Three Arrows Capital (May–June 2022).** The algorithmic stablecoin UST de-pegged and about **$40B** of UST and LUNA value collapsed. 3AC's LUNA stake fell from about $462M to about $2,700 within weeks. The fund was ordered into liquidation on June 27, 2022, which dragged down lenders Voyager, Celsius and BlockFi ([CNBC](https://www.cnbc.com/2022/07/11/how-the-fall-of-three-arrows-or-3ac-dragged-down-crypto-investors.html/); [Decrypt](https://decrypt.co/104058/crypto-fund-three-arrows-capital-ordered-to-liquidate-report?amp=1); [Decrypt on $1.3B claim](https://decrypt.co/244427/three-arrows-capital-liquidators-file-1-3-billion-claim-against-terraform-labs?amp=1)). *Lesson:* "yield" automation (Anchor's about 20%) was really unhedged credit and peg risk. Leverage plus correlated collateral turns a large fund into zero.

### 3.5 Funding-rate / basis arbitrage (cash-and-carry)
- **How it works:** Buy spot crypto and short an equal amount of perpetual futures, collecting the funding rate that longs pay shorts. The position is delta-neutral.
- **Evidence:** BIS WP 1087 (*Crypto carry*, Schmeling, Schrimpf & Todorov) found the basis **averages above 10%/yr and sometimes exceeds 40%**. It is driven by trend-chasing retail demand and limited arbitrage capital, and high carry **predicts crashes** ([BIS](https://www.bis.org/publ/work1087.htm)). Ethena's own data shows **15.9–17.5% of days with negative funding** for BTC and ETH ([Ethena docs](https://docs.ethena.fi/solution-overview/risks/funding-risk)). sUSDe realized about 4–30% APY in 2024–25, falling to about 4.5–5% recently (secondary: [Eco](https://eco.com/support/en/articles/15254002-ethena-usde-and-susde-2026-delta-neutral-yield)). A 2025 survey finds carry **compressed sharply since 2024** as ETFs and institutional capital arrived ([arXiv 2510.14435](https://arxiv.org/pdf/2510.14435)).
- **Realistic return:** About 3–10%/yr net in normal regimes, with brief spikes **(est.)**. Fat left tail.
- **Max drawdown:** Usually small, **but** exchange failure (FTX), ADL closing the short leg (October 2025) or a stablecoin de-peg can produce −20% to −100% on the affected venue **(est.)**.
- **Capital needed:** About $10k to be worth the fees. Multi-venue setups need $100k+ **(est.)**.
- **Automatability:** High.
- **How it fails:** Counterparty and custody risk dominates. Margin spikes on the short leg. Negative funding regimes. Crowding as more capital chases the same trade.

### 3.6 DeFi / MEV (maximal extractable value)
- **How it works:** Bots reorder, insert or "sandwich" on-chain transactions, run DEX arbitrage, and perform liquidations, bidding for block inclusion through builders such as Flashbots.
- **Evidence:** The famous sandwich bot "jaredfromsubway.eth" took in **about $40.6M in revenue in under 3 months of 2023 but paid about $34.4M in gas, for about $6.3M profit**. At its peak it consumed about 7% of all Ethereum gas ([EigenPhi](https://eigenphi.substack.com/p/performance-appraisal-of-jaredfromsubway-eth?open=false); [The Block](https://www.theblock.co/post/227110/mev-trading-bot-memecoins-subway)). The bot was itself later drained by counter-MEV "honeypots" ([Coin360](https://coin360.com/news/jaredfromsubway-mev-bot-drained-7-5m)). MEV is a winner-take-most auction among professional searchers with custom infrastructure.
- **Realistic return for a newcomer:** Approximately zero or negative after gas and competition **(est.)**.
- **Max drawdown:** Smart-contract bugs or being "bait-and-switched" can drain a bot's whole working capital.
- **Capital needed:** $10k–$1M+ of working capital, plus serious engineering.
- **Automatability:** Fully automated by necessity.
- **How it fails:** Losing the latency and gas arms race. Exploits. Legal risk: U.S. prosecutors have charged MEV-exploit cases as wire fraud. Sandwiching is also extraction from other retail users, which is an ethical issue.

### 3.7 Prediction-market bots (Kalshi, Polymarket)
- **How it works:** Market-making, cross-market or "complete-set" arbitrage (YES+NO prices that do not sum to $1), plus model-based forecasting on sports, elections, macro and crypto contracts.
- **Evidence:**
  - Saguillo et al. (2025) estimate **about $40M in realized arbitrage profits** extracted on Polymarket, concentrated among a small number of sophisticated actors ([arXiv 2508.03474](https://arxiv.org/abs/2508.03474v1)).
  - Platform-wide profitability is poor: the Motley Fool's 2026 analysis of about 313k wallets found **more than 82% lost money**, with the top 1% capturing about 85% of profits. Other studies put the losing share at about 69–84% ([Motley Fool](https://www.fool.com/research/prediction-markets-vs-stock-market-returns/); [The Defiant](https://thedefiant.io/news/research-and-opinion/polymarket-profitability-report-april-2026); [Tangem](https://tangem.com/en/news/markets/7806-polymarket-profits-70-lose-tiny-elite-take-3-7b/)).
- **Realistic return:** Pure arbitrage gives small but positive returns for fast, well-capitalized bots, and decays as competition grows. Directional forecasting is negative for the median participant **(est.)**.
- **Max drawdown:** Arbitrage −5% to −20% (leg risk, resolution disputes). Directional betting up to −100% **(est.)**.
- **Capital needed:** $1k–$100k. Liquidity in individual markets limits size.
- **Automatability:** High (APIs on both platforms).
- **How it fails:** Disputed or ambiguous resolution (oracle risk). Thin books. Jurisdictional and regulatory change. Fees. Capital locked until resolution.

### 3.8 LLM news / sentiment trading
- **How it works:** An LLM scores headlines, filings or social posts and the bot trades on the score. Newer versions are "agentic" LLMs trading autonomously.
- **Evidence:**
  - Lopez-Lira & Tang's widely cited paper (2023) found ChatGPT headline scores predicted next-day returns. **The October 2025 revision reports that strategy returns *decline* as LLM adoption rises**, consistent with the edge being arbitraged away ([arXiv 2304.07619v6](https://arxiv.org/abs/2304.07619v6)).
  - Live test: nof1's **Alpha Arena Season 1** (October–November 2025) gave six frontier LLMs $10k each to trade crypto perps. **Four of six lost money.** Qwen3-Max won with +22.3%, and GPT-5 lost more than 60% through overtrading and excess leverage. The organizers themselves caution it was short and statistically meaningless ([ForkLog](https://forklog.com/en/four-out-of-six-ai-models-suffer-losses-in-trading-tournament/); [SCMP](https://www.scmp.com/tech/tech-trends/article/3329784/deepseek-outperforms-ai-rivals-real-money-real-market-crypto-showdown)).
  - A study of about 925k crypto wallets using AI-agent platforms found **62% realized losses**, about $192M in aggregate. Agent-wallet hacks were reported in 2026 (e.g., Bankr, May 2026) ([TheStreet](https://www.thestreet.com/crypto/trading/study-finds-most-ai-crypto-trading-agents-arent-really-trading)).
- **Realistic return:** Unknown, and likely approximately zero after costs for retail latency. Any edge decays quickly **(est.)**.
- **Max drawdown:** Highly variable; with leverage, −50% to −100% (Alpha Arena) **(est.)**.
- **Capital needed:** About $1k plus API costs.
- **Automatability:** Very high, which is the risk: hallucinated signals, prompt injection through news content, and no hard risk limits unless you code them.
- **How it fails:** Latency (institutions trade on headlines in microseconds). Look-ahead contamination in backtests, because LLMs have "read the future" in their training data. Overtrading. Adversarial or fake news.

### 3.9 Memecoin sniping
- **How it works:** Bots (Telegram "snipers" on Solana or Base) buy new tokens in the first blocks after launch, hoping to sell into the hype.
- **Evidence:** Solidus Labs found **98.6% of more than 7M pump.fun tokens** (January 2024–March 2025) were linked to rug pulls or pump-and-dumps. Fewer than 100k kept $1k+ of liquidity, and **93% of Raydium pools** showed soft-rug traits ([BeInCrypto](https://beincrypto.com/pump-fun-tokens-scams-solidus-labs-report/); [The Defiant](https://thedefiant.io/news/defi/alarming-99-of-memecoin-launches-on-pumpfun-are-pump-and-dumps-or-rug-pulls-report)).
- **Realistic return:** Strongly negative for the median sniper. Winners are dominated by insiders and the fastest infrastructure **(est.)**.
- **Max drawdown:** −100% per position is the base case.
- **Capital needed:** Under $100 to start, which is part of the lure.
- **Automatability:** Total.
- **How it fails:** Rugs, honeypot contracts, malicious sniper-bot software (wallet drainers), adverse selection by the token creators.

### 3.10 Genuine success cases and the survivorship caveat
- **Professional quant firms** (Renaissance Medallion, Jane Street, Citadel Securities, Jump, Wintermute) show that automated trading *can* be extremely profitable. Their edges come from infrastructure, data, capital, exchange relationships and hundreds of PhDs, and Medallion is closed to outside money. These edges are not available to an individual.
- **Retail winners exist.** Examples are Polymarket arbitrageurs (about $40M extracted in aggregate), early MEV searchers, and individual 2021-cycle leveraged traders. They are a tiny tail: the top 1% of Polymarket wallets took about 76–85% of profits, and fewer than 1% of Taiwanese day traders showed persistent skill.
- **Survivorship bias:** Social media shows the 1-in-1,000 winner. The 999 accounts that went to zero do not post. Public strategies and "proven bots" sold online are selected for past luck. If an edge were real and scalable, the seller would usually keep it.
- **Edges decay:** LLM news signals (Lopez-Lira v6), crypto carry (2025 survey) and Polymarket arbitrage all show compression once capital floods in.

---

## 4. Comparison table

All CAGR, drawdown and Sharpe figures are **estimates** synthesized from the evidence above. Long-run, nominal, before personal taxes. "Automation difficulty" means how hard it is to build and run reliably yourself (1 = trivial, 5 = expert/engineering-heavy).

| Tier | Strategy | Expected CAGR (est.) | Typical max drawdown (est.) | Sharpe-ish (est.) | Automation difficulty | Capital minimum (practical) |
|---|---|---|---|---|---|---|
| 1 | Automated index DCA | 6–10% | −35% to −55% | 0.3–0.5 | 1 | $1 |
| 1 | Robo-advisor (60–90% equity) | 5–8% (net 0.25% fee) | −20% to −45% | 0.3–0.5 | 1 | $0–$500 |
| 1 | Tax-loss harvesting (add-on) | +0.5–1.1%/yr after-tax | n/a (no added risk) | n/a | 1–2 | Any taxable acct; best >$100k |
| 1 | Periodic rebalancing (add-on) | +0–0.5%/yr; risk control | Keeps target risk | +0–0.05 | 1 | Any |
| 1 | T-bill / Treasury ladder | 3–4.5% (now ~3.6–3.9%) | ~0% nominal; negative real in inflation | n/a (≈ cash) | 1 | $100 |
| 1 | Risk-parity-lite (unlevered) | 4–7% | −15% to −30% (2022) | 0.3–0.6 | 2 | ~$1k |
| 1 | Dividend reinvestment | Market (6–10%) | −35% to −55% | 0.3–0.5 | 1 | $1 |
| 2 | Trend following / managed futures | Cash + 3–8% | −15% to −30% | 0.3–0.7 | 2 (ETF) / 4 (DIY futures) | $10k ETF / $100k+ DIY |
| 2 | Cross-sectional momentum (long-only) | Market + 0–3% | −40% to −60% | 0.4–0.6 | 2–3 | $5k–$50k |
| 2 | Dual momentum (GEM) | 6–9% | −20% to −30% | 0.4–0.6 | 1–2 | $1k |
| 2 | Volatility targeting | Market-like | −20% to −35% | 0.4–0.6 | 2 | $1k |
| 2 | ETF mean-reversion swing | Cash + 0–4% | −15% to −35% | 0.3–0.8 (backtest-inflated) | 3 | $2k–$25k |
| 2 | Covered calls / put wheel | Market − 0–3% | −30% to −40% | 0.4–0.6 | 3 | $5k (mini) / $60k (SPY) |
| 2 | Factor tilts | Market + 0–2% | Market plus multi-year relative DD | 0.3–0.6 | 1 | $1k |
| 3 | Intraday day-trading bot | Negative median | −50% to −100% | <0 median | 4 | $25k+ |
| 3 | 0DTE options | Buyers negative; sellers small + with tail | −50% to −100%+ | <0 buyers | 4 | $2k–$25k |
| 3 | Leveraged ETF rotation | −100% to +40% (path-dependent) | −60% to −99% | 0.2–0.6 (highly unstable) | 2 | $1k |
| 3 | Crypto perps with leverage | Negative median | −100% common | <0 median | 3 | $10 |
| 3 | Funding/basis arbitrage | 3–10% (compressing) | Small, with −20% to −100% venue-failure tail | 1–3 apparent (hides tail) | 4 | $10k+ |
| 3 | DeFi / MEV | ~0 or negative for entrants | Up to −100% of working capital | n/a | 5 | $10k–$1M+ |
| 3 | Prediction-market bots | Arb small +; directional negative | −5% to −100% | Arb high/small capacity | 4 | $1k–$100k |
| 3 | LLM news/sentiment bot | ~0 after costs; decaying | −50% to −100% with leverage | Unknown | 3–4 | $1k + API |
| 3 | Memecoin sniping | Strongly negative median | −100% per position | <0 | 3 | <$100 |

---

## 5. Risk of ruin and Kelly sizing (plain language, for a business audience)

### 5.1 Drawdowns are asymmetric
| Loss | Gain needed to get back to even |
|---|---|
| −10% | +11% |
| −25% | +33% |
| −50% | +100% |
| −80% (TQQQ 2022) | +400% |
| −96% (XIV 2018) | +2,400% |
| −100% | Impossible |

**The single most important rule: never take a bet that can produce −100%.** A strategy that is profitable 99 years out of 100 but loses everything in year 100 has an expected long-run wealth of zero.

### 5.2 Risk of ruin
*Risk of ruin* is the probability that a sequence of losses takes your account below the point of no recovery, which is either zero or a level at which you would quit. It depends on three things:
1. **Your edge:** how much you expect to win per bet.
2. **Your bet size:** how much of the account each trade risks.
3. **The tails:** how bad the worst day can be (gaps, liquidations, exchange failure).

Even with a genuine positive edge, betting too large makes ruin almost certain over enough trades. Leverage does not change the edge; it multiplies the bet size. Example (illustrative): a coin flip that pays 2:1 is a great bet, but staking 100% of your bankroll on it loses everything the first time tails comes up.

### 5.3 The Kelly criterion
- **Idea:** Kelly (1956), later popularized by Ed Thorp, gives the bet size that **maximizes long-run compound growth**. Bet more than Kelly and growth *falls* while risk rises; bet twice Kelly and expected long-run growth is about zero.
- **Simple formula for a repeated bet:** *Kelly fraction = edge ÷ odds.* Example: a bet that wins 55% of the time at even money has an edge of 10%, so Kelly says risk 10% of the bankroll per bet.
- **Portfolio version:** *Optimal leverage ≈ expected excess return ÷ variance.* Example **(illustrative)**: an equity index with a 5% expected premium over cash and 18% volatility gives 0.05 ÷ 0.0324 ≈ 1.5x leverage. That figure assumes you *know* the true edge, which nobody does.
- **Why professionals use "half Kelly" or less:** Edge estimates are noisy and usually overstated by backtests. Half Kelly gives about **75% of the growth with about half the volatility**, and protects against overestimating the edge. For an individual whose edge is uncertain (all of Tier 3), the honest Kelly bet is often **close to zero**.
- **Volatility drag (the hidden cost of leverage):** Compound growth ≈ average return − ½ × variance. Doubling leverage doubles the average return but quadruples the variance penalty. This is why 3x leveraged ETFs can lose money even when the index rises over a choppy period.

### 5.4 Practical sizing rules for an automated individual portfolio (illustrative)
1. **Core-satellite:** put 80–95% in Tier 1, 5–20% in Tier 2 diversifiers (e.g., managed futures), and **0–5% in Tier 3**, treated as tuition or speculation money that you can lose 100% of.
2. **Per-trade risk caps** for any active bot: 0.5–2% of the account per trade. Hard daily loss limits. A kill switch.
3. **Operational hygiene:** use API keys with no withdrawal permission, IP whitelisting and staged deploys (the Knight lesson), and spread holdings across custodians (FTX and 3Commas lessons).
4. **Judge a strategy by its worst case, not its average.** Ask: "What happened in 2008, March 2020, February 2018, 2022 and October 10, 2025?"

---

## 6. Bottom line by tier

| Tier | What you are really earning | Main failure mode | Fit for an individual |
|---|---|---|---|
| 1 | Market beta, plus tax and cost efficiency | Behavioural (selling in a crash), inflation | **Core holding.** Fully automatable, strongest evidence |
| 2 | Documented but modest risk premia and diversification | Multi-year underperformance, whipsaw, overfitting | **Satellite (5–20%)** via low-cost ETFs; DIY only with discipline |
| 3 | Mostly zero-sum or negative-sum speed and leverage games against professionals | Ruin: leverage, counterparty or code failure, fraud | **Speculation budget only (0–5%)**; assume total loss |

---

## Sources (key)
- Chaudhuri, Burnham & Lo (2020), tax-loss harvesting alpha: https://dspace.mit.edu/handle/1721.1/135992 ; https://rpc.cfainstitute.org/research/financial-analysts-journal/2020/empirical-evaluation-tax-loss-harvesting-alpha
- Hurst, Ooi & Pedersen (2017), A Century of Evidence on Trend-Following: https://fairmodel.econ.yale.edu/ec439/hurst.pdf
- SG Trend / CTA 2022: https://www.hedgeweek.com/flat-december-sees-ctas-complete-record-year-2022/ ; 2023–25: https://www.toptradersunplugged.com/trend-following-performance-report-october-2025/
- Jegadeesh & Titman (1993): https://www.nber.org/system/files/working_papers/w7159/w7159.pdf
- Daniel & Moskowitz, Momentum Crashes: https://www.nber.org/system/files/working_papers/w20439/w20439.pdf
- Antonacci GEM backtest: https://www.quant-investing.com/blog/how-much-can-dual-momentum-increase-your-investment-returns
- Volatility-managed portfolios critique (Cederburg et al.): https://www.lehigh.edu/~xuy219/research/COWY.pdf ; DeMiguel et al.: https://lbsresearch.london.edu/id/eprint/3716
- Cboe PUT/BXM: https://www.cboe.com/insights/posts/key-cboe-benchmark-indexes-using-spx-options-offer-strong-risk-adjusted-returns/
- Value drawdown: https://alphaarchitect.com/do-interest-rates-explain-values-underperformance/ ; AQR: https://www.aqr.com/Insights/Research/Journal-Article/Is-Systematic-Value-Investing-Dead
- RPAR 2022: https://www.bloomberg.com/news/articles/2022-09-28/-perfect-storm-for-risk-parity-has-etf-posting-record-32-drop
- Robo fees: https://www.nerdwallet.com/investing/learn/betterment-vs-wealthfront
- Lump-sum vs DCA (Vanguard): https://robberger.com/lump-sum-investing-vs-dollar-cost-averaging
- Long-run asset returns: https://www.hartfordfunds.com/dam/en/docs/pub/whitepapers/CCWP091.pdf ; https://faculty.washington.edu/ezivot/econ422/Risk%20&%20Return%20Updated.pdf
- T-bill yields 2026: https://marketxls.com/indicators/3-month-treasury-bill-rate ; https://fred.stlouisfed.org/series/dtb3
- Day traders, Taiwan: https://faculty.haas.berkeley.edu/odean/papers/day%20traders/Day%20Trading%20Skill%20110523.pdf ; Brazil: https://repositorio.fgv.br/items/e87d04fc-4b4c-4a56-ab5a-1c84c1afde1b/full
- 0DTE retail losses: https://www.bnnbloomberg.ca/day-traders-lose-358-000-per-day-gambling-on-zero-day-options-1.1910634
- TQQQ drawdown: https://chartrow.com/quote/tqqq/drawdown
- XIV: https://investing.com/news/stock-market-news/credit-suisse-defeats-lawsuits-over-huge-us-volatility-crash-1986182
- Knight Capital: https://www.sec.gov/Archives/edgar/data/0001060749/000119312512336167/d392288d8k.htm
- Oct 10, 2025 liquidations: https://coinshares.com/at/insights/knowledge/billions-in-liquidations-what-happened/ ; https://www.kucoin.com/news/flash/crypto-market-sees-19-15b-liquidation-event-on-october-10-2025
- James Wynn: https://www.theblock.co/news/ecosystems/2025-05-30-hyperliquid-trader-james-wynn-hit-with-over-100-million-loss-as-leveraged-bitcoin-trade-unravels-356341
- 3Commas: https://www.bleepingcomputer.com/news/security/crypto-platform-3commas-admits-hackers-stole-api-keys
- Terra/3AC: https://www.cnbc.com/2022/07/11/how-the-fall-of-three-arrows-or-3ac-dragged-down-crypto-investors.html/
- Crypto carry (BIS WP 1087): https://www.bis.org/publ/work1087.htm ; Ethena funding risk: https://docs.ethena.fi/solution-overview/risks/funding-risk ; carry compression: https://arxiv.org/pdf/2510.14435
- MEV jaredfromsubway: https://eigenphi.substack.com/p/performance-appraisal-of-jaredfromsubway-eth?open=false
- Polymarket arbitrage: https://arxiv.org/abs/2508.03474v1 ; wallet profitability: https://www.fool.com/research/prediction-markets-vs-stock-market-returns/
- LLM forecasting: https://arxiv.org/abs/2304.07619v6 ; Alpha Arena: https://forklog.com/en/four-out-of-six-ai-models-suffer-losses-in-trading-tournament/ ; AI-agent wallets: https://www.thestreet.com/crypto/trading/study-finds-most-ai-crypto-trading-agents-arent-really-trading
- Pump.fun / Solidus: https://beincrypto.com/pump-fun-tokens-scams-solidus-labs-report/
