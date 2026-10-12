---
name: plan-writing
description: Write plans, concepts, proposals, decision papers, and status reports that Valentin reads and approves, especially Markdown published with `dev publish` on the Devstation artifacts page. Use whenever an agent drafts or revises such a document for Valentin, splits a long plan, or addresses his comments on one. Keeps the reader version short, current, and contradiction-free, with plain structure that also works for readers with dyslexia. Not for end-user product docs (use docs-writer) or academic prose (use academic-writing).
---

# Plans for Valentin

A plan exists so that Valentin can decide quickly and safely. He reads it on a
screen, often between other tasks, and comments on selected text. Write the
shortest document that lets him approve, change, or reject the plan.

## Two documents, two readers

| File | Reader | Content | Budget |
| --- | --- | --- | --- |
| `README.md` | Valentin | Outcome, decisions, steps, risks | About 1,000 words, 1,500 at most |
| `bauplan.md` (or the repo's spec file) | Agents | Details, internal IDs, evidence, file lists, review findings | No limit |

- Devstation renders `README.md` first. Publish `bauplan.md` with it only when
  Valentin should be able to check the details.
- The reader version links to details instead of repeating them.
- If the reader version exceeds its budget, cut detail into `bauplan.md` or
  split the plan into stages. Do not compress the language instead.

## Structure of the reader version

The first screen must be enough to decide. Use this order and leave out what is
empty:

1. `# Title`: the outcome, not the activity ("Kunden erfassen sich selbst",
   not "Plan zur Selbsterfassung").
2. One line of status: version, date, state (draft, approved, building, done).
3. `**TL;DR:**` 3–5 bullets: what changes for whom, and the recommendation.
4. `## Zu entscheiden`: each open question with the options, their + / −, and
   one recommendation. Number them (F1, F2) so comments can refer to them.
5. `## Neu in dieser Version` (from version 2 on): at most 5 bullets. Devstation
   shows the exact diff under "compare".
6. The body: what happens, in the order a person experiences it or the work
   is done. Steps as a numbered list.
7. `## Risiken und Grenzen`: what can go wrong, what stays open, what was not
   verified.

## Always the current state

- Rewrite the affected place when something changes. Never append
  "Nachtrag", "Fassung 2 sagte", or strike-through text to the body.
- History lives in version control, the Devstation versions, and the short
  "Neu in dieser Version" list.
- Remove superseded statements completely. A reader must never have to work
  out which of two statements is valid.

## One fact, one place

Contradictions appear when the same rule is repeated in several places and
later changed in only one.

- State each decision, rule, name, and number in exactly one place. Elsewhere,
  refer to it ("siehe F2", "siehe Abschnitt Rechte") instead of restating it.
- Keep a decision in one bullet or table row. Do not spread one decision over
  several bullets in different sections.
- Before publishing, run a consistency pass: for each decision and each
  number, search the whole document for every mention and check that they
  agree. Fix or remove duplicates.
- If a contradiction with earlier statements by Valentin remains, say so in
  "Zu entscheiden" and recommend one side. Never hide it in the body.

## Plain language (adapted from Simplified Technical English)

Aircraft maintenance manuals use ASD-STE100 so that readers with different
backgrounds understand instructions exactly once. Adopt its spirit, not its
dictionary:

- **One word, one meaning.** Pick one term per concept and keep it. No
  synonyms for variety. Introduce a new term once, in plain words. Use the
  product's established terms, including UI labels, exactly as written.
- **Short sentences.** Steps at most about 20 words, descriptions at most about
  25. One instruction per step, one statement per bullet.
- **Active voice, present tense, named actor.** "Das Büro schickt den Link",
  not "Der Link wird geschickt".
- **Conditions and warnings before the action.** "Wenn der Kunde keine IBAN
  angibt, …" first, then the step.
- **No vague pointers.** Replace "das", "dies", "dort", "es" with the noun when
  more than one thing could be meant.
- **No internal codes in the reader text.** IDs such as E16, L32, or ticket
  numbers belong in `bauplan.md`. If Valentin needs one to comment, give it
  with a plain name: "F2 (Rechte der Verwaltung)".
- Write numbers as digits, dates as `12.10.2026`, and times as `14:30`.

## Layout that is easy to read

These rules also help readers with dyslexia; no special font is needed.

- Paragraphs: at most 3–4 sentences. Prefer a list when there are 3 or more
  parallel items.
- Lists: at most about 7 bullets. Group longer lists under subheadings.
- Bullets that need more than two lines are paragraphs in disguise: split them
  or move detail out.
- Use tables for comparisons and option overviews, + / − for tradeoffs, and
  numbered lists for sequences.
- Emphasis: **bold** only, sparingly, for the key word of a bullet. No italics,
  underlining, or capital letters for emphasis.
- Headings say what the section contains ("Wer was sehen darf"), not "Details"
  or "Sonstiges".
- Images and mockups: show the state the text describes, next to that text.

## Before publishing

1. Word count of `README.md` is within budget (`wc -w`).
2. The first screen contains the TL;DR and the open decisions.
3. Consistency pass done (see "One fact, one place").
4. No "Nachtrag", strike-through, or version history in the body.
5. No sentence over about 25 words unless it cannot be split; no bullet with
   more than one statement.
6. Every claim about existing behavior is checked against the source, or it is
   marked as unverified.

Then publish with the devstation skill and hand on the link.

## When Valentin comments

Treat each comment as a request to change the plan. Change the affected place,
keep the rest stable, list the change under "Neu in dieser Version", publish a
new version under the same name, and resolve the comments.
