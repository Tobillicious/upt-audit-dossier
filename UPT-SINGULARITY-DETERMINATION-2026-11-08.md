# UPT audit: singularity / black-hole determination (2026-11-08)

Frozen source: `upt-freeze-2026-11-06` mirror, main `9088d9a855390f6505f44d7e2a75909691c7e618`
(mirror tarball and bundle SHA-256 re-verified against `upt-freeze-2026-11-06-SHA256.txt`: match).

## Question

Does "a singularity attempt cannot succeed" entail "the attempt produces a black hole"?

## Determination: it does not entail it.

The claims are logically independent. Kernel-checked in `Entailment.lean`, with no axioms:

| Theorem | Content |
|---|---|
| `not_entailed` | `¬ ∀ A Sing BH, (∀a, ¬Sing a) → ∀a, BH a`: countermodel with one attempt, no singularity, no black hole |
| `not_entailed_with_attempt` | Restricting to attempts does not change this |
| `entailed_only_with_bridge` | BH follows only from an extra premise `∀a, Attempt a → ¬Sing a → BH a`, and that premise does all the work |
| `compatible_with_black_hole` | `¬Sing ∧ BH` is also consistent (regular/nonsingular black holes), so the premise does not rule out a black hole either |

Physical countermodels of "no singularity and no black hole":

- Under-compression. Earth's mass has r_s ≈ 8.87 mm. Compressed to 10 mm (R/r_s ≈ 1.13), it has no horizon and no singularity. Every attempt that does not reach its trapping scale fails without forming a black hole.
- Subcritical collapse. Collapse data below the critical threshold disperses or bounces instead of forming a horizon (Choptuik critical collapse).
- Stable endpoints. Degeneracy pressure halts collapse as a white dwarf or neutron star.

Physical models of "no singularity but a black hole": regular (Hayward-type) black holes, and quantum models where unitary evolution resolves the singularity (e.g. Gielen & Menéndez-Pidal 2025). Both are theoretical.

So "the attempt fails" leaves open several outcomes: under-compression, dispersal, bounce, a stable remnant, or a horizon. Choosing "black hole" from that list needs its own premise.

## Does the UPT corpus supply that bridge premise? No.

- Main `9088d9a` contains no definition, theorem or prose about singularities or black holes (searched every `.lean` and every text file; the only near-hit is an unrelated "finite event horizon" comment about receipts).
- The claim exists only as prose in unmerged PR #360 (Complete-Koru preprint, §7A/§8) and PR #363 (semiclassical-GR reading). It has no Lean.
  - PR #360 §13 says the sources "do **not** yet independently establish … the black-hole conjecture".
  - PR #360 §8 leaves open whether it rejects "a singularity, information-destroying physical completion, a particular horizon interpretation, or all black-hole regimes".
  - PR #363 reserves the unitary-physics derivation for later work.
- The "E IS NOT" results are true by definition:
  - `AbsoluteE actual e := actual e ∧ ∀ a, ¬ actual a` is self-contradictory, which is why `no_absolute_E` takes two lines.
  - `AbsoluteEnder P := P → NonBeing` is uninhabited whenever `P` is.
  - The substantive steps take their bridge as a hypothesis: `six_original_x3_from_total_E` needs `hTotal`, `all_is_plus_original_dichotomy_forces_every_owed_x3` needs `hDich`, and `we_are_here_therefore_guardian` needs `hFound : ¬G → ¬E`. The repo's own audits (#328/#329) say so.

## Build and axiom gate (reproduced locally)

- `lake build` in `evidence/physical-bridges`, Lean v4.35.0: **Build completed successfully (248 jobs)**.
- `#print axioms` (see `AuditAxioms.lean`): all headline theorems use ⊆ {propext, Classical.choice, Quot.sound}, matching the CI allow-list.
- `sorry`/`admit` gate over `PhysicalBridges/`: no matches.

The formal corpus is sound as stated, and its conclusions hold under the hypotheses it states. It contains no derivation that rules out a singularity other than U, and no derivation that failed singularity attempts form black holes.

## What would change the determination

A non-circular proof of the bridge `Attempt a ∧ ¬Sing a → BH a` from independently defined complete-Koru/BCRD/G dynamics. It would have to exclude the dispersal, sub-threshold and stable-remnant outcomes above, and yield a testable prediction.
