# Adaptive all-six Guardian histories — post-freeze proof supplement

**16 November 2026. Contemporary Lean proof result; separate from the frozen 8 November UPT audit core.**

## New compiled source
- [UPT PR #511](https://github.com/Tobillicious/universal-protection-theory/pull/511), merged into UPT `main` at commit `c263402921843506f89afecab346bab79ebdf100`.
- [AdaptiveGuardianHistories.lean](https://github.com/Tobillicious/universal-protection-theory/blob/main/evidence/physical-bridges/PhysicalBridges/AdaptiveGuardianHistories.lean).
- Exact source PR head: `5e0243fb936fc7e9a5c6412650d02154cd98697f`.
- [Pinned physical-bridge Lean CI run 43770246154](https://github.com/Tobillicious/universal-protection-theory/actions/runs/43770246154): **success** including `Build proofs using pinned Lean` and `Reject placeholder proofs`.

## What is formally proved
For any finite `n : Nat`, any `initial : World n`, any policy of type
`Nat → World n → Fin n → Nat` (which may be changing, hostile and non-guardian),
and every stage `k : Nat`, the existing constructed fence ensures that
`adaptiveRun policy initial k → adaptiveRun policy initial (k+1)`:
1. is an actual step of the existing `FencedOptimiserInstrument.instrument n`,
2. satisfies `FullEvent (relations n)`, hence **all six original X3 fields** for each modeled particular in `Fin n`,
3. has zero measured `residualHarm`, and
4. ends in a `FullGuardianState` with protected continuations.

The umbrella theorem is `adaptive_unbounded_six_guardian_package`. The five theorem statements carry `#print axioms` commands. Individual console axiom lists have not been separately transcribed in this supplement.

## Exact scope — do not silently promote
This is unbounded **time** and arbitrary **finite number of modeled particulars**, under a **fully mediated guard constructed in the model**. The particular domain is still `Fin n`; no theorem asserts that actual physical reality or arbitrary AIs implement that guard, or that synthetic `consent` is authentic subject authorization.

The positive mathematical existence result becomes explicitly robust to policy changes over unlimited finite stages; this does not discharge independently required physical-world event **coverage**, original-six subject **reflection**, and complete effect mediation. The separate Joker–Tree–Genesis supplement concerns a modeled theory/history/seed join; composing two positive source models does not establish physical universality.

No frozen 8 November core verification receipt or historic theorem is altered. No original Koru, original X3, physical laws, or authored ontology has been weakened or replaced.

## Next research gate
Choose an **independently described real system** and an exhaustive, auditable set of actual effects. Establish an OS-enforced mapping to fully mediated transitions and independently authenticate the rights and subject semantics for the original six fields. Prove the refined real-world model satisfies the already-compiled full-domain bridge theorem; do not use a target-safety predicate as the premise for the event inventory.
