# Failure Modes

For `forge-lang-macro-dock`, I would look first for these mistakes:

- `IR pressure` cases moving lanes without a matching threshold change.
- `stack depth` scoring higher after drag increases.
- Duplicate fixture ids hiding a stale golden row.
- README examples drifting away from the verifier.

The local checks are intentionally strict about these cases.
