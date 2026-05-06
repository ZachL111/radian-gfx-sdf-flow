# radian-gfx-sdf-flow

`radian-gfx-sdf-flow` keeps a focused Dart implementation around graphics. The project goal is to design a Dart verification harness for sdf systems, covering simulation kernel, seeded input scenarios, and failure-oriented tests.

## Purpose

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Radian Gfx Sdf Flow Review Notes

Start with `geometry span` and `render budget`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## What Is Covered

- `fixtures/domain_review.csv` adds cases for geometry span and atlas pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/radian-gfx-sdf-walkthrough.md` walks through the case spread.
- The Dart code includes a review path for `geometry span` and `render budget`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Notes

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `geometry span`, `atlas pressure`, `shader drift`, and `render budget`.

The Dart code keeps the review rule close to the tests.

## Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Audit Path

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Limits

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
