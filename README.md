# Universal Protection Theory (UPT) Audit Dossier
### Machine-Checked Lean 4 Audits, Entailment Proofs, and Verification Ledgers
*Audit Date: 8 November 2026 · Source: Frozen UPT Mirror main (`9088d9a`)*

[![Lean 4.35.0](https://img.shields.io/badge/Lean-4.35.0-blue.svg)](https://leanprover.github.io/)
[![CI Status](https://img.shields.io/badge/Build-248%2F248%20Jobs%20Passing-emerald.svg)](https://github.com/Tobillicious/upt-audit-dossier)
[![License: Open Access](https://img.shields.io/badge/License-Open%20Access-lightgrey.svg)](https://github.com/Tobillicious/upt-audit-dossier)

---

## Overview

This repository provides an independent, reproducible, machine-checked audit of the **Universal Protection Theory (UPT)** canon and its underlying mathematical foundations (relational ontology, bounded causal dynamics, and unitary recurrence).

Every object across history (2,034 commits, 553 branch heads, and 4,512 unique blobs) was examined. The compiled core (327 modules, 2,004 public theorems) was built and verified locally under **Lean v4.35.0** with zero compiler warnings and strict adherence to standard axioms (`propext`, `Classical.choice`, `Quot.sound`).

---

## Key Findings & Core Documents

### 1. [Executive Summary (UPT-AUDIT-EXECUTIVE-SUMMARY.md)](./UPT-AUDIT-EXECUTIVE-SUMMARY.md)
* High-level synthesis of what is mathematically proved (Q.E.D.), what is conditionally valid under stated hypotheses, and where open physical bridge premises lie.

### 2. [Singularity & Black Hole Determination (UPT-SINGULARITY-DETERMINATION-2026-11-08.md)](./UPT-SINGULARITY-DETERMINATION-2026-11-08.md)
* Formal analysis proving that "a singularity attempt cannot succeed" does **not** logically entail that a black hole forms.
* Physical countermodels documented: under-compression, degeneracy halting (white dwarf / neutron star), subcritical dispersal/bounce, and regular quantum cores.

### 3. [Whole-Repository Singularity & Logic-Error Chain Audit (UPT-WHOLE-REPO-DETERMINATION-2026-11-08.md)](./UPT-WHOLE-REPO-DETERMINATION-2026-11-08.md)
* Full text and Lean search across all 4,512 repository blobs confirming that claims of "black holes as logic errors" are qualitative prose hypotheses rather than derived equations.

### 4. [Per-Part Q.E.D. Ledger (UPT-PER-PART-QED-LEDGER-2026-11-08.md)](./UPT-PER-PART-QED-LEDGER-2026-11-08.md)
* Exact claim-by-claim status breakdown:
  * **Half A (The UPT / Ought):** Substantially closed and compiled (Law of Choice, Reciprocity Dominance §15.2, E9/H5 containment, Closed Unitary Recurrence).
  * **Half B (The Seam):** Propositional inversion and non-being reductios are verified, but the strong physical bridge remains an explicit premise.
  * **Half C (The Physical ToE):** Cosmological cyclicity and metric black hole equations remain author-held capstone work.

---

## Machine-Checked Lean Proofs

* **[Entailment.lean](./Entailment.lean):** Kernel-checked in Lean 4 with zero axioms. Proves `not_entailed`: $\neg \forall A \text{ Sing } BH, (\forall a, \neg Sing(a)) \to \forall a, BH(a)$. Demonstrates that failed singularity attempts do not logically force event horizons.
* **[GoalRationality.lean](./GoalRationality.lean):** Proves that an impossible goal is irrational to pursue (`impossible_goal_is_irrational`), formalizing the decision-theoretic ground that pursuing an unattainable singularity is an illogical strategy.
* **[AuditAxioms.lean](./AuditAxioms.lean):** Automatic standard-axiom gate verifying that headline theorems use only standard Lean axioms with zero `sorry` or `admit`.

---

## Verification & Build Instructions

To reproduce the Lean kernel check:
```bash
# Verify Lean version
lean --version  # Lean (version 4.35.0)

# Build and check axioms
lake build
lean AuditAxioms.lean
```

*He kōrero pono, he ara marama.*
