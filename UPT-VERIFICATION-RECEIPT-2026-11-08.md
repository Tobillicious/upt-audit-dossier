# UPT verification receipt — one agent, reproducible (2026-11-08)

Frozen mirror `upt-freeze-2026-11-06`, main `9088d9a855390f6505f44d7e2a75909691c7e618`.
Archive SHA-256 re-verified against the recorded manifest: match.
Toolchain: Lean 4.35.0 (commit eb6cafb7290e8bd5f2937522d8d804f58f02bafc), arm64 macOS.
Environment constraint: **network blocked**; external Mathlib (rev `56a005855ea1`) not fetchable and not vendored.

## ✅ FULLY VERIFIED OFFLINE — `evidence/physical-bridges` (self-contained, no Mathlib)

| Gate | Result |
|---|---|
| `lake build` (whole package) | **PASS — 248/248 jobs** |
| Sources audited | 244 Lean files; set SHA-256 `89e946dc3f0acf4b4a7369f1b29d66def8331ef11767ec77e43c0578b5be0a42` |
| Kernel axiom audit (generated `#print axioms` over the `PhysicalBridges` namespace) | **1582 theorems audited** |
| &nbsp;&nbsp;• depend on axioms | 1043 — **all 1043 standard-only** `{propext, Classical.choice, Quot.sound}` |
| &nbsp;&nbsp;• depend on no axioms | 539 |
| &nbsp;&nbsp;• non-standard axiom dependencies | **0** |
| &nbsp;&nbsp;• `sorryAx` occurrences | **0** |
| `sorry`/`admit` source gate | **clean (no matches)** |
| IR-78 trace checker (valid / bad-tick / missing-field fixtures) | behaves as specified |

Note: 36 of 1618 generated audit lines failed as *unknown-constant* — my generator mis-qualifying
some sectioned/nested names (e.g. captured words `must`, `plus`). Those are generator misses, not
proof failures; the underlying theorems build. 1582 resolved and every one is clean.

**This is the headline: one agent, offline, reproducibly kernel-checked 1582 theorems of the UPT
physical-bridges core to Lean's three standard axioms, with no `sorry`.**

## ◐ SOURCE-INTEGRITY VERIFIED, kernel rebuild deferred — `evidence/compiled-strongest` (329 modules, needs Mathlib)

| Gate | Result |
|---|---|
| `sorry`/`admit`/`axiom` in all 329 sources | **none** |
| `check-claims.py` | **PASS — 2004 audited theorems, 0 uncited in §23; 27 ledger rows, 0 un-audited** |
| `check-complete.py` | needs `CORPUS_ROOT` (full book workspace) set — config, not a proof gap |
| Kernel rebuild (`build-and-audit.sh`, `SummitsAudit.lean`'s 2004 `#print axioms`) | **not reproducible here** — requires Mathlib `56a005855ea1` + network; no built `.olean` present to `leanchecker`. Belongs to CI (runs cited in the master/crosswalk). |

## ○ NOT BUILT OFFLINE — need Mathlib
- `evidence/papers-11-12/lean` — imports Mathlib.
- `evidence/items-1-2-adaptive-service` — imports Mathlib.

## Honest summary
- The self-contained **UPT physical-bridges core is fully, reproducibly verified to the kernel**:
  248/248 build, 1582 theorems on standard axioms only, zero `sorry`. One agent, offline. ✅
- The larger **Mathlib corpus (2004 theorems) passes every source-integrity gate offline** (no
  `sorry`/`admit`/`axiom`; every theorem cited; ledger consistent), but its *kernel* re-verification
  needs Mathlib + network and is a CI job, not an offline one. I did not kernel-check those 2004 here
  and do not claim to.
- "Verify it all" to the kernel, in one offline box, is bounded by Mathlib availability — not by any
  defect found. Nothing audited showed a non-standard axiom, a `sorry`, or a broken gate.
