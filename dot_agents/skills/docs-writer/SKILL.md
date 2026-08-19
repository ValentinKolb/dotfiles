---
name: docs-writer
description: Write, review, or revise end-user documentation and product-facing text, including help articles, onboarding, task guides, troubleshooting, READMEs, tooltips, field hints, warnings, errors, empty states, and change notices. Use whenever a user asks to explain a product, feature, workflow, setting, or change to readers; simplify technical copy; or improve existing documentation or UI text. Focus on what the reader can do, must decide, or will notice, and omit internal implementation unless it changes those outcomes. Ground claims in product truth and remove generic LLM prose.
---

# Docs writer

Create the shortest document that lets the intended reader do, decide, or
understand the right thing.

Good prose cannot rescue wrong facts, missing topics, or a structure based on
the product's internals instead of the reader's goal. Solve those problems
before polishing sentences.

Treat implementation details as source material, not as documentation by
default. Include one only when this reader needs it to act, choose, recognize a
state, avoid a mistake, or recover from a problem. Otherwise state only the
user-visible consequence.

## Workflow

### 1. Inspect before writing

Use the strongest available sources:

1. the working product, UI, API, or CLI
2. current code, tests, schemas, and configuration
3. existing docs and the project's terminology
4. support cases, search terms, analytics, or user research
5. the user's supplied facts

For a rewrite, first identify what is correct, missing, duplicated, misplaced,
or outdated. Preserve correct content and the existing house style where they
serve the reader.

Never invent behavior, prerequisites, defaults, limits, UI labels, or recovery
steps. If a material fact cannot be discovered, ask for it or state the gap.
Do not hide uncertainty behind vague wording.

### 2. Define the document contract

Privately record:

```text
Reader:
Situation:
Goal:
Success:
User-visible effect:
Already knows:
Must learn:
Channel:
Language / house style:
Scope:
Not in scope:
Sources:
```

Then phrase the user need:

```text
As <reader>, I need to <task or answer>, so I can <outcome>.
```

Write the real questions the document must answer. Use one question for
microcopy and usually 3–7 for a page. These questions are the coverage plan.
Do not show this worksheet unless the user asks for it.

For each candidate fact, ask what it lets the reader do, decide, or predict. If
the answer is nothing, leave it out. What counts as an internal detail depends
on the reader: an API consumer may need the public contract and failure
behavior, but not the service topology or storage mechanism behind it.

### 3. Choose the content shape

Choose from the reader's situation, not from a preferred framework:

- **Overview:** orientation and routes into the reader's common goals
- **Task guide:** a known goal completed through ordered actions
- **Getting started:** a safe first success for a new user
- **Concept page:** a mental model needed to make decisions
- **Troubleshooting:** diagnosis and recovery from an observable problem
- **Reference:** fast, consistent lookup of facts
- **Microcopy:** help at the exact point of interaction
- **Change notice:** impact and required action for an affected user

Read [`references/patterns.md`](references/patterns.md) only for the selected
shape.

One page should serve one primary user need. Split unrelated needs. If several
pages are required, organize them by user goals or journey stages and add only
the navigation readers need.

### 4. Plan coverage and depth

Turn the reader questions into an outline before drafting. Order them:

1. essential to start or avoid harm
2. common path
3. common decisions and failures
4. rare or advanced cases

Give similar topics similar treatment. Go deeper only when frequency, risk, or
decision complexity justifies it. A detail belongs when it helps the reader
act, choose, recognize a state, avoid a mistake, or build the mental model
needed for those things.

Do not add a table of contents by word count. Add one when the page is
non-linear or long enough that readers need to jump between sections.

### 5. Draft for use

- Lead with the answer, outcome, or action.
- Use headings that name reader tasks or questions.
- Put conditions before the instruction they affect.
- Use numbered steps only for sequences.
- After meaningful steps, show how to recognize success.
- Put warnings before the action and name the consequence.
- Use exact product labels and one term per concept.
- State what changes for the reader before explaining why. Omit internal
  component names, architecture, data flow, and implementation mechanisms
  unless the reader needs them to act, choose, recognize a state, or recover.
- When a technical detail is necessary, connect it directly to its practical
  consequence and explain it in the reader's vocabulary.
- Prefer concrete verbs, short paragraphs, and the reader's vocabulary.
- Name the source of an attribution or remove the claim.
- Use examples only when accurate and more useful than another explanation.
- Use a screenshot or diagram when spatial relationships matter; do not
  decorate.

Delete meta-narration, generic introductions, repeated conclusions, marketing
claims, and phrases such as “simply”, “just”, “easy”, “powerful”, “seamless”,
or “in order to”. Replace qualitative claims with supported user-visible
behavior, an example, or a measurement; otherwise remove them. If a sentence
could appear unchanged in another product's documentation, make it specific or
cut it. Do not replace deleted prose with different filler.

### 6. Verify before delivery

Do not deliver until the relevant checks pass:

- **Accuracy:** Every claim about product behavior or user constraints is
  supported by a source.
- **Task success:** Following the page reaches the stated outcome.
- **Coverage:** Every planned reader question is answered.
- **Balance:** Depth follows frequency, risk, and decision value; no random
  deep dives.
- **Structure:** Headings alone form a useful map; related content is together.
- **Signal:** Every paragraph adds a fact, action, decision, example, or needed
  explanation.
- **Accessibility:** Instructions do not depend only on color, position, or an
  image; links and headings make sense out of context.
- **Verification:** Commands, code, links, and UI paths are checked when the
  environment permits it.
- **Durability:** Version-sensitive claims are identified, and the page does not
  create a conflicting second source of truth.

For high-risk or substantial documentation, list realistic reader questions
and test whether the document alone answers them. Treat unanswered questions as
content defects, not opportunities for more generic prose.
