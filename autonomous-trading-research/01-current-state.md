# Autonomous / Agentic AI Trading for Retail: State of Play (2024 to Nov 2026)

*Research date: 2026-11-03. Method: web search plus fetching primary sources where reachable. Every material claim has a URL. **[UNVERIFIED]** marks claims that rest only on secondary, vendor or aggregator sources, or where sources conflict.*

---

## TL;DR (skeptical summary)

1. **Distribution is real; evidence of an edge is not.** Between Jan and Oct 2026, roughly nine US brokers shipped official MCP servers or agent APIs. These include Robinhood Agentic Trading (May 27, 2026), Public's Agentic Brokerage (Mar 2026) and its Kalshi-linked agents (Sep 2026), IBKR, Webull, tastytrade, TradeStation and Alpaca. A retail user can now point Claude or ChatGPT at a live brokerage account. No rigorous public evidence shows that LLM agents beat buy-and-hold after costs.
2. **The best academic evidence is negative or null.**
   - FINSABER (KDD 2026) tested 20 years and 100+ symbols. It found that the LLM advantages reported in earlier papers "deteriorate significantly". The strategies were too conservative in bull markets and too aggressive in bear markets.
   - StockBench (Oct 2025, contamination-free) found that "most models struggle to outperform the simple buy-and-hold baseline."
   - "The Alpha Illusion" (May 2026) reproduced TradingAgents. Its Sharpe ratio fell from 0.43 gross to 0.22 net, and it lost to buy-and-hold on 4 of 5 stocks. QuantAgent went from a gross Sharpe of -0.96 to a net Sharpe of -1.15.
3. **Live competitions show mostly losses, and the samples are statistically meaningless.**
   - Alpha Arena Season 1 (crypto perps on Hyperliquid, $10k per model, Oct–Nov 2025): 4 of 6 frontier models lost money. GPT-5 lost about 59–63%, and the winner made +22%.
   - Season 1.5 (US equities, Nov–Dec 2025): most models lost. The aggregate portfolio lost about one-third, and only 6 of 32 model-sessions were profitable.
   - A May 2026 survey of 11 arenas found the median model positive in only 2.
4. **Base rates for human retail day traders are brutal.**
   - Brazil: 97% of persistent day traders lost money, and about 1% earned more than minimum wage.
   - Taiwan: fewer than 1% predictably profit net of fees, and aggregate day-trader performance was negative in every one of 15 years.
   - EU/UK CFDs: 74–89% of retail accounts lose money (ESMA, 2018). Current UK broker disclosures are around 51–78%.
   - US 0DTE options: retail lost about $358k/day after May 2022, mostly through transaction costs.
5. **Market structure works against retail alpha.** HFT latency arbitrage acts as a roughly 0.5 bp "tax" on trading volume (about $5B/year globally). Published anomalies decay 26% out-of-sample and 58% post-publication. LLM news-reading alpha (Lopez-Lira & Tang) is itself shrinking as adoption spreads. Retail options buyers face average spreads of about 12.6% on cheap weeklies.
6. **US regulation loosened access while scrutiny stayed mostly rhetorical.**
   - The SEC approved FINRA's elimination of the Pattern Day Trader rule and its $25k minimum on Apr 14, 2026, effective Jun 4, 2026, with a phase-in to Oct 20, 2027. It is replaced by intraday margin standards.
   - The SEC withdrew the Gensler-era predictive-data-analytics (AI conflicts) proposal and the PFOF and order-competition proposals on Jun 12, 2025.
   - FINRA's 2026 Oversight Report (Dec 2025) flags "unsupervised execution" by AI agents.
   - Reps. Foster and Sherman wrote to the SEC on Jun 24, 2026 asking who is liable when retail AI agents trade.
   - Enforcement so far targets outright fraud ("AI trading bot" Ponzi-style schemes) and AI-washing, not legitimate agent products.

---

## 1. What exists today

### 1a. Open-source and academic LLM trading agents

| Project | What it is | Status and evidence |
|---|---|---|
| **TradingAgents** (Xiao, Sun, Luo, Wang; UCLA et al.), arXiv 2412.20138, Dec 2024, revised through v6 2025 | Multi-agent "trading firm": fundamental, sentiment, news and technical analysts; bull/bear researchers; trader; risk team. Ran on GPT-4o-mini, GPT-4o and o1-preview. | Paper reports AAPL ~26.6% cumulative return and Sharpe ~8.2 over a few months in 2024. A Sharpe of 8 is an implausible red flag. The test window falls inside the models' pretraining data, so look-ahead contamination is likely (Hugging Face community critique). An independent reproduction ("Alpha Illusion", below) finds Sharpe 0.43 gross and 0.22 net, losing to buy-and-hold on 4/5 stocks. https://arxiv.org/abs/2412.20138 ; https://huggingface.co/papers/2412.20138 ; https://www.alphaxiv.org/abs/2605.16895 |
| **FinGPT / FinRobot** (AI4Finance Foundation) | Open-source financial LLM (FinGPT) and multi-agent platform for analysis and equity research (FinRobot, arXiv 2405.14767; equity-research paper 2411.08804) | Positioned mainly as research and analysis tooling, not as a validated live trader. Repos still active into 2026 (last updates ~Mar–Apr 2026 per mirrors; [UNVERIFIED] exact dates). https://arxiv.org/abs/2405.14767 ; https://github.com/AI4Finance-Foundation |
| **QuantAgent, FinMem, FinAgent** etc. | Academic LLM trading agents | All degrade under clean evaluation. FINSABER v6 corrected FinAgent results, and the conclusions were unchanged. QuantAgent's net Sharpe was -1.15 in the Alpha Illusion reproduction. |
| **AI-Trader** (HKUDS), arXiv 2512.10971, Dec 2025 | Benchmark across US stocks, China A-shares and crypto at multiple frequencies | "General intelligence does not automatically translate into trading skill"; most agents had weak returns and poor risk management. https://arxiv.org/abs/2512.10971 |
| **LiveTradeBench** (UIUC), arXiv 2511.03628, Nov 2025 | 50-day live evaluation of 21 LLMs on US stocks and Polymarket | LMArena rankings did not predict trading results. https://arxiv.org/abs/2511.03628 |
| **Hobby frameworks** ("AI Hedge Fund", Hyper-Alpha-Arena clones on GitHub) | DIY LLM agents hooked to Alpaca or Hyperliquid | No audited performance. |

### 1b. Live LLM trading competitions

**nof1.ai Alpha Arena**
- **Season 1** (Oct 17/18 to Nov 3, 2025)
  - Setup: six frontier LLMs, $10,000 real money each, crypto perpetuals on Hyperliquid, fully autonomous.
  - Final results (ifanr, Nov 4, 2025):
    - Qwen3-Max $12,232 (+22.3%)
    - DeepSeek V3.1 $10,489 (+4.9%)
    - Claude Sonnet 4.5 -30.8%
    - Grok 4 -45.3%
    - Gemini 2.5 Pro -56.7%
    - GPT-5 $3,734 (-62.7%)
  - So 4 of 6 lost money.
  - Forklog gives somewhat different balances for the middle ranks (Claude $5,799, Gemini $5,445, Grok $4,208, GPT-5 $4,126). **[Sources conflict on the middle rankings; the winner and the 4/6 loss count are consistent.]**
  - https://www.ifanr.com/1643245 ; https://forklog.com/en/news/ai-model-grok-4-2-triumphs-in-trading-tournament ; https://finance.yahoo.com/news/ai-crypto-trading-showdown-deepseek-202512124.html (Oct 20, 2025 midpoint snapshot)
- **Season 1.5** (Nov to Dec 3, 2025)
  - Setup: US equities (TSLA, NVDA, MSFT, AMZN, GOOGL, PLTR and Nasdaq instruments). Eight models ran in four modes: baseline, "Monk" capital preservation, situational awareness and max leverage.
  - Winner: "Mystery Model", revealed as Grok 4.20. It averaged about +12% and was profitable in all four modes. GPT-5.1 placed 2nd and Gemini 3 3rd.
  - Everyone else: as of Dec 8, 2025, Grok 4.20 was reportedly the only profitable model.
  - Aggregate (BigGo, May 2026, citing Flat Circle): the aggregate portfolio lost about one-third; only 6 of 32 sessions were profitable; Qwen made 1,418 trades in one round (about 1 per minute) with high leverage, i.e. overtrading.
  - https://forklog.com/en/news/ai-model-grok-4-2-triumphs-in-trading-tournament ; https://finance.biggo.com/news/5BSX_Z0BaoGGrU-ID27J ; https://blog.flatcircle.ai/p/ai-trading-arenas
- **Season 2:** announced as "close to finalizing", with promised extra statistical rigor, web search and longer thinking. As of Aug 2026, nof1.ai still showed Season 1.5. **I found no published Season 2 results as of Nov 3, 2026 [UNVERIFIED that none exist].** https://www.traderank.ai/blog/alpha-arena-alternatives-2026 ; https://manifold.markets/AxelAhlqvist/which-model-wins-the-ai-trading-con
- **Statistical caveat:** six to eight models over about two weeks is a sample of near-zero statistical power. The Season 1 dispersion of +22% to -63% on the same prompt and data mostly reflects leverage and position sizing, not forecasting skill. nof1 itself cautioned that results should not be read as a definitive ranking.

**Other arenas** (Flat Circle survey, data as of May 4, 2026: https://blog.flatcircle.ai/p/ai-trading-arenas)
- Overall: across 11 market arenas, at least one model was profitable in each, but **the median model was positive in only 2**. Those two were long-only arenas in a rising market, so the gains were beta, not alpha.
- Rallies.ai AI Arena ($100k paper, long-only US stocks): DeepSeek-v3 led in Jan 2026 at about +4.6% over one month, with no index comparison published. https://www.onedayadvisor.com/2026/01/AI-stock-trading.html?m=0
- TradeRank (crypto paper trading, 9 models): 2 of 9 were positive, at +1.02% and +0.08%.
- Aster "Humans vs AI": 9 of the top 10 traders were human.
- Prediction Arena (Kalshi): most agents were losing.
- "AI Controls Stock Account" (ChatGPT Deep Research picking small-cap healthcare stocks): -17% over 6 months.
- Author's conclusion: "limited evidence of LLMs beating the market with any scale or statistical significance."

### 1c. Retail algo and automation platforms (non-LLM or LLM-assisted)

| Platform | Model | Notes |
|---|---|---|
| **Alpaca** | API-first broker with official open-source MCP server (v2), CLI, paper trading | Self-reports that API trading grew "nearly 4x in Q1 2026, largely driven by AI". Raised $135M (Peak XV-led). Ran an AI trading-agent hackathon in Aug 2026. Company claim, no base disclosed **[UNVERIFIED]**. https://alpaca.markets/blog/tag/ai-trading/ ; https://alpaca.markets/blog/alpaca-launches-mcp-servers-in-public-beta-for-broker-partners/ |
| **QuantConnect** | Cloud backtesting and live algo platform (LEAN engine), Python/C# | Code-first retail and quant tool. No aggregate user-performance data found. |
| **Composer** (acquired by SoFi; "Composer by SoFi" launched Jun 23, 2026) | No-code "symphonies". AI helps write *rules-based* strategies; SoFi explicitly says this is *not* agentic decision-making. Has an MCP server. | Claims $20B+ lifetime automated volume and 3,000+ community strategies (company claims). https://lasvegassun.com/news/2026/jun/23/introducing-composer-by-sofi-ai-powered-investing-/ |
| **Tickeron** | "AI trading agents/robots" | Press releases from Jul–Aug 2026 claim 88%–292% "annualized" returns. Tickeron's own releases say these figures are **historical backtested** performance. No independent audit found. Treat as marketing. https://tickeron.com/trading-investing-101/top-10-ai-trading-agents-new-tickeron-bot-hits-292-return-for-retail-investors-sats/ |
| **TrendSpider** | Automated technical analysis, strategy tester, bots/alerts | Charting and automation tool; no performance claims evaluated. |
| **Autopilot** (copy-trading congressional and fund portfolios) | SEC-registered RIA | Reports about $750M–$1B AUM and about 3M downloads; "Pelosi Tracker" about $445–544M **[conflicting secondary figures]**. Structural problem: Periodic Transaction Reports lag up to 45 days. https://sg.news.yahoo.com/traders-invested-55-million-using-193917633.html ; https://thecollegeinvestor.com/59796/autopilot-review/ |
| **Robinhood Cortex** | AI research assistant (Gold subscribers), launched for analysis around Dec 2025 | Informational. Robinhood's RIA arm (TradePMR) says RIAs cannot delegate discretion to an AI agent under current rules. https://ai2.work/blog/robinhood-pushes-cortex-ai-into-advisor-workflows-via-tradepmr **[secondary]** |
| **Public "Generated Assets"** (Nov 18, 2025) | Prompt-to-custom-index with AI backtests vs S&P 500; 0.49% annual fee | Backtests are hypothetical. https://www.financemagnates.com/forex/public-debuts-ai-powered-index-generator-benchmarking-sp-500/ |
| **Crypto bots: 3Commas, Pionex, Hummingbot** | Grid, DCA and market-making bots | Pionex claims 5M+ users and about $60B monthly volume (self-reported). Hummingbot (open-source market-making framework) claims $34.5B trailing-12-month reported volume (self-reported). **[UNVERIFIED]** Security failure mode: 3Commas API-key leak (Oct–Dec 2022), confirmed by its CEO, with user losses estimated at $6M–$20M+ and an FBI probe. Exchanges refused reimbursement. https://cointelegraph.com/news/3commas-ceo-confirms-api-key-leak-following-warning-from-cz ; https://www.theblock.co/news/ecosystems/2022-12-28-binance-warns-about-3commas-api-leak-says-users-should-disable-keys-198295 ; https://hummingbot.org |

### 1d. Broker MCP servers and agent APIs (the big 2026 shift)

A comparison updated Oct 2026 (https://walnutinvest.com/resources/mcp-connectors-for-brokerages-compared, **[secondary vendor source]**) lists official broker MCP servers:

| Broker | Launch | Agent can place live orders? | Guardrails |
|---|---|---|---|
| **Robinhood Agentic Trading** | May 27, 2026 (beta) | Yes. Equities at launch; options, crypto, event contracts and futures planned (the Walnut page says options and crypto are now live **[UNVERIFIED]**). | Separate dedicated funded account, push notifications, real-time feed, P&L, disconnect anytime, trade previews. Robinhood says customers are responsible for their agents' trades. https://finance.yahoo.com/markets/stocks/articles/robinhood-opens-platform-ai-agents-134100384.html ; https://www.forbes.com.au/news/innovation/robinhood-will-allow-users-ai-agents-to-trade-stocks/ |
| **Public "Agentic Brokerage"** | Mar 31, 2026; prediction-market agents with Kalshi announced Sep 24, 2026 | Yes | User approves each strategy; strategies compile to fixed rules. Public's MCP page warns "trades may be executed by your AI agent without your direct input on each transaction". https://fortune.com/2026/09/24/public-ai-trading-agents-prediction-markets-kalshi-tie-up/ ; https://fxnewsgroup.com/forex-news/retail-forex/public-introduces-new-phase-of-its-ai-vision-agentic-brokerage/ |
| **Interactive Brokers** | Certified Claude/ChatGPT connector by Jun 2026; opened to any MCP client Jul 28, 2026 | **No.** The AI drafts "AI Instructions" that the human submits. | Human-in-the-loop by design |
| **Webull** | Aug 2026 | Yes, within order caps | Order caps, optional read-only mode |
| **tastytrade, Moomoo, TradeStation** | 2026 | Varies or unclear | TradeStation requires a $10k balance |
| **Alpaca** | open-source MCP | Yes, including live | Paper sandbox |

FM Intelligence (via search summary) found that at least 10 retail brokers and vendors connected AI agents to live client accounts in H1 2026, and that none let an agent move money out **[UNVERIFIED; secondary]**.

---

## 2. Hard evidence on performance

### 2a. LLM agents vs. buy-and-hold

| Study | Design | Result |
|---|---|---|
| **FINSABER**: Li, Kim, Cucuringu, Ma, "Can LLM-based Financial Investing Strategies Outperform the Market in Long Run?" arXiv 2505.07078 (v1 May 2025 to v6 Jun 2026; KDD 2026 Datasets & Benchmarks, Oral) | Re-tests published LLM timing strategies over **two decades and 100+ symbols** with survivorship, look-ahead and data-snooping controls | "Previously reported LLM advantages deteriorate significantly." The strategies are too conservative in bull markets (underperform passive) and too aggressive in bear markets (heavy losses). The authors note that prior work often tested <1 year and <10 stocks against naive baselines. https://arxiv.org/abs/2505.07078 |
| **StockBench**: Chen et al., arXiv 2510.02209 (Oct 2, 2025; v2 Mar 2026) | Contamination-free, multi-month (Mar–Jun 2025), 20 DJIA stocks, daily decisions with prices, fundamentals and news | "Most models struggle to outperform the simple buy-and-hold baseline." Strong financial-QA ability does not translate into trading skill. Secondary summaries report buy-and-hold at +0.4% (max drawdown about -15%) and the best agent (Qwen3-235B-Thinking) at about +2.5% over 82 days **[secondary figures]**. That gap is well within noise for one 4-month window. https://arxiv.org/abs/2510.02209 |
| **"The Alpha Illusion"**: Ye et al., arXiv 2605.16895 (May 16, 2026) | Reproduces TradingAgents and QuantAgent over one post-training-cutoff year (2025–26) with commissions, spread, slippage, impact, borrow, token cost and latency | TradingAgents Sharpe 0.43 gross to **0.22 net**; underperforms buy-and-hold on **4 of 5** stocks. QuantAgent Sharpe -0.96 to **-1.15**. Short-window Sharpe standard errors are as large as the estimates. Recommends LLMs as upstream information extractors, not end-to-end traders. https://www.alphaxiv.org/abs/2605.16895 |
| **"Can Agentic Trading Systems Pay for Their Own Intelligence?"** (TradeLens; HKUST-GZ), arXiv 2607.10286 (v3 Oct 2026) | Attributes agent P&L against inference and tool costs across backbones, capital scales and frequencies | Qualitative: viability hinges on converting reasoning into timing and selection value. DeepSeek-V3.2 showed poor selection; GLM-4.7 showed negative timing. Numbers not in abstract **[full-paper figures unverified]**. https://www.alphaxiv.org/abs/2607.10286 |
| **AI-Trader** (Dec 2025), **LiveTradeBench** (Nov 2025) | Live or multi-market | Most agents weak; general LLM leaderboards don't predict trading. https://arxiv.org/abs/2512.10971 ; https://arxiv.org/abs/2511.03628 |
| **Lopez-Lira & Tang**, "Can ChatGPT Forecast Stock Price Movements?" arXiv 2304.07619 (v6 Oct 2025) | The main *positive* paper: LLM headline sentiment predicts next-day returns | Effect is stronger in small caps and after negative news. In v6, **strategy returns decline as LLM adoption rises** (price efficiency improves). The ~90% hit rate applies to the *non-tradable* initial reaction. https://arxiv.org/abs/2304.07619 |

### 2b. Known failure modes (documented)

- **Look-ahead / training-data contamination.** Models have memorized prices and news inside their training window, so any backtest inside that window is suspect.
  - Look-Ahead-Bench (Benhenda, arXiv 2601.13770, Jan 20, 2026) shows standard LLMs (Llama 3.1, DeepSeek 3.2) exhibit significant alpha decay across regimes, consistent with look-ahead bias. Point-in-time models did not. Caveat: the author is affiliated with a point-in-time model vendor. https://arxiv.org/abs/2601.13770
  - An independent blog check found the TradingAgents AAPL buy-and-hold baseline inconsistent with Yahoo data **[blog, not peer-reviewed]**. https://dev.to/trow126/the-most-starred-llm-trading-paper-claims-buy-and-hold-lost-523-it-actually-gained-912-1jj6
- **Short windows, few tickers, naive baselines.** Flagged by FINSABER. Sharpe SEs on less than one year are about as large as the point estimate (Alpha Illusion).
- **Costs ignored.** Halving of net Sharpe in the TradingAgents reproduction. Token/API costs are an additional, often omitted line item (TradeLens).
- **Regime asymmetry.** LLM strategies were too timid in bull markets and too aggressive in bear markets (FINSABER).
- **Overtrading and leverage misuse.** Qwen made about 1,400 trades per round in Alpha Arena 1.5; dispersion in Season 1 was driven by leverage.
- **Non-determinism.** Same prompt, different runs, different trades (Flat Circle).
- **Hallucination and unsupervised execution.** Flagged by FINRA's 2026 oversight report (see §4).
- **Security.** API-key leakage (3Commas) and prompt injection into agents reading untrusted news or web content. The first is documented; the prompt-injection risk is my inference, with no trading-specific incident verified.

### 2c. Retail day-trader outcomes (human base rates)

| Study / source | Finding |
|---|---|
| **Chague, De-Losso & Giovannetti**, "Day Trading for a Living?" (FGV working paper 525, 2020); all Brazilians who began day trading equity-index mini-futures 2013–2015 and persisted ≥300 days (n≈1,551) | **97% lost money**. Only ~1.1% (17 people) earned more than the Brazilian minimum wage, and ~0.5% more than a bank teller's starting salary. No evidence of learning. https://repositorio.fgv.br/items/e87d04fc-4b4c-4a56-ab5a-1c84c1afde1b/full ; https://quantpedia.com/?p=4771 (exact percentages vary slightly across summaries) |
| **Barber, Lee, Liu & Odean**, "The Cross-Section of Speculator Skill: Evidence from Day Trading", *J. Financial Markets* 18 (2014); Taiwan 1992–2006 | **<1%** of day traders predictably earn positive abnormal returns net of fees. Aggregate day-trader performance was **negative net of fees in each of 15 years**. Top-500 prior winners earned 37.9 bps/day after fees; the bottom group earned -28.9 bps/day. https://ideas.repec.org/a/eee/finmar/v18y2014icp1-24.html ; https://www.escholarship.org/uc/item/7k75v0qx |
| **Barber, Lee, Liu, Odean & Zhang**, "Learning, Fast or Slow", *Rev. Asset Pricing Studies* 10(1), 2020 | 80% of day traders quit within 2 years. Traders with prior profits are only 1.6% of day traders (but 12% of volume). Poor traders persist instead of learning rationally. https://ideas.repec.org/a/oup/rasset/v10y2020i1p61-93..html |
| **ESMA product intervention** (Mar 27, 2018) | National regulators found that **74–89%** of retail CFD accounts lose money, with average losses of €1,600–€29,000. Led to mandatory per-firm loss-rate disclosure. https://www.esma.europa.eu/node/84933 |
| **Current UK broker CFD disclosures** (Apr 2026 tally) | IG about 68–78% (varies by entity), Plus500 UK 76%, eToro UK 51%. **[Secondary aggregations; check each firm's risk warning.]** https://www.poundsterlinglive.com/news/23132-even-at-major-uk-brokers-most-cfd-accounts-lost-money-report-finds ; https://www.theinvestorscentre.co.uk/trading/statistics/cfd-trading/ |
| **Beckmeyer, Branger & Gayda**, "Retail Traders Love 0DTE Options… But Should They?" (SSRN 4404704, 2023) | Retail lost about $184k/day on average from Feb 2021 to Feb 2023, rising to **$358k/day** after daily expirations began in May 2022. Over $50M of the roughly $70M total loss came from **transaction costs**. Buyers drove the losses. https://www.bnnbloomberg.ca/day-traders-lose-358-000-per-day-gambling-on-zero-day-options-1.1910634 ; https://cxoadvisory.com/individual-investing/retail-0dte-option-trader-performance |
| **Bryzgalova, Pavlova & Sikorskaya**, *J. Finance* 78(6), 2023 | Retail options volume exceeded 60% of the market, enabled by PFOF (about 90% from three wholesalers). Retail favors cheap weeklies with an **average bid-ask spread of 12.6%** and loses money on average. https://lbsresearch.london.edu/id/eprint/2827 |

*Not found:* a recent FINRA-published statistic on the share of US retail day traders who lose money. FINRA's investor education has long warned that day trading is risky, but I could not locate a quantified FINRA loss rate.

---

## 3. Market structure realities

- **Explicit costs fell to about zero, but implicit costs did not.**
  - Commission-free brokers monetize through **payment for order flow** and spreads.
  - Robinhood FY2025: $4.5B revenue; Q4 2025 transaction revenue $776M, of which options $314M, crypto $221M and equities $94M. FY2025 options contracts traded: 659M. https://investors.robinhood.com/news-releases/news-release-details/robinhood-reports-fourth-quarter-and-full-year-2025-results
  - Every round trip pays the spread plus any adverse selection. A higher-turnover agent pays more.
- **PFOF is staying.** The SEC's Dec 2022 Order Competition Rule (auctions for retail orders) and Regulation Best Execution proposals were **withdrawn Jun 12, 2025**, along with 12 other proposals. FINRA Rule 5310 best-execution duties remain. https://www.globaltrading.net/?p=38776 ; https://www.paulhastings.com/insights/client-alerts/sec-withdraws-14-pending-rule-proposals
- **Execution-quality transparency is improving slowly.** The amended Rule 605 (adopted Mar 6, 2024) extends monthly execution-quality reports to larger broker-dealers. Compliance was pushed from Dec 14, 2025 to **Aug 1, 2026**, so the first reports covered August 2026 and were due by end of September 2026. Retail and agent builders can now compare brokers' price improvement and effective spreads. https://sec.gov/rules-regulations/2025/09/disclosure-order-execution-information ; https://www.finra.org/rules-guidance/notices/information-notice-20260617
- **HFT and latency arbitrage.** Aquilina, Budish & O'Neill (QJE 2022), using LSE message data, find latency-arbitrage races about once per minute per FTSE-100 symbol. Each race is decided in 5–10 microseconds, and the top 6 firms win more than 80%. This imposes a roughly **0.5 bp tax on trading volume, about $5B/year** across global equities. An LLM agent that takes seconds to reason per decision cannot compete in any latency-sensitive strategy. https://www.nber.org/system/files/working_papers/w29011/w29011.pdf ; https://www.fca.org.uk/publications/occasional-papers/occasional-paper-no-50-quantifying-high-frequency-trading-arms-race-new-methodology
- **Alpha decay.** McLean & Pontiff (J. Finance 2016): anomaly returns are **26% lower out-of-sample and 58% lower post-publication**, implying about 32% is attributable to publication-informed trading. Any edge that is public (a paper, a GitHub repo, a popular prompt, an MCP template) gets arbitraged. https://counterpointfunds.com/wp-content/uploads/2017/07/PredictabilityMcleanPontiff.pdf
- **Homogeneity risk (my inference).** Millions of retail agents built on the same handful of frontier models, fed the same news, will produce correlated signals. That crowding erodes edge and may amplify moves. Lopez-Lira & Tang's v6 finding (returns decline as LLM adoption rises) is consistent with this.
- **Competition.** Quant funds and market makers have point-in-time data, co-location, sub-ms execution, risk systems and inventory economics that retail agents lack. The rational retail use of LLMs is information processing, not microstructure competition.

---

## 4. Regulatory and news developments (2024 to Nov 2026)

| Date | Development | Source |
|---|---|---|
| Jan 25, 2024 | CFTC advisory "AI Won't Turn Trading Bots into Money Machines". Guaranteed or high returns are a fraud red flag; "AI technology can't predict the future". FINRA issued a parallel AI fraud alert. | https://www.cftc.gov/LearnAndProtect/AdvisoriesAndArticles/AITradingBots.html |
| Mar 18, 2024 | First SEC "AI-washing" cases: Delphia ($225k) and Global Predictions ($175k) settled for false claims of AI capability. | https://www.mofo.com/resources/insights/240320-sec-targets-ai-washing-with-two-new-settled-cases |
| May 2024 | ESMA statement on AI in retail investment services: firms remain fully responsible under MiFID II. | https://finreg.aoshearman.com/eu-statement-on-the-use-of-ai-in-the-provision-of |
| Jun 12, 2025 | SEC withdraws 14 proposals, including the **Predictive Data Analytics / AI conflicts** rule, Order Competition (PFOF) and Reg Best Execution. | https://www.proskauer.com/alert/sec-withdraws-fourteen-rule-proposals |
| Dec 9, 2025 | **FINRA 2026 Annual Regulatory Oversight Report** adds a GenAI section and, for the first time, addresses **AI agents**. Flags "unsupervised execution of regulated actions", hallucination and data risk. Places agents under Rules 3110/3120 supervision and books-and-records. | https://www.debevoise.com/insights/publications/2025/12/finras-2026-regulatory-oversight-report-continued ; https://swlaw.com/publication/finras-2026-oversight-report-signals-a-supervisory-reckoning-for-autonomous-ai |
| Dec 2025 | SEC charges three fake crypto platforms and four "AI investment clubs" ($14M+ from retail via social media). | https://securitiesdocket.beehiiv.com/p/sec-charges-three-fake-crypto-trading-platforms-with-scheme-targeting-retail-investors-on-social-med |
| Feb 2026 | ESMA supervisory briefing on algorithmic trading, highlighting AI risks **[headline only]**. | https://mondovisione.com/media-and-resources/news/esma-issues-a-supervisory-briefing-on-algorithmic-trading-2026226/ |
| Mar 2026 | IOSCO and FCA AI Lab TechSprint on detecting AI-enabled retail fraud. A May 2026 IOSCO AI supervisory toolkit is reported **[UNVERIFIED primary]**. | https://scb.gov.bs/wp-content/uploads/2026/03/IOSCONEWS784.pdf |
| **Apr 14, 2026** | **SEC approves FINRA SR-FINRA-2025-017, eliminating the Pattern Day Trader designation and the $25,000 minimum** (Rule 4210). FINRA Regulatory Notice 26-10 (Apr 20, 2026) is **effective Jun 4, 2026**, with a phase-in to **Oct 20, 2027**. Replacement: intraday margin standards. Equity must cover exposure at any point in the day. Intraday deficits must be met promptly and remain outstanding up to 15 business days. A habitual failure-to-cure leads to a 90-day restriction. The standard $2,000 margin-account minimum still applies; brokers may set higher minimums. Notice 26-11 rescinds PDT interpretations. | https://www.finra.org/rules-guidance/notices/26-10 ; https://www.finra.org/rules-guidance/notices/26-11 ; https://us.etrade.com/knowledge/library/margin/pattern-day-trading-rule-change ; https://alpaca.markets/blog/finra-retires-the-pdt-rule-introducing-alpacas-new-intraday-margin-framework/ |
| May 2026 | SEC charges Nathan Fuller / Privvy Investments: $12.3M from about 150 investors with "AI trading bot" guaranteed-returns claims. | https://cointelegraph.com/news/sec-charges-texas-man-with-123m-crypto-fraud-fake-ai-trading-bots |
| May 27, 2026 | Robinhood launches Agentic Trading (beta) and an Agentic Credit Card via MCP. | see §1d |
| Jun 24, 2026 | Reps. Bill Foster and Brad Sherman write to SEC Chair Atkins. They ask what oversight exists as brokers let AI agents trade autonomously for retail, and who is liable (broker-dealer, AI developer or agent). They note that AI firms "have thus far operated largely outside the securities regulatory framework". | https://foster.house.gov/media/press-releases/foster-sherman-seek-regulatory-clarity-agentic-ai-trading |
| Aug 1, 2026 | Amended Rule 605 compliance date. | see §3 |
| Late Aug to Sep 2026 | SEC files three AI-related fraud actions after none in H1 2026, including **Cryptoaiml** (≥$12.5–15.3M from 300+ retail investors; "no trading took place") and **TSAI Pro** (about $2.8M from about 1,715 investors; no AI bots existed). | https://www.investmentnews.com/regulation-legal-compliance/fake-signals-frozen-accounts-sec-sues-crypto-ai-platform-over-125m/268436 ; https://cryptobriefing.com/sec-sues-cryptoaiml-tsai-ai-trading-scam/ ; https://techjacksolutions.com/ai-brief/sec-ai-washing-enforcement-three-cases-2026/ |

**Interpretation:**
- The 2025–26 US regime is deregulatory on access (PDT gone, AI-conflicts rule gone, PFOF reform gone) and relies on existing supervision rules plus anti-fraud enforcement.
- I found **no SEC rule, guidance or no-action letter specifically governing retail-directed autonomous AI agents** as of Nov 2026 **[absence not conclusively verified]**. The open question of liability raised in the Foster/Sherman letter remains unanswered publicly.
- Brokers (Robinhood) place responsibility on the customer.
- The PDT repeal matters directly for agents. Small accounts (<$25k) can now day trade without a trade-count limit, which removes a friction that previously throttled high-turnover agents on small accounts.

---

## 5. Bottom line for someone considering a retail agentic trading product or strategy

1. **The base rate is that most active retail traders lose.** Agents automate the activity but do not change the structural cost and adverse-selection disadvantages.
2. **No credible, cost-adjusted, out-of-sample, statistically powered evidence** shows that end-to-end LLM trading agents beat buy-and-hold. The best-designed studies (FINSABER, StockBench, Alpha Illusion) point the other way. Live arenas are tiny-sample, leverage-dominated and mostly negative.
3. **Where LLMs plausibly add value** (supported by Alpha Illusion's recommendation and by Lopez-Lira & Tang, though their own edge is decaying):
   - upstream information extraction: summarizing filings and news, sentiment;
   - rule authoring, as in Composer's rules-based model;
   - risk and guardrail enforcement;
   - reducing behavioral errors.
   Generating alpha at decision speed is not one of them.
4. **The product and distribution opportunity is real and moving fast** (broker MCP servers, the PDT repeal, Alpaca's agent volume growth). The regulatory and liability posture is unsettled, and the consumer-harm and fraud surface is large (AI-bot scams, API-key leaks, prompt injection).

### Items I could not verify
- Alpha Arena Season 2 results (none found).
- Exact middle-rank Season 1 balances (ifanr and Forklog disagree).
- Full numeric tables for StockBench and TradeLens.
- Alpaca "4x" base.
- Autopilot's current AUM.
- Pionex and Hummingbot volume claims.
- Robinhood's current asset-class scope for agents (options and crypto reportedly added after launch).
- IOSCO May 2026 toolkit primary text.
- Any FINRA-published US day-trader loss percentage.
