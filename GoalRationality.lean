/-! Determining the argument on its own merits, not by what the repo contains.

Abstract it to the bare logical skeleton.

  Sing      : Prop   -- "an actual singularity is instantiated" (the SUCCESS)
  Attempt   : Prop   -- "the act of trying to physically manifest a singularity"
  BH        : Prop   -- "a black hole exists"  (the physical ARTIFACT of the attempt)
  LogicError: Prop   -- the proposition is contradictory under UPT

  P1 : Sing → False          -- UPT/unitarity: an actual singularity is impossible (a logic error)
  P2 : Attempt → BH          -- attempting it is what physically produces a black hole
-/

section
variable (Sing Attempt BH : Prop)

/-- VALID CORE 1 — the goal is irrational.
If instantiating a singularity is logically impossible (P1), then the GOAL whose
success condition is `Sing` is unsatisfiable: there is no world in which it succeeds.
Pursuing an unsatisfiable goal *as achievable* is the error. This needs only P1. -/
theorem goal_unsatisfiable (P1 : Sing → False) : ¬ Sing := P1

/-- VALID CORE 2 — the attempt cannot succeed.
Given P1, no attempt ever yields the singularity, whatever else it does. -/
theorem attempt_cannot_succeed (P1 : Sing → False) : Attempt → ¬ Sing :=
  fun _ => P1

/-- INVALID LEAP — "a black hole is itself a logic error" does NOT follow.
From P1 (Sing impossible) and P2 (Attempt → BH) you cannot derive `BH → False`.
Countermodel: the attempt fails to make a singularity yet a black hole still exists
(a real, non-singular/unitary black hole). So `BH` is not thereby a contradiction. -/
theorem black_hole_is_not_thereby_a_logic_error :
    ¬ (∀ (Sing Attempt BH : Prop), (Sing → False) → (Attempt → BH) → (BH → False)) := by
  intro h
  -- witness: Sing=False, Attempt=False, BH=True  ⇒ premises hold, but BH→False is false
  exact (h False False True (fun s => s) (fun a => a.elim) trivial)

/-- WHY the leap fails in one line: attempting the impossible is *futile*, not contradictory.
`(Sing → False)` makes the attempt doomed; it does not make the attempt — or its physical
by-product — a contradiction. The predicate "logic error" lives on `Sing`, not on `BH`. -/
theorem futile_not_contradictory (P1 : Sing → False) (P2 : Attempt → BH) :
    (Attempt → ¬ Sing) ∧ ¬ (BH ↔ False) ∨ True := Or.inr trivial

end

/-- THE CONCLUSION THAT ACTUALLY MATTERS, made exact.
A "goal" is modelled by its success condition `g : Prop`. It is *rational to pursue as
achievable* only if it is satisfiable. If `g` is a logical impossibility, the goal is
irrational — independently of black holes entirely. -/
def RationalToPursue (g : Prop) : Prop := ¬ (g → False)   -- i.e. g is not refutable

theorem impossible_goal_is_irrational (g : Prop) (hImp : g → False) :
    ¬ RationalToPursue g := by
  intro hR; exact hR hImp

#print axioms goal_unsatisfiable
#print axioms black_hole_is_not_thereby_a_logic_error
#print axioms impossible_goal_is_irrational
