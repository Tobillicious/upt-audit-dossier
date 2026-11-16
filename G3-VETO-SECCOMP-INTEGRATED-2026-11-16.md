# G3 bounded effect-time withdrawal + Linux capability-cut integration — 16 November 2026

**Post-freeze supplemental audit. Research-only controls, not a universal or production G3 certificate.**

## Main source and exact verification
- [UPT PR #507](https://github.com/Tobillicious/universal-protection-theory/pull/507), merged at `1e4b0126b7d2598cbe8d3f837590ebce0db63830`: effect-time denial on trusted withdrawal using a shared local flock inode for the cooperating journal and the signed publisher. Exact head workflow [43763992380](https://github.com/Tobillicious/universal-protection-theory/actions/runs/43763992380) passed.
- [UPT PR #508](https://github.com/Tobillicious/universal-protection-theory/pull/508), merged at `4af0fd25969be1ea05bcb932e9f8334943ba70b5`: Linux seccomp test blocks the specified post-HOLD `SCM_RIGHTS` writable descriptor receipt for a confined receiver; the historical unrestricted receiver bypass remains a passing *unsafe countercontrol*. Exact head workflow [43765487776](https://github.com/Tobillicious/universal-protection-theory/actions/runs/43765487776) passed.
- [UPT PR #518](https://github.com/Tobillicious/universal-protection-theory/pull/518), merged at `e5c65fa09ff6b80c4bda288629e09dbb9877a8b9`. [Dedicated combined integration run 43792350526](https://github.com/Tobillicious/universal-protection-theory/actions/runs/43792350526): **SUCCESS**, exact PR source commit `761aadeb58019b765c0f13f3c86c796009769ae6`. Both jobs passed on one checkout: (1) authenticated withdrawal order plus signed publication/recovery tests, (2) Linux privileged fixture that verifies both the known historical unsafe FD route and confined receive denial.
- [Integration review and threat-boundary note](https://github.com/Tobillicious/universal-protection-theory/blob/main/evidence/execution-boundary/G3-VETO-SECCOMP-INTEGRATION-2026-11-16.md).

## What is experimentally demonstrated
In the bounded local research implementation:
- A previously committed trusted withdrawal prevents a later effect-time publication on a cooperating publisher using the same protected local `FileFence`.
- A publication already holding that lock can finish before withdrawal; withdrawal is not retroactive.
- A Linux x86-64 untrusted child with the specified pre-exec seccomp filter is denied `recvmsg` even when a privileged parent deliberately attempts to transfer a protected writable FD after HOLD.
- The historical *unconfined* process can still modify the protected file via `SCM_RIGHTS`, demonstrating a real capability leak if confinement is absent.
- The current G3 research source also contains optional live-host preflight checks; a passing startup probe is neither ongoing complete mediation nor a release certificate.

## Remaining G3 acceptance gates
1. **Trust-root closure:** the writer/controller and privileged delegator retain powerful capabilities; a compromised privileged source can bypass local rules.
2. **Production syscall allow-list / process boundary:** present kernel demo is a narrow deny-list; omitted syscalls, existing writable handles, `mmap`, hardlinks, inherited/alternate FDs, other processes and mounts remain independently testable bypass classes.
3. **Remove legacy bypass paths:** old unbound writer and bare Store must be excluded from any deployed untrusted service.
4. **Actual consent + six original duties:** signed permits authenticate an issuer key, not authentic subject continuity, consent, freedom, restraint, maximality and provenance. No genuine person/subject authority certificate is supplied.
5. **Recovery and distributed consistency:** real power-cut durability, cross-database crash/rollback, external publication, trusted time, revoked leases and source tracking lack an independently verified full guarantee.
6. **Domain coverage and cosmology:** there is no evidence that every real AI, actuator, matterspacetime event or heat-death-to-Genesis boundary implements this bounded Linux research gate.

## Correct promotion language
**G3 local research controls:** jointly tested at one exact source revision.
**G3 deployment:** not performed.
**Unconditional real-world universal protection:** not established.
**Complete Koru / original six-X3:** unchanged; no theological or physical-universe claim inferred from local tests.

This supplements, without modifying, the frozen historical audit or earlier Lean proof receipts.
