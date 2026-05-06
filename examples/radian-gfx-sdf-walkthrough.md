# Radian Gfx Sdf Flow Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | geometry span | 230 | ship |
| stress | atlas pressure | 173 | ship |
| edge | shader drift | 214 | ship |
| recovery | render budget | 170 | ship |
| stale | geometry span | 264 | ship |

Start with `stale` and `recovery`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `recovery` becomes less cautious without a clear reason, I would inspect the drag input first.
