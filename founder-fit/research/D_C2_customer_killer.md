# C2: "Instant Quote" — Customer Simulation (Agent D) and Strategic Killer (Agent H)

Date: 2026-10-01. Product: satellite-measured, owner-priced, bookable instant quotes embedded on small exterior-trade websites (lawn first; then fence, pressure washing, window, gutters, roofing).

Evidence grades: **A** = read directly on a fetched/searched source; **B** = vendor or secondary-publisher claim, plausible but self-interested; **C** = inference/analogy from A/B; **D** = simulated persona judgment or speculation (not evidence).

## Evidence limits (read first)
- Reddit was not reachable via the search tool; LawnSite thread bodies returned a redirect then HTTP 402 (paywalled to bots). I did not work around it. I have LawnSite thread *titles/snippets* only. So the "voice of customer" below is built from vendor pages, trade press, review aggregates, and snippets, and persona behaviour is **D**. Before spending money, validate with 10 real calls.
- No fabricated quotes. Two short vendor/trade-press quotes are paraphrased from fetched pages.

## 1. Market reality: this is already a crowded category (A)
| Product | Trade | Price | Source |
|---|---|---|---|
| Deep Lawn | lawn/pest instant quote on contractor site | $40 / $85 / $150 per month plus per-search fees ($1 to $0.50 beyond bundle) | https://deeplawn.com/quotes (search snippet) |
| Instant Mowing Quote | mowing embed | price not found | https://instantmowingquote.com/ |
| AccuLawn Systems | lawn instant online quote | $79-$99/mo by zip demographics (older LawnSite thread) | https://www.lawnsite.com/threads/acculawn-systems-instant-online-quoting-systems.376618/ |
| QuoteIQ | CRM + satellite measure + AI estimator | $29.99 to $74.99/mo (publisher is the vendor, so B) | https://myquoteiq.com/best-satellite-measuring-software-lawn-care-2026/ |
| FenceFlow | fence widget | $129/mo | https://getfenceflow.com/ |
| Next Estimate | fence widget | $149/mo | https://nextestimateagency.com/ |
| Visual Fence Pro | fence quoting | free tier | https://visualfencepro.com/ |
| Roofle RoofQuote PRO | roofing widget | $350/mo + $2K setup, or $5,500/yr | https://offers.roofle.com/plans |
| Roof Quoter, Roofr, ResponsiBid | roofing | $149 to ~$229/mo | https://www.startupheist.com/the-roofing-quote-layer-39k-mrr-bolted-onto-someone-elses-website/ (B) |
| LawnStarter / Lawn Love / GreenPal | consumer marketplaces with satellite instant quote | 15-20% commission to pro (LawnStarter up to 20%) | https://www.yourgreenpal.com/blog/lawnstarter-and-lawn-love-have-high-commission-rates (B, competitor-authored); https://www.lawnstarter.com/blog/lawnstarter/how-does-lawnstarter-instant-quote-work/ |
| Contractor sites already running their own | OKC fence, A&A Lawns etc. | n/a | https://fenceokc.com/instant-fence-quote-online/ ; https://aalawns.com/free-instant-quotes/ |

Implication (C): "satellite-measured instant quote widget" is a feature with 10+ shipped competitors per trade, including one in Elliot's home market (Instant Fence Quote OKC). Any claim of novelty is false. The only open question is whether a better-designed, cross-trade, trust-branded version can win distribution.

Incumbent software prices (A): Jobber Core $29, Connect $99, Grow $149, Plus $399 per month on annual billing, all with online booking and quote features included (https://www.getjobber.com/pricing/). Yardbook free to $34.99-$49.99 (https://www.capterra.com/compare/127994-207272/Jobber-vs-Yardbook). LMN from $297/mo (https://www.capterra.com/p/142064/LMN/). Jobber Capterra rating 4.6 across ~1,487 reviews (B, search snippet).

## 2. ROLE 1 — Agent D: customer simulations

### (a) Solo / 2-truck mowing operator (D, anchored on A/B)
- **How they quote now (B/D):** drive-by or phone, eyeball plus Google Earth/free lot-size lookup; LawnSite snippets show operators using findlotsize.com and Google Earth Pro (https://www.lawnsite.com/threads/does-anyone-quote-using-satellite-tools.432527/). Vendor claim of 70-minute site visit vs ~3-minute satellite quote is marketing (B), https://myquoteiq.com/best-satellite-measuring-software-lawn-care-2026/. A realistic figure is 10-20 min per quote including drive (D).
- **Lost-lead rate:** unknown; no verified number found. Guess: 30-50% of web inquiries never get a timely reply when the owner is mowing (D). That is the real pain: response time, not measuring.
- **Software now:** $0 to $49/mo (Yardbook free/Jobber Core $29) (A). Many solo operators use text + notes app (D).
- **WTP:** $20-$40/mo if bundled into what they already use; $79-$99 only if it visibly books jobs (C, anchored on AccuLawn/Deep Lawn tiers). A standalone $99+ tool is a hard sell to a 2-truck operator.
- **Objections (D):** "Every yard is different"; "I want to see gates, slope, dogs"; "online price shoppers are cheapskates" (instant price attracts LawnStarter-type bargain buyers); "my Facebook/Nextdoor word of mouth works already."
- **Switching barriers:** low for a widget (paste a snippet), but they will not manage another login. Jobber's Request/Online Booking already gives them 80% of the workflow for $29 (A).
- **Verdict persona:** nice-to-have; will trial free, churn fast.

### (b) 10-40 employee design-build landscaper (D)
- **How they quote:** site walk, sales estimator, design, LMN/Aspire/Excel budgets, margin-based pricing; quote cycles of days/weeks. Satellite measure is only a pre-qualification step. PropertyIntel/SiteRecon exist for takeoffs ($250/mo SiteRecon) (B).
- **Lost-lead rate:** they are not losing leads to instant quote; they are losing to scheduling and sales-capacity.
- **Software now:** LMN $297+/mo, Aspire, Jobber Grow/Plus (A).
- **WTP for this:** low as a product; they want lead *qualification* (budget, scope) not a price. An instant number commoditises a $30K project (D).
- **Objections:** "A satellite price on a design-build job is meaningless"; brand-risk if the number is wrong.
- **Barriers:** high (CRM integration with LMN/Aspire).
- **Verdict persona:** wrong customer for v1; at best a "project budget range + qualifier form."

### (c) Fence or roofing owner (D, anchored on A)
- **How they quote:** site visit/measure tape; roofers use EagleView/Roofr reports ($15-$105 per report, B: https://www.capterra.com/p/175004/EagleView-Roofing/). Fence owners increasingly adopt widgets (FenceFlow $129, Next Estimate $149).
- **Lost-lead rate:** unknown. Ticket size is the strongest argument: one extra $5K-$15K job pays a year of software. The startupheist piece makes the same ROI argument (B).
- **Software now:** CRM (JobNimbus, AccuLynx etc.), plus lead-gen spend that dwarfs software.
- **WTP:** $129-$350/mo is demonstrably accepted (A, product prices exist; whether *paid* volume is large is unverified). Roofing is the best-priced vertical but also the most contested (Roofle, Roofr, Roof Quoter, ResponsiBid).
- **Objections:** "Instant range scares/low-balls customers"; "I want the lead's phone number, not a price page"; storm-chaser seasonality; roofing needs pitch, layers, decking (satellite gives plan area only).
- **Barriers:** moderate; they already pay an agency for the website, which controls the embed.
- **Verdict persona:** best WTP, worst competition.

### (d) Homeowner requesting quotes (D, anchored on A)
- **Behaviour:** wants a number in 60 seconds; LawnStarter's pitch is exactly that (A). Hates waiting 2-3 days for a callback, hates giving a phone number before seeing a price (C).
- **Objections:** "Is this the real price or a bait?"; privacy of address.
- **WTP:** won't pay; chooses the pro who shows a price and a booking slot. This is the true demand signal, and it is why consumer marketplaces exist.
- **Implication:** consumer demand for instant pricing is real; the contractor-side distribution and pricing-risk are the issues.

## 3. ROLE 2 — Agent H: Strategic Killer

1. **Feature, not company (A/C).** Jobber includes online booking and requests in every plan (A). Adding satellite measurement is a vendor-side feature release (QuoteIQ bundles it at $29.99, B). Deep Lawn, FenceFlow etc. already exist. A $29-$150/mo widget has no moat; the underlying imagery/measurement is rented.
2. **Copying (C).** Jobber, Housecall Pro, LMN and Roofr can ship this in a quarter. Roofle was already acquired into/near SalesRabbit (B: https://contractortoolstack.com/software/roofle/), showing consolidation by larger platforms.
3. **Imagery licensing and accuracy (A/C).** Nearmap/EagleView publish no retail price and sell enterprise/multi-year contracts (A: Capterra/softwarefinder snippets); EagleView per-report is $15-$105 (B). Google Solar API is cheap for roofs ($3.50-$10 per 1,000 Building Insights calls, free tier 10K/mo, A) but is solar/roof-oriented and does not give lawn polygons or fence lines; Data Layers $26-$75 per 1,000 (A). Lawn area needs own segmentation (turf vs bed vs hardscape) from open or licensed imagery, which is real ML work. Documented satellite limits: old imagery, tree canopy hiding beds, slope, gates/access (A, https://myquoteiq.com/best-satellite-measuring-software-lawn-care-2026/). Fences hidden under trees; beds under canopy: confirmed failure modes. A wrong instant price creates either margin loss (too low) or lost jobs (too high), and the contractor blames the vendor.
4. **Race-to-bottom and lead quality (B/C).** Marketplace pros complain of 15-20% commissions and price compression (B, competitor-authored). Visible prices on the contractor's own site help conversion but invite price comparison against a $19 first-mow promo (A: LawnStarter). Instant price likely pulls lowest-value, highest-churn mowing customers; for premium operators it can hurt positioning (D).
5. **Low SMB WTP and churn (B).** Benchmarks: SMB SaaS monthly churn 3-7% (31-58% annual), avg 4.5%/month, ~32% of cancellations are the business closing and ~28% a cheaper/free alternative (https://retentioncheck.com/churn-benchmarks/smb-saas ; search summary; B, SEO publishers). At $40-$85/mo and 4.5% monthly churn, lifetime is ~22 months and LTV ~$900-$1,900 gross (C). Deep Lawn-level price points make CAC above ~$150 painful.
6. **CAC for tiny businesses (C).** Solo mowers are reached through Facebook groups/YouTube/Reddit with low trust and slow decisions; paid acquisition for $40/mo products rarely pays back. Contractor websites are often controlled by an agency or Wix; embed friction (D). Cold outreach to local operators is cheap but high-touch.
7. **Founder time and fit (A/C).** Student, part-time, no capital (profile). Honest strengths: front-end/UI craft, iOS, Greenturf exposure, Oklahoma local access. Weaknesses: no ML/geo-segmentation background, no sales machine, ~finals schedule. A 1-person support burden for churn-prone SMBs is heavy.
8. **Faith/brand mismatch (C).** Trust-over-pressure brand is an advantage for a homeowner-facing "honest price" angle, but the contractor-pays model pushes toward lead-gen pressure tactics.

### Single most dangerous assumption
That a small contractor will pay $40-$150/mo specifically for the quote widget (rather than treat it as a free feature of Jobber/their website builder) and keep paying after the first seasonal lull, **and** that the satellite price is accurate enough (within ~15%) to be published without eroding margin.

### Cheapest falsifying test (under $100, 2-3 weeks)
1. Pick 20 lawn/fence/pressure-washing companies in OKC/Edmond that have no instant quote (Fence OKC already has one, avoid). Build, manually (Google Earth + spreadsheet, no ML), a one-page "Instant Quote" page for each using their stated per-sqft prices; offer it free for 14 days as a link/embed.
2. Measure: (i) how many reply to 40 cold messages (target 20%); (ii) how many homeowners start the form; (iii) quote error vs the owner's own price on 30 real addresses (target within 15%); (iv) will 5 of them commit to $49/mo with a card (or a signed LOI) after the trial.
Kill signal: fewer than 3 of 20 pilots want to pay, or median error above 25%.

### VERDICT: SHELVE as a standalone product. Do not KILL the underlying insight.
- Standalone widget: SHELVE. Crowded (A), commoditising (A, Jobber bundles), weak SMB retention (B), imagery moat absent.
- Better framing: a **wedge** (C). Options: (1) instant quote + booking as the top-of-funnel of a trust-branded "honest price" local marketplace/website-in-a-box for Oklahoma exterior trades, charging for websites/lead handling not a widget; (2) the founder's existing ideas (iPhone LiDAR measurement) as an on-site scoping tool where satellite fails (tree canopy, slope), which is differentiated from satellite incumbents; (3) a done-for-you web design + instant-quote bundle sold at $1-3K setup, which fits Elliot's design craft and avoids relying on low-ticket SaaS churn.
- Run the 2-week manual test above only if it fits finals; otherwise park it.

## Sources
- https://deeplawn.com/quotes
- https://instantmowingquote.com/
- https://www.lawnsite.com/threads/acculawn-systems-instant-online-quoting-systems.376618/
- https://www.lawnsite.com/threads/does-anyone-quote-using-satellite-tools.432527/ (snippet only)
- https://www.lawnsite.com/threads/online-quote-request.436317/ (snippet only)
- https://myquoteiq.com/best-satellite-measuring-software-lawn-care-2026/
- https://www.getjobber.com/pricing/
- https://www.capterra.com/compare/127994-207272/Jobber-vs-Yardbook
- https://www.capterra.com/p/142064/LMN/
- https://offers.roofle.com/plans
- https://contractortoolstack.com/software/roofle/
- https://www.startupheist.com/the-roofing-quote-layer-39k-mrr-bolted-onto-someone-elses-website/
- https://getfenceflow.com/ ; https://nextestimateagency.com/ ; https://visualfencepro.com/ ; https://fenceokc.com/instant-fence-quote-online/
- https://www.lawnstarter.com/blog/lawnstarter/how-does-lawnstarter-instant-quote-work/
- https://www.yourgreenpal.com/blog/lawnstarter-and-lawn-love-have-high-commission-rates
- https://www.capterra.com/p/175004/EagleView-Roofing/
- https://developers.google.com/maps/documentation/solar/usage-and-billing
- https://retentioncheck.com/churn-benchmarks/smb-saas
