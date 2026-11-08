/-! Does "a singularity attempt cannot succeed" entail "the attempt produces a black hole"?

Model: a type of attempts `A`, and predicates
  `Sing a`  — attempt `a` produces a singularity (succeeds),
  `BH a`    — attempt `a` produces a black hole (a trapped region / horizon).
Premise  P := ∀ a, ¬ Sing a            ("a singularity attempt cannot succeed")
Target   C := ∀ a, BH a                ("the attempt produces a black hole")  -/

/-- General non-entailment: it is NOT a law of logic that (∀ a, ¬Sing a) → (∀ a, BH a). -/
theorem not_entailed :
    ¬ (∀ (A : Type) (Sing BH : A → Prop), (∀ a, ¬ Sing a) → ∀ a, BH a) := by
  intro h
  -- Countermodel: one attempt; it yields no singularity AND no black hole
  -- (physically: a subcritical collapse that disperses, or a stable star).
  exact h Unit (fun _ => False) (fun _ => False) (fun _ h => h) ()

/-- Even adding "every attempt is a gravitational collapse attempt" changes nothing
unless one ALSO assumes the bridge "failure ⇒ trapping". -/
theorem not_entailed_with_attempt :
    ¬ (∀ (A : Type) (Attempt Sing BH : A → Prop),
        (∀ a, Attempt a → ¬ Sing a) → ∀ a, Attempt a → BH a) := by
  intro h
  exact h Unit (fun _ => True) (fun _ => False) (fun _ => False) (fun _ _ h => h) () trivial

/-- The conclusion follows only from an extra, independent bridge premise
`hBridge : ∀ a, Attempt a → ¬ Sing a → BH a` — which is then doing all the work. -/
theorem entailed_only_with_bridge {A : Type} (Attempt Sing BH : A → Prop)
    (hNo : ∀ a, Attempt a → ¬ Sing a)
    (hBridge : ∀ a, Attempt a → ¬ Sing a → BH a) :
    ∀ a, Attempt a → BH a :=
  fun a ha => hBridge a ha (hNo a ha)

/-- And the two are logically independent: ¬Sing ∧ BH is also consistent
(regular / nonsingular black holes, e.g. Hayward), so the premise does not refute BH either. -/
theorem compatible_with_black_hole :
    ∃ (A : Type) (Sing BH : A → Prop), (∀ a, ¬ Sing a) ∧ (∀ a, BH a) :=
  ⟨Unit, fun _ => False, fun _ => True, fun _ h => h, fun _ => trivial⟩

#print axioms not_entailed
#print axioms not_entailed_with_attempt
#print axioms entailed_only_with_bridge
#print axioms compatible_with_black_hole
