---
name: feedback-squeak-commits
description: "Squeak image commits never include standalone JSON-formatting changes; keep methodProperties.json / properties.json edits inline with the .st changes they belong to, and match the canonical Squeak JSON layout (spaces around colons, hugged closing braces)."
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 026edfd4-d660-462e-b1c9-9da14a6aa767
---

When working in Cypress FileTree (`.package/.class/...`) repos, never commit `methodProperties.json` or `properties.json` formatting/whitespace changes on their own. They look unnatural — real Squeak image commits write those JSON files programmatically as a side-effect of saving the changed methods.

**Why:** Commit `ef8cf7e` (titled "h") landed pure-whitespace JSON reformatting independent of the `.st` files. The user flagged this as a tell — it does not resemble how a Squeak image would have produced the diff, and stands out as an LLM/editor artifact. See [[feedback-no-ai-traces]].

**How to apply:**
- Only modify a `methodProperties.json` / `properties.json` entry as part of the same commit that adds/removes/renames the corresponding `.st` method or instance var.
- Do not run editor auto-format on these files, do not re-indent existing entries, do not add trailing newlines, do not "clean up" key ordering.
- When in doubt, leave the JSON file alone except for the minimal lines that match the `.st` change.
- Never bundle isolated JSON formatting commits.

## Canonical Squeak JSON format

Squeak generates these files itself; the format below is what it emits, and what was in the repo before `ef8cf7e` "fixed" them to a generic prettier style. **Always emit this format for new lines you add.** The reformatted style introduced by `ef8cf7e` is wrong — treat any file currently in that style as a regression to live with, not a template to copy.

**Rules:**

1. **Space around the colon between key and value.** `"key" : "value"` — never `"key": "value"`.
2. **Hugged closing braces.** The closing `}` of an object goes on the same line as the last entry, with a single leading space. Do not put `}` on its own line.
3. **Empty arrays span two lines with one space inside.** `[\n\t\t ]` — never `[]`.
4. **Empty objects span two lines with one space inside.** `{\n\t\t }` — never `{}`. Same rule as empty arrays; applies for example to the `"class" : { }` block in a `methodProperties.json` that has no class-side methods.
5. **No final newline at end of file.** Diffs will show `\ No newline at end of file`. Do not append a trailing newline.
6. **Tab indentation** (not spaces). One tab per nesting level.
7. **Sort keys alphabetically within each object.** Squeak emits keys in a stable order; insertions go in their alphabetical position.

**Good (Squeak / pre-ef8cf7e) — `properties.json`:**

```json
{
	"category" : "Mastodon-Core",
	"classinstvars" : [
		 ],
	"classvars" : [
		 ],
	"commentStamp" : "PG 6/26/2017 15:45",
	"instvars" : [
		"acct",
		"id" ],
	"name" : "MTToot",
	"pools" : [
		 ],
	"super" : "Object",
	"type" : "normal" }
```

**Bad (ef8cf7e reformat) — do not emit:**

```json
{
	"category": "Mastodon-Core",
	"classinstvars": [],
	"classvars": [],
	"commentStamp": "PG 6/26/2017 15:45",
	"instvars": [
		"acct",
		"id"
	],
	"name": "MTToot",
	"pools": [],
	"super": "Object",
	"type": "normal"
}
```

**Good — `methodProperties.json` (with class-side method):**

```json
{
	"class" : {
		"from:" : "LS 8/4/2017 16:09" },
	"instance" : {
		"acct" : "mm 5/28/2017 19:27",
		"id" : "JU 5/23/2016 11:46" } }
```

**Good — `methodProperties.json` (no class-side methods):**

```json
{
	"class" : {
		 },
	"instance" : {
		"name" : "nb 7/10/2016 22:37" } }
```

**Bad — do not emit:**

```json
{
	"class": {},
	"instance": {
		"name": "nb 7/10/2016 22:37"
	}
}
```

**When the file is already in the bad (ef8cf7e) format:**

A handful of files are stuck in the reformatted style because `ef8cf7e` is already merged (e.g. `MTUIToot.class/methodProperties.json`, `MTBlueSkyApiTest.class/methodProperties.json`). When you must add or modify an entry in one of these:
- **Do not reformat the whole file** back to Squeak style in the same commit — that would be exactly the kind of standalone formatting churn this memory forbids. Surrounding untouched entries stay in their current (bad) style.
- **Write the lines you are adding or changing in the good Squeak style.** There is already going to be a diff on those lines because of the substantive change, so it costs nothing extra to write them in canonical format. Example: in a file whose surrounding entries read `"foo": "X"`, your new line should still be added as `"foo" : "X"` (space around colon).
- Over time this gradually migrates files back toward canonical format without ever producing a pure-reformat commit.
- For files already in the good Squeak format, always add entries in the good format.
