# G3 effect-time output capability drift check — 16 November 2026

**Additive post-freeze security audit. This is not a production or universal physical protection certificate.**

## Recovered code and newly tested integration
- Existing source: `g3_prod_01/g3_bound_host_server.py::_no_retained_writable_output_handles`, originally used by startup-only live-host preflight. It inventories currently open writable output-inode and staging descriptors in **the writer's process**.
- Existing signed, subject-withdrawal-aware bounded writer: `VetoBoundFencedSignedG3Writer`, merged via [#507](https://github.com/Tobillicious/universal-protection-theory/pull/507).
- [PR #519](https://github.com/Tobillicious/universal-protection-theory/pull/519), merged into main at commit `3d79b5d48d52b5cbcdd53206ffdc62a4e87164d8`, adds an effect-time check while holding the same withdrawal/publication fence. When an unexpected writable output handle is detected or enumeration fails, no publish is allowed; the result is `effect_time_writable_fd_or_unavailable`.
- Regression: creates a writable staging descriptor **after writer startup**, expects rejection and no artifact, closes the descriptor, and verifies normal signed-path publication resumes. No live system is touched.

## Exact-head CI verification
- Verified PR head: `8625df9c541f34460af06bcf5ab1ba14746671a8`.
- [Combined G3 withdrawal / Linux seccomp workflow 43795738517](https://github.com/Tobillicious/universal-protection-theory/actions/runs/43795738517): **success**, both jobs.
- [G3 PROD-01 monitor test workflow 43795738505](https://github.com/Tobillicious/universal-protection-theory/actions/runs/43795738505): **success**.
- [G3 rights-veto triage workflow 43795738559](https://github.com/Tobillicious/universal-protection-theory/actions/runs/43795738559): **success**.
- This checks one exact source revision and prevents a class of same-process output capability drift between service setup and authorization.

## Hard remaining boundary
- The check is an **in-process snapshot**, not a complete lock over all privileged processes. It can race with independently executing code and cannot revoke already-delegated capabilities or prevent writes held by another process.
- The Linux seccomp test from #508 is a narrowly scoped deny-list receiver demonstration, not an exhaustive production allow-list.
- Unbound legacy signed writers, root and other privileged processes, alternate writable mounts, leases, keys, journal rollback, real crash/power-loss recovery, identity and consent source, and original six authentic subject duties remain open.
- Passing research CI does not demonstrate independently observed real-world complete mediation, live agent deployment, universal G3, or a physical cosmological law.

## Next release gate
Create a disposable, dedicated unprivileged host configuration which restricts *all* output-capable principals and FDs by OS policy, excludes legacy unbound interfaces and direct output writes, and runs independent hostile tests under a genuinely exhaustive bounded effect inventory. Provision actual subject authority separately before any effect of real consequence. No protected production deployment has been performed.

Original Koru and all six original X3 definitions, summit proofs and frozen audit receipts are unchanged.
