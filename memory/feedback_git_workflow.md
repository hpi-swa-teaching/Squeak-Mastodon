---
name: feedback-git-workflow
description: "For this repo — write human-style commit messages, ask for confirmation before committing, and never push to remote automatically."
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 026edfd4-d660-462e-b1c9-9da14a6aa767
---

Commit / push workflow rules for this repo:

1. **Human-style commit messages.** Short, declarative, no LLM tells (no "✨", no "Generated with…", no formal section headers in the body for routine commits). Match the style of existing commits in the branch: short imperative subject like "Refactor follow button rendering in toot actions", optional 1–3 dash-bullet body lines. Sometimes commits are even just `"h"` or `"docs"` — minimalism is fine.
2. **Always confirm the commit message with the user before running `git commit`.** Show the message, wait for approval. Do not commit on your own initiative.
3. **Never push to the remote automatically.** Even after a confirmed commit, do not `git push` unless the user explicitly says push.
4. Combine with [[feedback-squeak-commits]]: JSON property files only move in the same commit as the `.st` files they belong to.
5. Combine with [[feedback-no-ai-traces]]: no Co-Authored-By Claude lines, no AI attribution in the body.

**Why:** University project — every commit is reviewed/graded. The user controls release timing and wants human-looking history.

**How to apply:** Before any commit, write the proposed message in plain text, ask the user to confirm or edit, then run `git commit` with their approved message. Stop there until they say push.
