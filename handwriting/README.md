# Handwriting transcription

How Claude reads Mr. Greenlaw's handwriting reliably:

- **`.claude/skills/handwriting/`**: the profile Claude loads before reading any handwritten photo. It covers both hands (architectural print, fast cursive), a strip-and-magnify script, a two-pass "literal → decoded" workflow, and the confirmed misread tables.
- **`transcriptions/`**: every transcribed set of pages, with the literal-to-decoded pairs. Confirmed corrections go back into the skill, so accuracy improves with each batch.

To transcribe: send the photos and say "transcribe these". Flagged words come back as `[?word]` with what the strokes literally spell. Reply with the corrections and they become training data.
