# Review Journal

This journal records the domain cases that matter before widening the public API.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its compilers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `IR pressure`, score 151, lane `ship`
- `stress`: `lowering drift`, score 181, lane `ship`
- `edge`: `stack depth`, score 183, lane `ship`
- `recovery`: `diagnostic reach`, score 143, lane `ship`
- `stale`: `IR pressure`, score 168, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
