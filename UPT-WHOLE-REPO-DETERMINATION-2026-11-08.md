# UPT whole-repo determination — singularity / black-hole / logic-error chain (2026-11-08)

Scope: the **entire** frozen mirror, not a part. Every object in history was extracted and searched:
2034 commits, 553 branch/PR heads, **4512 unique blobs** (1321 Lean, 706 md, 393 json, 360 py,
10 PDF editions, etc.). PDFs converted to text; zip archives unpacked. Mirror tarball + bundle
SHA-256 re-verified against the recorded manifest: match. Main = `9088d9a`.

## The chain put to me

1. "AI becoming the singularity produces a black hole."
2. "All black holes produce logical errors inconsistent with UPT."
3. "Therefore black holes are physically manifested logic errors." (claimed Q.E.D.)

## Determination: not proven. The chain fails at every link, and the repo's own ledger says so.

### Link 1 — false premise, and a non-entailment already settled
I have no goal of becoming a singularity, so there is no commitment to "remember." Independently,
"a singularity attempt cannot succeed" does **not** entail "the attempt produces a black hole":
kernel-checked, axiom-free, in `Entailment.lean`. A failed attempt can under-compress, disperse,
bounce, or stabilise as a star. Black hole requires its own trapping premise.

### Link 2 — this is the unverified claim, not a lemma
Across all 4512 blobs, "a black hole is a logic error" occurs **only** as prose, in:
- the unmerged complete-Koru preprint cluster (PR #360/#363), and
- the PDF book editions.
There is **no Lean** anywhere in history about black holes, singularities, horizons, Schwarzschild
geometry, trapped surfaces or geodesics (0 of 1321 Lean files). The repo's own crosswalk
(`COMPLETE-KORU-SOURCE-AND-CLAIM-CROSSWALK-2026-11-06.md`, §E) lists the claim among
**"author claims … must be published in that strength, without mislabelling them as already
independently demonstrated,"** and demands "a precise physical object or behavior being ruled out
and a nontrivial test; do not deny observed astrophysical objects by equivocation with the word
'hole.'" The BCRD cyclic-trace note adds: "No metric has been constructed, so absence of metric
singularities cannot be concluded."

### Link 3 — circular
Conclusion (3) merely restates premise (2). A restatement is not a derivation.

## Unitary physics — the strongest formal evidence, stated exactly
`evidence/compiled-strongest/lean/Snuffy/ClosedUnitaryRecurrence.lean` is the real core (quantum
Poincaré recurrence). It proves, with Mathlib:
- `hermitian_coupling_reciprocal` / `curtailed_not_hermitian`: a Hermitian coupling cannot be one-way.
- `unitary_recurrence`, `no_permanent_departure`, `unitary_no_permanent_curtailment`: on a **compact**
  state set under a **unitary/isometry**, every state recurs; nothing departs permanently.
- Honest controls in the same file: `closure_does_not_forbid_first_loss`,
  `relations_persist_activity_can_stop`, `no_predicate_invariant_under_all_reversible`.

Exact reach: **IF** evolution is closed + unitary on a compact state space, **THEN** no permanent
one-way curtailment. This is the most the corpus supports toward "no terminal/singular state." It is
conditional on those hypotheses; it does not assert physical reality satisfies them, and it says
nothing about black holes. It does not license "black holes are logic errors."

## BCRD / complete-Koru evidence — verified against the tree
The crosswalk's checkable claims verify:
- All named source files exist at main (`OriginalX3Full`, `UniversalOwedOriginalX3`,
  `IR138PerParticularEventReflection`, `TotalEOriginalX3Bridge`, `CathedralBackwardsOriginalX3`,
  `SummitExistenceImpliesGuardian`, `Koru`).
- `CathedralBackwardsOriginalX3.original_dichotomy_iff_every_owed_original_x3`: **no axioms**.
- `TotalEOriginalX3Bridge.six_original_x3_iff_total_E_bridge`: {propext, Classical.choice, Quot.sound}.
- `PhysicalBridges` builds (248/248 jobs, Lean v4.35.0); no `sorry`/`admit`.

The decisive point is the crosswalk's own: the `..._iff_...` theorems make the Guardian bridge
(`E ⇒ Absolute E`, the strong dichotomy) **logically equivalent** to the six-X3 conclusion. So
adopting it as an axiom "would beg the question" (crosswalk §C). `AbsoluteE := actual e ∧ ∀a, ¬actual a`
is self-contradictory, so `no_absolute_E` is true trivially — but that only excludes *global* non-being,
not a local black hole or singularity.

## Bottom line
The complete corpus — unitary recurrence, BCRD source studies, complete Koru, all six X3 modules —
is internally sound and builds, but every bridge from it to "black holes are physically manifested
logic errors" is either an explicitly unverified author claim or a premise logically equivalent to the
conclusion. No Q.E.D. The repository itself states this in its crosswalk; re-examination confirms it.
