# Autonomous Agentic Trading — Viability Study

*Research compiled 2026-11-03. This is research, not financial or legal advice. Figures marked "(est.)" or "[UNVERIFIED]" in the detailed reports are estimates or secondary-source claims; re-check prices before paying for anything.*

## The question

Can an autonomous AI agent day-trade (or otherwise trade) on someone's behalf well enough to be worth building, whether for personal use, for friends and family, or as a business-class case study? What's the safe version, the middle version, and the bleeding edge? And what's a sensible MVP?

## The answer in one paragraph

Retail access to AI trading agents exploded in 2026 (Robinhood, Public, Webull, tastytrade and Interactive Brokers all opened agent/MCP connections, and the $25k pattern-day-trader rule was abolished). But **there is no rigorous public evidence that LLM agents beat buy-and-hold after costs**, and the best-designed studies point the other way. The edge a solo builder can actually capture is **discipline, risk control, tax efficiency and honest validation**, with the LLM acting as a research assistant and explainer behind hard-coded risk limits, not as a price predictor. Running it on other people's money, especially older or low-income people, is where the plan breaks: it triggers adviser registration, suitability problems, and for anyone on SSI, a gain can cost them their benefits.

## Detailed reports

| # | Report | What's in it |
|---|---|---|
| 1 | [Current state](01-current-state.md) | Products and agents that exist, live AI trading competitions, academic evidence, market structure, 2026 regulatory news |
| 2 | [Risk tiers](02-risk-tiers.md) | ~25 strategies across Safe / Middle / Bleeding edge, comparison table, blow-up case studies, risk of ruin and Kelly sizing |
| 3 | [Legal & ethics](03-legal-ethics.md) | Adviser registration, PDT rule repeal, elder protection, SSI/Medicaid impact, taxes, safe structures |
| 4 | [Edges & MVP](04-edges-and-mvp.md) | What builders are missing, full 2026 tech stack, guardrails, architecture diagram, 4-week MVP, v2, costs |

---

## 1. Current state (Nov 2026)

**What exists**
- **Brokers opened to agents in 2026:** Robinhood Agentic Trading (May 2026, separate funded account, customer liable), Public "Agentic Brokerage" (Mar 2026), IBKR (AI drafts, human submits), Webull, tastytrade, TradeStation, Alpaca (open-source MCP server with paper trading).
- **Open-source agents:** TradingAgents, FinGPT, FinRobot. Useful architectures; the headline results come from short test windows that overlap the models' training data.
- **Live real-money contests (nof1 Alpha Arena):** Season 1 (crypto perps): 4 of 6 frontier models lost money; GPT-5 lost ~63%. Season 1.5 (US stocks): only 6 of 32 sessions profitable.

**What the evidence says**
- **FINSABER** (20 years, 100+ stocks): published LLM-strategy advantages "deteriorate significantly."
- **StockBench** (contamination-free): most models fail to beat buy-and-hold.
- **"The Alpha Illusion"** (2026): TradingAgents' Sharpe halved after realistic costs; lost to buy-and-hold on 4 of 5 stocks.
- **Human day traders:** 97% of persistent Brazilian day traders lost money; under 1% of Taiwanese day traders reliably profitable; 74–89% of EU CFD accounts lose.
- **Structural headwinds:** HFT wins speed races, published patterns lose ~58% of their returns after publication, and thousands of agents running the same models on the same news will crowd the same trades.

## 2. Risk tiers — the case study

| Tier | Examples | Realistic outcome | How it fails |
|---|---|---|---|
| **Safe** | Index DCA, robo-advisor, rebalancing, T-bills, tax-loss harvesting | ~7–10%/yr long-run (S&P ~10% nominal since 1926); TLH adds ~0.8%/yr in taxable accounts | Ordinary bear markets (−30 to −50%), which you must sit through |
| **Middle** | Trend following, momentum rotation, dual momentum, volatility targeting, put-writing | Modest premia; real value is diversification (trend +27% in 2022) | Can lag for years (value −51% 2007–20; momentum crash 2009) |
| **Bleeding edge** | Day-trading bots, 0DTE options, 3× leveraged ETFs, leveraged crypto perps, prediction-market bots, memecoin sniping | Negative expected value for the median retail account; a few outliers win big | Single-day ruin: XIV −96% (2018), Knight Capital −$440M in 45 min, TQQQ −82%, $19B crypto liquidation day (Oct 2025) |

**The maths that matters:** −50% needs +100% to recover; −96% needs +2,400%. Kelly sizing says bet in proportion to proven edge, and for the bleeding edge the honest Kelly bet is close to zero. A sensible split is **80–95% Safe, 5–20% Middle, 0–5% Bleeding edge.**

## 3. What's not being taken advantage of

1. **Behavioural discipline.** Investors earned ~1.2 pp/yr less than their own funds (Morningstar Mind the Gap 2025) by buying and selling at the wrong time. A rules-based agent captures that for free.
2. **Hard risk management in code:** position caps, daily loss halt, drawdown kill switch. Most hobby bots lack all three.
3. **Tax-aware automation:** tax-loss harvesting and a mini direct index via fractional shares (only in taxable accounts).
4. **Honest validation:** deflated Sharpe ratio, walk-forward testing, logging every backtest, and testing LLM signals **only on data after the model's training cutoff**.
5. **LLMs for research, not prediction:** reading SEC filings, flagging red flags, and writing a reason for every trade. Insider-purchase clusters (Form 4) are the best-supported cheap data signal.
6. **Cheap inference:** small models classify hundreds of filings a day for a few dollars a month.

**Hype under current evidence:** LLM price prediction, multi-agent debate (it lowered Sharpe in a controlled test), copying Congress trades, and retail options-flow alerts.

## 4. Legal and ethical reality, especially for friends and family

- **Trading for others for any benefit** (fee, profit share, favour) makes you an investment adviser: state registration plus the Series 65 exam. Pooling money can be an unregistered securities offering; the SEC charged exactly that against an "AI crypto bot" scheme in May 2026.
- **The PDT rule ($25k) was abolished** effective June 2026. That removes a guardrail, so small vulnerable accounts are now *more* exposed to high-turnover bots.
- **Older and low-income people:** speculative or high-turnover trading on fixed income fails suitability tests. For anyone on **SSI, assets above $2,000 ($3,000 for a couple)** on the 1st of a month mean no SSI that month, often loss of Medicaid, and repayment of overpayments. **A gain can be as harmful as a loss.**
- **Taxes:** short-term gains are taxed as ordinary income, wash sales trigger constantly with bots, and the kiddie tax may apply to a full-time student under 24.

**Legally safe forms, safest first:**
1. Paper trading or backtests framed as education or research (ideal for the class project).
2. Your own money, with hard limits, in a cash account.
3. Open-source software each person runs in their *own* account with their *own* keys, with honest claims.
4. Unpaid help for a family member in their own account, via the broker's Limited Trading Authorization form. Never for anyone on SSI or Medicaid, or with cognitive decline.

**A higher-impact way to help low-income people** may be a benefits-aware savings, automatic-investing or anti-scam tool rather than a trading bot.

## 5. MVP and personal build

**Stack:** Alpaca (paper trading, `alpaca-py`), Alpaca free data + SEC EDGAR (`edgartools`), vectorbt for backtesting, the Anthropic API (a small Claude model for filing extraction, a mid-size one for the daily memo), a ~$5/month VPS with systemd timers, DuckDB journal, Telegram alerts, and a healthchecks.io dead-man's switch.

**Architecture:** scheduler → data ingest → deterministic signals + LLM filing review → JSON trade proposal → **hard-coded risk gate the LLM cannot change** → human approval (Telegram) → executor (the only process holding trading keys) → broker → daily reconciliation and alerts.

**4-week MVP**
| Week | Build |
|---|---|
| 1 | ETF trend/momentum rotation with volatility-scaled weights; backtest with costs and walk-forward against SPY and 60/40 |
| 2 | `risk_gate.py` (ticker allowlist, no margin/options/crypto, ≤10% per position, 2% daily loss halt, 10–15% drawdown kill), executor on Alpaca paper, kill switch |
| 3 | LLM reads EDGAR filings and can **veto or flag** trades but never add them; daily memo explaining each order |
| 4 | Approval flow, reports, cost log |

**Exit criteria before real money:** 4–8 clean weeks of paper trading, then $500–1,000 live in approval mode.

**v2 personal system (months 2–6):** NautilusTrader (same code in backtest and live), sleeves for core ETF trend, a tax-loss-harvesting mini direct index if there's a taxable account, an insider-cluster event sleeve; a CI gate on deflated Sharpe before anything goes live; weekly AI post-mortems and a dashboard.

**Monthly cost**

| Stage | Cost |
|---|---|
| Paper MVP | ~$5–15 |
| Small live account | ~$10–20 |
| v2 | ~$20–100 |

At a $5k account, $15/month is a 3.6%/yr drag, which argues for low-frequency strategies and cheap models.

## Verdict

- **As a school project:** excellent. Paper-trade it, show the three tiers, and present the honest finding that AI agents automate an activity most humans already lose at, and that the real edge is discipline and risk control.
- **For personal use:** viable as a disciplined, low-frequency, mostly Safe/Middle-tier system with an LLM as analyst, small real money, and approval mode.
- **For friends and family on subsistence income:** not as a trading bot. Each person in their own account at most, never anyone on benefits, and consider a savings or anti-scam tool instead.
- **As a product:** only with registration and compliance, or as genuinely impersonal open-source software with honest claims.
