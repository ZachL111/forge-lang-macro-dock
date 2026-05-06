# forge-lang-macro-dock

`forge-lang-macro-dock` is a compact Julia repository for compilers, centered on this goal: Create a Julia reference implementation for macro workflows, centered on storage recovery, log and snapshot fixtures, and replay consistency checks.

## Use Case

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how IR pressure and stack depth should influence a review result.

## Forge Lang Macro Dock Review Notes

`edge` and `recovery` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## Highlights

- `fixtures/domain_review.csv` adds cases for IR pressure and lowering drift.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/forge-lang-macro-walkthrough.md` walks through the case spread.
- The Julia code includes a review path for `stack depth` and `diagnostic reach`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The added Julia path is deliberately direct, with fixtures doing most of the explaining.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Future Work

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
