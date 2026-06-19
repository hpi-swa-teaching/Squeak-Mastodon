---
name: project-context
description: "Squeak-Mastodon is a university course project (HPI SWT 2026, group g10). Durable context that applies across all feature branches."
metadata: 
  node_type: memory
  type: project
  originSessionId: 026edfd4-d660-462e-b1c9-9da14a6aa767
---

**Course context:** HPI Software Engineering Techniques (SWT) 2026, group g10. Multiple groups (g09, g10, g11) work in the same upstream repo. The user contributes via group-scoped feature branches.

**Why:** Knowing this is a university submission shapes expectations — see [[feedback-no-ai-traces]] and [[feedback-squeak-commits]]. It also explains the branching layout and why other students' initials show up in `methodProperties.json` timestamps.

**Repo / branching layout:**
- Upstream: `hpi-swa-teaching/Squeak-Mastodon`. The user's fork tracks it.
- `origin/main` — shared course-wide main.
- `swt26-g10/main` — group g10's integration branch, sits alongside `origin/main`.
- Feature branches follow `swt<year>-g<group>/<issue-number>-<slug>`. Example: `swt26-g10/78-view-liked-posts-screen`. The issue number maps to a GitHub issue.
- Features land on the group main via PR review by groupmates, then propagate up.

**Cross-feature themes that keep recurring:**
- The codebase serves both **Mastodon** and **Bluesky** behind a provider abstraction (`MTSocialProvider` → `MTMastodonApi` / `MTBlueSkyApi`, chosen via `MTProviderFactory`).
- Many newer features are **Bluesky-only** because the Bluesky side is being built out to match the older Mastodon side. Gating pattern in use across the codebase: `(self mastodonApi isKindOf: MTBlueSkyApi) ifTrue: [...]`.
- When asked to add or change a feature, clarify the provider scope (Mastodon, Bluesky, or both) before implementing if it's not obvious.

**Per-feature notes do NOT belong here.**
- This memory captures only project-wide, durable context. Feature-specific scope, file paths, and commit lists belong in `docs.md` (the gitignored agent-reference file) and in git history / PR descriptions.
- When starting work on a new feature branch, read `docs.md` to pick up where the last session left off; update its "Active feature" section as the branch progresses. Don't lift that content into memory.

**How to apply:** Treat this file as background that's true today and will still be true next month. If a fact is going to change when the user moves to the next ticket, it doesn't belong in this memory.
