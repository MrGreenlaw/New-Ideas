# 05 — MVP specification

## The economic hypothesis the MVP tests
"Oklahoma homeowners facing renewal increases will hand a trusted, licensed agency their policy, and enough of them will
switch to a better option that acquisition cost is recovered within ~12 months."

## MVP v0 (days 1–30): concierge, almost no code
- Typeform/Tally intake + secure upload (dec page, renewal notice). Plain web page (03-landing-page.md).
- Manual extraction into a spreadsheet; manual plain-dollar summary written in a Pages/Docs template (design matters:
  this artefact *is* the brand).
- Quoting by a licensed partner agent (until Elliot is licensed) using their rater; Elliot shadows every file.
- Compliance log (who said what, when; disclosures given).

## MVP v1 (days 30–100): the "Renewal Check" app
- iOS (SwiftUI) + responsive web (Next.js). Capture dec page via VisionKit document scanner.
- Extraction: OCR + an LLM with a strict JSON schema (carrier, policy period, premium, Coverage A–F, deductibles
  incl. wind/hail % → dollars, roof settlement ACV/RCV endorsements, notable exclusions). Human verification of every
  field before anything is shown (accuracy > automation).
- Plain-dollar summary screen: "If hail damages your roof, you pay the first $X." Premium history chart. Gaps flagged as
  questions, never as advice, until a licensed agent reviews.
- Agent console (web): queue of files, extracted data, notes, recommendation template, rater hand-off, bind status.
- Annual re-shop reminders (60 days before renewal), opt-in only.
- Optional "roof record" PDF for roofer partners (install date, materials, photos) — goodwill artefact, not a product.

## Manual vs automated
| Manual (deliberately) | Automated |
|---|---|
| Quoting & recommendation (licensed human) | Dec-page OCR/extraction draft |
| Field verification | Deductible-to-dollars maths, renewal reminders |
| Partner relationships | Upload, storage, audit log |

## Architecture
- Client: SwiftUI app; Next.js web. Backend: Supabase (Postgres, auth, storage with row-level security) or equivalent.
- AI: a frontier LLM via API for extraction (commodity; swappable). No customer data used for model training.
- Buy, don't build: AMS + comparative rater (EZLynx or HawkSoft), e-sign, aggregator portals, E&O.
- Security: encrypted storage, PII minimisation, retention policy, access logs. Treat dec pages as sensitive financial data.

## Cost and people (first 100 days)
- Cash: ≈$3–6k (licence & exam ≈$100–200, E&O ≈$1.2–3.5k/yr, AMS/rater ≈$350–600/mo once producing, hosting <$100/mo,
  Apple developer $99) — sourced in `research/W2_C5_regulatory_tech.md` (mostly C).
- People: Elliot (product/design/engineering, licensed producer) ~15–20 h/week; licensed partner agent / co-founder.

## Success metrics and kill criteria
See `04-experiments.md`. The MVP is a success if it produces ≥50 bound households at ≤$400 blended CAC by day 100.
