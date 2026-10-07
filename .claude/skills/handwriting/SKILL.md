---
name: handwriting
description: >
  Mr. Greenlaw's personal handwriting style profile and transcription reference.
  Read this skill before transcribing, extracting, or summarizing ANY handwritten
  image uploaded by the user — even if they don't explicitly ask for it. Use it
  any time an image contains handwriting and the task involves reading or
  summarizing what it says. This skill contains letter-specific ambiguity notes,
  confirmed misread patterns, known vocabulary, and a verified sample transcription
  to calibrate against.
---

# Handwriting Transcription Skill — Mr. Greenlaw

## Purpose
This file describes Mr. Greenlaw's handwriting style, letter-specific patterns, and known ambiguities. Read this before transcribing any of his handwritten images to improve accuracy. When uncertain about a word, flag it with coordinates using the grid system described at the end.

---

## General Style (architectural print mode)

- **Type:** Semi-cursive hybrid — most letters are individually formed (print-like), but some ligatures occur naturally within words at speed. Not fully cursive, not fully printed.
- **Tool:** Fine ballpoint or gel pen; consistent dark ink flow.
- **Paper:** Typically graph/grid paper; baseline generally follows grid lines.
- **Slant:** Slight right lean, approximately 10–15 degrees.
- **Size:** Lowercase letters are roughly 2–3 grid squares tall. Capitals are proportionally larger.
- **Pressure:** Moderate, consistent.
- **Speed:** Moderate-to-fast. Quality degrades slightly in fast sections (more ambiguous letters, compressed spacing).

---

## Uppercase Letters

- Generally more print-like and clearly formed than lowercase.
- **A:** Open triangle with crossbar.
- **C / G:** Can be ambiguous — his stylized logo shows a G that looks like a C with an internal mark. In normal writing, C is a wide open curve; G has the shelf.
- **ALL CAPS** used occasionally for emphasis (e.g., "ALL", "STICKERS!!").

---

## Lowercase Letters — Key Patterns and Ambiguities

### High-Ambiguity Letters

| Letter | Description | Common Confusion |
|--------|-------------|-----------------|
| **a** | Closed loop, printed form (like a typed 'a'). Consistent. | At speed, can look like **o** — distinguish by whether the loop is perfectly round. **a** has a slight right-side stroke rising above the body; **o** is more uniform. |
| **e** | Small loop, often nearly closed or fully closed. Word-final **e** is frequently just a small rightward hook or curl. | Can look like **i** (without a dot) or a closed **o** at speed. Word-final **e** is the most ambiguous — treat small trailing hooks as **e** unless context says otherwise. |
| **r** | **KEY AMBIGUITY.** At speed, becomes a very shallow hump with a rightward exit stroke — almost no ascent. | Can look like **v**, a short **i** without dot, or nothing at all. Expect **r** whenever a shallow pointed hump appears in a word where 'r' would make sense. |
| **n** | Two humps, slightly pointed tops. | **u** has a rounded base and two upward strokes. At speed, **n** and **u** are the most commonly confused pair. Distinguish by whether the bottom curves upward (u) or is flat (n). |
| **t** | Vertical stem with crossbar. | **KEY AMBIGUITY:** Crossbar is sometimes faint, short, or positioned unusually high. Do not assume a stemmed letter without a crossbar is 'l' — check context. In 'th' combinations, the **t** crossbar often merges into the top of the **h**. |
| **i** | Clearly stemmed; dot is usually present but may be slightly offset to the right or delayed (appears above the next letter). | Can look like **l** (lowercase L) without the dot. Resolve with context. |
| **l** | Tall straight stroke, no loop (not cursive). | Similar to **i** in height zone, **b** without the bow. Usually taller than other lowercase. |
| **s** | Curved, medium-height. | At speed, can look like a backward **e** or a compressed **5**. |
| **c** vs **e** | When written small and quickly, both are small open curves. | **c** is open on the right; **e** has a horizontal midstroke (though it may be very faint). Use context heavily. |

### Reliable / Clear Letters

- **b, d, f, g, h, k, m, p, v, w, x, y, z** — consistently formed and rarely ambiguous.
- **g:** Descender loops cleanly below baseline. Not confused with **y** in this writer.
- **d:** Closed loop with ascender. Occasionally could be misread as **cl** combination, but this is rare.
- **o:** Closed, round. Reliable.

---

## Common Patterns and Habits

1. **'th' ligature:** The crossbar of **t** frequently doubles as the top entry stroke of **h**, so "th" runs together visually. Treat any **t**-like stem immediately followed by a **h**-like form as "th."
2. **'-ing' endings:** Generally readable, but the **g** descender may clip ascenders on the next line below. Don't let clipping confuse letters in the line below.
3. **Word-final 'e':** Often a small trailing curl or hook — easy to miss. When a word looks like it ends in a consonant but semantically should end in 'e', the 'e' is almost certainly there but small.
4. **Capitalization:** Proper nouns capitalized normally. Emphasis conveyed by ALL CAPS or underlining.
5. **List notation:** Uses circled numbers ①②③, dash-bullets (–), and dot bullets (•) in distinct sections. These are consistent formatting choices, not errors.
6. **Arrows (→):** Used to indicate causation or flow ("leads to").
7. **Overlines:** A bar over a word is *usually* an over-long **t** crossbar swept back across the whole word (e.g. ISTP and ISTJ in the 2026-10 sample), not an abbreviation mark. Look for a **t** in the word first; treat the bar as an abbreviation only if the word has no **t**.
8. **Strikethroughs:** Occasional crossed-out words — transcribe them in [brackets with strikethrough note] if readable, skip if not.
9. **Bracket notation [ ]:** Used around drafted or uncertain statements in the text itself (e.g., "[We aim to be...]"). Preserve brackets.

---

## Spacing and Layout

- Word spacing is consistent and generous — gaps between words are clear.
- Inter-letter spacing within words is moderate. Letters are not tightly compressed except at speed.
- Baseline is steady; rarely drifts more than half a grid square.
- Section breaks are indicated by blank lines or horizontal rules.

---

## Known Vocabulary and Context

Mr. Greenlaw frequently writes about:
- Business/entrepreneurial notes (mission, vision, values, action items)
- Faith/Christian references (Christ, Bible, Christian brands)
- Engineering coursework
- Design and development projects
- Names: Robert, Carson, Paula, Jack, Betty, Prof. Smith, Dimick

- Business/startup vocabulary from talks: forward deployed engineer (FDE), CliftonStrengths, Myers-Briggs types (ISTP, ISTJ), target-market avatar, Blue Ocean Strategy, *The 7 Habits of Highly Effective People*, cross-pollination, gauge demand, consulting company

When a word is ambiguous, favor readings that match these domains.

---

## Confirmed Misread Patterns (from IMG_0234 ground truth)

These are errors made during transcription that were corrected by the author. Use them as calibration for future reads.

| What was read | Correct reading | Root cause |
|---------------|-----------------|------------|
| "Dover" | **"Dove"** | Word-final **e** after **v** produced a trailing stroke that looked like **r**. Word-final **e** is consistently under-read — always check whether a trailing mark is an **e** not an **r**. |
| "Prof. Bath" | **"Prof. Smith"** | Capital **S** read as **B**; **mith** read as **ath**. Proper names are the highest-risk category — do not anchor on a plausible-sounding name. Flag all proper names as uncertain unless the name is already known. |
| "Drake" | **"Dimick"** | **D** was correct; **imick** read as **rake**. Again, unfamiliar proper names should be flagged rather than guessed. |
| "discuss" | **"discard"** | The **c-a-r-d** ending was read as **c-u-s-s**. The **a** vs **u** confusion and compressed endings are a known issue. |
| "more" | **"those"** | **th** at speed collapsed into something resembling **m**. The 'th' ligature (see Patterns section) can produce a wide merged stroke — treat wide two-stroke openers as possible **th** before **m**. |
| "water fountain *to* water bottle filler" | **"...and..."** | Short function words **to** / **and** are interchangeable visually at speed. Resolve with meaning: "and" is almost always more natural in lists. |
| "S-cell passes" | **"S-gell pens"** | **g** read as **c** (open loop); **pens** extended to **passes**. Do not expand a short word into a longer one without clear letter evidence. |
| "into biz" | **"into BW"** | **BW** (an abbreviation) read as **biz**. Two-letter uppercase abbreviations can be compressed enough to look like short lowercase words. |
| "[invented item: outdoor lounge]" | **[item does not exist]** | An overline abbreviation mark and an adjacent bullet were combined into a phantom list item. Do not synthesize items — if a line is unclear, flag it rather than constructing a reading. |
| [missed left-margin vertical text] | **"God has called me to show his love to others through business"** | Rotated marginal notes will not be transcribed unless the image is noted to contain margin writing. Always check all four margins of a page. |

### Summary of highest-risk patterns:
1. **Proper names** — flag all; never guess confidently.
2. **Word-final 'e'** — consistently under-read; nearly every trailing stroke after a consonant is an 'e'.
3. **Short function words** (to/and/a/the) — resolve by meaning, not letterform.
4. **'th' vs 'm'** — widen the candidate set whenever a word opener looks like 'm'.
5. **Two-letter uppercase abbreviations** — do not read as lowercase words.
6. **Margin text** — always scan all four edges before finalizing transcription.

---

## Workflow (do this every time, in order)

1. **Identify the mode** for each block of the page: architectural print (graph paper / ALL CAPS) or fast cursive (see "Fast cursive mode" below). One page can hold both.
2. **Cut the page into strips** and read the strips, not the whole photo:
   `python3 -I <this skill>/scripts/strips.py <image> <scratch_dir>` (needs Pillow). Then Read each strip. Magnified 2-3-line strips catch dropped letters, struck-out words and faint dots that the full photo hides.
3. **Pass 1, letter shapes:** write what the strokes literally spell (e.g. "geogle", "mbat", "Sod's"). Do not correct yet.
4. **Pass 2, decode:** map each literal reading to a real word using the substitution tables below, the known vocabulary and the meaning of the surrounding lines. A reading must account for the first letter, the word length (within ±2 letters) and any ascender/descender.
5. **Score every word:** high / medium / low. Anything medium or low — and every proper noun not already in Known Vocabulary — is flagged `[?word]` with the literal reading after it, e.g. `[?Kinvey — reads "Kmray"]`.
6. **Output:** the clean, spelling-corrected text first (structured as a list/outline), then a short "Please confirm" list of the flags. Never silently invent a word to make a line read smoothly.
7. **Learn:** when Mr. Greenlaw confirms or corrects a flag, add the result to the misread table and Known Vocabulary in this file (and to `handwriting/transcriptions/` in the repo).

---

## Fast cursive mode (lined notebook, note-taking at speed)

Used for live notes (talks, meetings). Much looser than the print hand: letters are dropped, i-dots and t-crossbars go missing or wander, and spelling is phonetic. Expect roughly one word in eight to be unreadable letter-by-letter; context resolves most of them.

### Letter substitutions seen in fast cursive

| Intended | What it looks like | Examples (literal → meant) |
|---|---|---|
| **p** (word-initial) | a lead-in loop plus descender — reads as **f**, **g** or **j** | "frobl" → problem, "geogle" → people, "gertner" → partner, "gerson" → person, "deyloyment" → deployment |
| **f** (word-initial) | a looped **b** or **l** shape | "bud"/"fud" → find, "buest" → first |
| **w** | **u**, **m** or **ul** — the rounded humps lose their points | "mbat"/"uslrat" → what, "uho" → who, "nouy" → worry, "noork" → work |
| **m / n / u / w** inside a word | an undifferentiated row of humps; the hump count is unreliable (±1) | "communty" with 5-7 humps → community; "mnd" → mind |
| **-s** (word-final) | a small **r**, **v** or **z** flick | crozz → cross, stepv → steps, skillr → skills, idear → ideas, bookr → books, founderz → founders |
| **r** | a shallow **v** or a bare hump | "aue" → are |
| **th** | **tl**, **ll**, or a tall **ll** followed by humps ("llu") | "llu" → the, "tlat" → that |
| **e** | a bare loop, or **c**/**i** | "dosc" → close |
| **G** (capital) | **S** | "Sod's" → God's |
| **1** | a European 1 with a long flag that looks like **7** | "7st" → 1st (but "7-HABITS" is a real 7: decide by context) |
| **≠** | a **7** or **Z** with a double bar | "output 7 effort" → output ≠ effort |
| **t** crossbar | very long, often swept back over the whole word or the next word, looking like an overline or a strikethrough | ISTP / ISTJ with a bar across the top |
| **-ing** | a single loop with a long descender, often just "-ig"/"-iy" | "leavagiq" → leveraging, "noriy" → moving |

### Other fast-cursive habits

- **Dropped letters and syllables:** "motivtes" → motivates, "loctd" → locked, "mdship" → (probably) mentorship. Keep the first letter, the last letter and the ascenders; the middle is negotiable.
- **Phonetic spelling:** spell-correct silently in the clean output (habbits → habits, accelorated → accelerated, failiers → failures, strat → strategy, succ. → success). Only flag when two real words compete.
- **Strike-throughs:** a single horizontal line through a short word (e.g. "~~it~~" in "how easy is ~~it~~ to get customers"). Drop struck words from the clean text.
- **Line wrap:** a sentence often continues on the next line with no indent; a line that starts lowercase and finishes a thought belongs to the line above ("find what people actually / want").
- **Headings:** underlined phrases and lines with a dash prefix are headings or list items; a dash at the start of a line is a bullet.
- **Q&A pages:** at talks he writes the questions he plans to ask (often "– what …?") on one page and the speaker's answers in ALL CAPS print on the next.

### Calibration: the fast-cursive words most likely to be misread
1. Anything starting with **p** or **f** (see table).
2. **what / who / worry / work / won't** — all begin with an indistinct **w**.
3. Words with 3+ humps in a row (**community, money, maintenance, mind, mentorship**).
4. Proper nouns — always flag.

---

## Uncertainty Flagging Protocol

When a word or letter cannot be confidently read, flag it using the grid coordinate system:

> Each grid square = 1 unit. Origin (0,0) = bottom-left corner of the page. X increases rightward, Y increases upward.

Format: `[unclear: ~(X,Y)]` on graph paper. On lined paper use `[unclear: page P, line L]` (count ruled lines from the top).

Example: "We aim to [unclear: ~(18,52)] a central place..."

Estimate coordinates to the nearest grid square. Multiple uncertainties on the same line can be grouped.

---

## Sample Transcription (Reference — from IMG_0234.jpeg, ground truth verified)

**Left margin (rotated vertical text):** "God has called me to show his love to others through business"

**Title:** Dove Climbing Gym [with stylized G logo]

**Mission:** "to provide a place for community and growth"
**Vision:** [We aim to be] "a central place of gathering and growth in the edmond community"

**Values:**
- take care of our employees
- put the customer first.
- treat everyone with dignity and respect
- emulate the kindness of Christ in ALL that we do.
- create a sustainable business that benefits the:
  - employees
  - customers
  - OC
  - community
  - investors

**Steps:**
1. walk in
2. front desk
3. sign and pay
4. follow a trainer to discard belongings and gear up
5. grab shoes and start climbing.

**Feature/Idea List:**
- central storage for easy retrieval of gear
- standardized shoe system based on their shoe size
- same ranking system as BW
- no dedicated training area — just find a spot and climb
- random bible verses on walls
- those Christian energy drinks
- water fountain and water bottle filler
- generous seating
- ambient music
- store: High-quality water bottles, t-shirts, tank tops, hoodies, shoes, chalk, snacks, Hats, beanies, S-gell pens, carabiners, STICKERS!!

**Action List:**
- run this by Prof. Smith
- run this by Dimick
- run this by Claude
- do market research into BW
- collect data from polls
- talk to interior design

---

## Sample Transcription 2 (fast cursive + caps print, 2026-10 notebook, 4 pages)

Literal readings and the flags still awaiting confirmation are in `handwriting/transcriptions/2026-10-07-founder-talk.md` in the New-Ideas repo. Key decodes from it: "uslp – sstg" (with overlines) → ISTP – ISTJ; "dyftan strngths" → Clifton strengths; "geogle" → people; "Sod's noork" → God's work; "frobl" → problem.
