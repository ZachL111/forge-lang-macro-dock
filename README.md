# forge-lang-macro-dock

`forge-lang-macro-dock` is a focused Julia codebase around create a Julia reference implementation for macro workflows, centered on storage recovery, log and snapshot fixtures, and replay consistency checks. It is meant to be easy to inspect, run, and extend without a hosted service.

## Forge Lang Macro Dock Walkthrough

I would read the project from the outside in: command, fixture, model, then roadmap. That keeps the compilers idea grounded in files that can be checked locally.

## Reason For The Project

The goal is to capture the core behavior in code and make the surrounding assumptions obvious. A reader should be able to run the verifier, open the fixtures, and understand why each decision was made.

## Capabilities

- Models source form with deterministic scoring and explicit review decisions.
- Uses fixture data to keep intermediate state changes visible in code review.
- Includes extended examples for bytecode output, including `recovery` and `degraded`.
- Documents evaluation checks tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.

## How It Is Put Together

The interesting part is the boundary between accepted and reviewed scenarios. Extended examples sit near that boundary so future edits can show whether the model became more permissive or more cautious. The Julia project keeps the model in a small module with assertions in a local test script.

## Where Things Live

- `src`: primary implementation
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Getting It Running

Install Julia and run the commands from the repository root. The project does not need credentials or a hosted service.

## Command Examples

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Check The Work

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Data Notes

`baseline` is the first example I would inspect because it lands on the `review` path with a score of 109. The broader file also keeps `degraded` at -33 and `recovery` at 215, which gives the model a useful low-to-high spread.

## Tradeoffs

The scoring model is simple by design. More domain-specific behavior should be added through explicit adapters or extra fixture classes rather than hidden constants.

## Possible Extensions

- Add a short report command that prints the score breakdown for a single scenario.
- Add malformed input fixtures so the failure path is as visible as the happy path.
- Split the scoring constants into a typed configuration object and validate it before use.
- Add one more compilers fixture that focuses on a malformed or borderline input.
