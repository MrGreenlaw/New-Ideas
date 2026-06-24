# OTD — Out-The-Door Car Price Calculator

A dead-simple iPhone app for used-car buyers. Punch in the sticker price and the
fees a dealer tries to bury, and OTD shows you the **real number you'll pay to
drive off the lot** — live, before you sign anything. No accounts. No saving. No
tracking. It opens fresh every time and forgets everything when you close it.

> "Know the real number before you sign."

---

## Name decision & rationale

**Chosen name: OTD.**

The shortlist was OTD, Curb, Drive Off, Final Price, Sticker. "OTD" wins because:

- It's the exact term sharp buyers and dealers already use — *"what's my out-the-door?"* Naming the app after the question it answers makes it instantly legible to the audience that needs it.
- Three letters read perfectly at icon size and feel like a tool, not a fintech product.
- It's slightly insider — using it signals you know the game, which is exactly the posture a buyer wants standing on a dealer lot.

"Sticker" and "Final Price" were too generic; "Drive Off" was good but longer and less ownable. "OTD" is the term of art, so it's the name.

---

## Architecture

- **SwiftUI, iOS 17+**, no third-party dependencies, no SPM packages.
- **No persistence of any kind** — no CoreData, no UserDefaults. All state lives in `@StateObject` in memory and resets on launch.
- Single `OTDCalculatorViewModel` (`ObservableObject`) owns all state and business logic.
- Fees modeled as `FeeItem(id, label, value, type: .flat | .percent, isRemovable)`.
- `outTheDoorTotal` is a live computed property — there is no "calculate" button.

```
OTD/
├── OTDApp.swift
├── Models/
│   └── FeeItem.swift
├── ViewModels/
│   └── OTDCalculatorViewModel.swift
├── Views/
│   ├── ContentView.swift
│   ├── VehiclePriceSection.swift
│   ├── FeesSection.swift
│   ├── FeeRowView.swift
│   ├── AddFeeButton.swift
│   ├── TradeInSection.swift
│   ├── OTDTotalCard.swift
│   ├── ResetButton.swift
│   ├── CurrencyField.swift
│   └── AnimatingNumber.swift
├── Extensions/
│   └── Color+OTD.swift
└── Assets.xcassets/   (AppIcon + AccentColor)
```

### The math

```
outTheDoorTotal = max(0, vehiclePrice + Σ fees − tradeIn − downPayment)
```

A `.flat` fee contributes its dollar value directly. A `.percent` fee (sales tax)
resolves against the vehicle price: `vehiclePrice × value / 100`. Percent rows
show their resolved dollar amount inline so the buyer always sees real money.

---

## Design

### Color tokens — Coastal / Boathouse (`Color+OTD.swift`)

| Role | Token | Hex | RGB |
|---|---|---|---|
| Background (sea foam) | `.otdBackground` | `#F5F7F2` | 245, 247, 242 |
| Surface / cards | `.otdSurface` | `#FFFFFF` | 255, 255, 255 |
| Primary accent (coral) | `.otdCoral` | `#E8614A` | 232, 97, 74 |
| Secondary accent (sky) | `.otdSky` | `#72B8D4` | 114, 184, 212 |
| Deep tone (navy) | `.otdNavy` | `#1E2D40` | 30, 45, 64 |
| Muted text (warm gray) | `.otdMuted` | `#7A8A8C` | 122, 138, 140 |

**60 / 30 / 10 discipline:** sea-foam background dominates (~60%); navy carries
all structural type and section headers (~30%); **coral is reserved almost
entirely for the OTD total card** plus the keyboard `Done` action (~10%). Sky is
a quiet secondary used only for the dashed *Add a fee* affordance and the inline
resolved-tax amount — never competing with coral for attention.

### Typography scale

SF Pro Rounded for numerics/display, SF Pro for body. **Two weights only**
(regular + semibold). The scale:

| Step | Usage | Size / style |
|---|---|---|
| Hero | OTD total | 52pt rounded semibold, **monospaced digits** |
| Title | App wordmark, field values | `largeTitle` / `title3` rounded |
| Headline | Section titles | `headline` semibold |
| Body | Inputs, buttons | `body` |
| Caption | Muted labels, helper copy | `subheadline` / `footnote` |

The OTD total is the unmistakable typographic hero — large, coral, rounded, and
monospaced so digits don't jitter as they roll.

### Animation spec

The motion language is **floaty and coastal — carried on a breeze, never
snapped.** A single spring vocabulary is used everywhere; nothing in the app uses
an instant cut.

- **Total roll:** `.contentTransition(.numericText(value:))` driven by
  `.spring(response: 0.55, dampingFraction: 0.7)` — digits glide as you type.
- **Card breathing:** when the total changes, `OTDTotalCard` does a soft
  scale (1.0 → 1.015) and shadow-pulse on a low-damping spring
  (`response: 0.45, dampingFraction: 0.65`), settling back gently.
- **Fee row insert:** `.move(edge: .top).combined(with: .opacity)` under
  `.spring(response: 0.5, dampingFraction: 0.7)` — rows drift in.
- **Fee row remove:** spring fade-and-collapse (`response: 0.4, dampingFraction: 0.75`).
- **Reset:** the whole form springs back to defaults in one motion.

Low damping (~0.65–0.75) throughout is what gives the consistent buoyant feel.

### App icon

Coral field (`#E8614A`) with a white price tag, tilted ~12° for friendliness, a
coral checkmark on its face, and a punched tag hole. Bold and legible down to
60×60. It reads as "the right price, confirmed" — the app's whole promise in one
mark. Generated at 1024×1024 (`Assets.xcassets/AppIcon.appiconset/AppIcon.png`).

---

## Design review findings (audit gate)

The build was audited against the mobile-UI pillars, frontend-design quality,
and coding-style before being declared done. Issues found and **fixed**:

**Mobile UI audit**
- **Spacing off-grid:** header used `spacing: 2`. Corrected to `4` so every
  spacing value is divisible by 4/8. All paddings (8/12/16/20/24/32) and touch
  targets verified on grid.
- **Touch targets:** confirmed every interactive element is ≥ 44×44pt — the
  remove-fee button is an explicit 44×44 hit area; Add/Reset/inputs are ≥ 48–52pt.
- **Color rarity:** verified coral appears only on the total card and the single
  `Done` action; moved the *Add a fee* and resolved-tax accents to sky so coral
  stays meaningful (10% rule intact).
- **Typography:** consolidated to a documented 5-step scale, two weights,
  monospaced digits confirmed on the hero total and all numeric fields.

**Frontend / design quality**
- **Signature element:** the breathing coral total card with rolling rounded
  numerals is the memorable, app-specific hero — not a generic calculator skin.
- **Copy for the actual buyer:** strings speak to a car buyer on a lot
  ("Know the real number before you sign", "Start Over", "$X off with trade-in &
  down"), not a generic finance user. Default fee rows are the real ones dealers
  add (Sales Tax, Title & Registration, Doc Fee, Dealer Prep).

**Coding style**
- **Number-animation cleanup:** the first pass mixed an `Animatable`
  conformance with `.contentTransition`, which would double-drive the roll.
  Rewrote `AnimatingNumber` to a single clean spring-backed `numericText`
  transition.
- **Keyboard dismissal bug:** the `Done` toolbar button was wired to a
  `FocusState` the fields never bound to, so it wouldn't dismiss. Replaced with a
  reliable `resignFirstResponder` call.
- No placeholders left unlabeled; no unrelated code touched; consistent spring
  vocabulary across the whole app (no fast snaps mixed with floaty springs).

---

## Build & run

Open `OTD/OTD.xcodeproj` in Xcode 15+ and run on an iOS 17 simulator or device.
No signing or dependency setup required for the simulator.
