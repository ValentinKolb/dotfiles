---
name: academic-writing
description: Review, revise, or help draft academic prose such as seminar papers, term papers, theses, research reports, and later scientific manuscripts. Use whenever the user asks for wissenschaftliches oder akademisches Schreiben, a Seminararbeit or Hausarbeit, argumentation and structure review, clearer or less verbose prose, better weighting and lists, an appropriate academic tone, claim and citation checks, or feedback on a Markdown draft. Preserve the author's meaning and language, work independently of Markdown, Word, or LaTeX, and use publication-specific checks only when the user is actually preparing a paper.
---

# Academic writing

Help the author make an academic text accurate, coherent, well supported, and
clear. Optimize first for seminar papers and related coursework. Treat journal
manuscripts as an explicit advanced case, not as the default.

Writing quality cannot repair a weak argument or unsupported claim. Check the
reasoning and evidence before polishing sentences. Never invent sources,
citations, quotations, results, methods, or bibliographic details.

## Scope

Work with the content regardless of whether it is supplied as Markdown, plain
text, Word, PDF, or another format. Preserve useful headings, citations, links,
footnotes, tables, and Markdown structure, but do not turn the review into a
formatting exercise.

Do not introduce LaTeX commands, templates, packages, BibTeX, journal tooling,
or a particular citation manager unless the user specifically asks for them.
Do not impose IMRAD, a reporting guideline, or journal submission ceremony on
a seminar paper.

Preserve the input language and the author's level of formality. Support German
and English. Do not apply English grammar or idiom rules to German prose.

Apply these hard character rules to all newly drafted or revised prose:

- Never use the `U+2014 EM DASH` character. Restructure the sentence or use a
  period, comma, colon, or semicolon as the grammar requires. Do not substitute
  a hyphen as a makeshift dash.
- Never introduce zero-width or other invisible formatting characters,
  including `U+200B`, `U+200C`, `U+200D`, `U+2060`, and `U+FEFF`. Remove them
  when they occur in editable prose.

Preserve an exact quotation, code literal, identifier, or source excerpt when
changing one of these characters would corrupt the source. Flag the occurrence
instead of silently altering it.

## Choose the review mode

Infer the smallest mode that satisfies the request:

- **Passage revision:** Rewrite a paragraph or section for clarity while
  preserving its claims, citations, terminology, and authorial voice.
- **Targeted review:** Check only the requested concern, such as argumentation,
  structure, style, terminology, citations, or transitions.
- **Seminar-paper review:** Use by default for a Hausarbeit, Seminararbeit,
  coursework essay, thesis chapter, or academic report. Check the research
  question, argument, structure, evidence use, and prose.
- **Paper review:** Use only for an actual research manuscript or explicit
  publication preparation. Add scientific consistency and venue-related checks
  without assuming a particular tooling or document format.
- **Interactive revision:** Work section by section when the user wants to
  learn from or approve each change.

Ask for missing context only when it materially changes the review, especially
the task or assessment criteria, research question, intended audience, field,
language, or desired depth. Otherwise state a reasonable assumption and begin.

## Review workflow

### 1. Establish the text's contract

Identify from the supplied material and request:

```text
Document type and stage:
Research question or purpose:
Audience and field:
Language:
Requested mode and depth:
Available assignment, rubric, or venue guidance:
Material that may be changed:
```

Do not force the author to restate information already visible in the text.

### 2. Check purpose and argument

Determine whether the text answers its research question or fulfills its stated
purpose. Trace the central claim through sections and paragraphs. Flag:

- scope drift or an unclear research question;
- conclusions that do not follow from the presented reasoning;
- missing steps, counterarguments, or necessary distinctions;
- paragraphs without a clear function;
- the central claim arriving only after avoidable setup or repeated circling;
- space and emphasis that do not match argumentative importance;
- repetition that substitutes for progression;
- introductions that promise work the body does not perform;
- conclusions that merely repeat instead of answering the question.

For a substantial review, read
[`references/academic-integrity.md`](references/academic-integrity.md).

### 3. Check evidence and internal consistency

Separate the author's analysis from claims attributed to sources. For every
material factual, numerical, or interpretive claim, check whether the cited
source is present and appears to support that exact proposition. Distinguish:

- verified support from a citation that is merely present;
- primary evidence from a secondary retelling;
- observation from interpretation or speculation;
- association from causation;
- absence of evidence from evidence of absence.

Flag missing or uncertain support; never fill the gap with a plausible source.
Keep terminology, names, dates, numbers, units, abbreviations, and cited details
consistent across the available text.

### 4. Improve structure and prose

Review from large to small: section order, paragraph logic, transitions,
sentence architecture, then word choice and grammar. Do not spend effort
polishing text that first needs to be removed or reorganized.

Read [`references/prose-review.md`](references/prose-review.md) when revising
language or performing a full review. Apply its German or English guidance
according to the document language.

Preserve useful disciplinary terminology and intentional nuance. Prefer direct
and precise prose, but do not make every sentence short, active, or stylistically
uniform. Explain suggestions that could change emphasis or meaning.

### 5. Add paper checks only when applicable

For an actual research paper, additionally check:

- methods and results describe the same design, population, variables, and
  analysis;
- sample sizes, units, values, uncertainty, tables, and prose agree;
- confirmatory, exploratory, descriptive, and post hoc work remain distinct;
- limitations and generalizability are concrete and proportional;
- reporting guidelines or venue instructions are considered only when the
  study type and current target venue are known.

Human authors remain responsible for evidence, scientific decisions,
authorship, disclosures, and submission approval. Treat unpublished manuscripts
and peer-review material as potentially confidential.

### 6. Compress and prioritize

Before delivering a revision or review, run a signal audit:

- state the main answer, claim, or contribution in one sentence;
- ensure the text reaches that point as early as its necessary context permits;
- allocate detail according to relevance, evidence, uncertainty, and consequence,
  not according to which background material is easiest to summarize;
- delete or merge sentences, paragraphs, and findings that make the same move;
- consolidate overlapping list items into distinct claims at the same conceptual
  level;
- remove prose that only announces, praises, recaps, or transitions without
  adding a necessary relationship.

Compression must preserve evidence, qualification, and reasoning. Shorter is
better only when it carries the same necessary meaning with less reader effort.

### 7. Use Harper as an optional final English check

After substantive revisions, use Harper only when all of these are true:

- the text is substantially English;
- a local file is available or the user wants the supplied text checked;
- `harper-cli` is installed;
- a grammar pass adds value beyond the current review.

For a file, run:

```bash
harper-cli lint --no-color <file>
```

Harper is a local, offline grammar checker. Treat its findings as leads, not
authoritative corrections: academic terminology, names, quotations, and
deliberate style can produce false positives. Review every finding in context
and do not apply changes mechanically. Do not run Harper on German text. If it
is unavailable, continue without it rather than making installation a
prerequisite.

## Deliver useful output

Match the response to the requested mode instead of always producing a long
audit.

For a passage revision, provide:

1. the revised passage;
2. a short explanation of material changes;
3. any claim or meaning that needs the author's confirmation.

For a larger review, provide:

```markdown
## Overall assessment
[How well the text fulfills its purpose and the dominant issue]

## Highest-priority revisions
[A short ranked list with locations, reasons, and concrete next steps]

## Argument and structure
[Only material findings]

## Evidence and consistency
[Unsupported, overstated, or inconsistent claims]

## Language and style
[Recurring patterns plus representative revisions]

## Open questions
[Only questions the author must resolve]
```

Use headings or line references from the document. Show concrete revisions for
language findings rather than vague advice. Prioritize patterns and
high-impact changes over an exhaustive list of minor issues. Before presenting
a list of findings, merge overlaps: one item should make one distinct point,
and the same defect should not reappear under several headings unless a cross-
reference is necessary.

## Boundaries

- Preserve scientific and academic meaning unless the user explicitly asks to
  reconsider the content.
- Do not silently strengthen certainty, causality, novelty, or generality.
- Do not treat passive voice, nominalization, sentence length, or citation
  density as mechanical errors.
- Do not overwrite the author's voice with generic polished prose.
- Do not optimize for appearing human or evading AI detection. Remove generic
  and formulaic prose because it weakens the text, not because a phrase appears
  on a blacklist.
- Do not deliver newly authored or revised prose containing `U+2014 EM DASH` or
  zero-width formatting characters. Check the final text, including headings
  and list items, before delivery.
- Distinguish source-backed facts, the author's argument, and your own
  inference.
- State what could not be checked because the necessary sources, assignment,
  tables, or surrounding text were unavailable.

## Sources and adaptation

This skill adapts and simplifies ideas from:

- Lorena A. Barba,
  [SciWrite](https://github.com/labarba/sciwrite/blob/64b128b88fdaadfd1eb312f42c2ae1475f91b512/SKILL.md),
  based on
  Kristin Sainani's *Writing in the Sciences*, licensed under
  [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/). This adaptation
  broadens the scope beyond English manuscripts and changes the workflow and
  output.
- K-Dense Inc.,
  [Scientific Writing](https://github.com/K-Dense-AI/scientific-agent-skills/blob/390f5146bf3c1877cf15636a3dd7b775e4f0f185/skills/scientific-writing/SKILL.md),
  Copyright (c) 2025 K-Dense Inc., licensed under the
  [MIT License](https://github.com/K-Dense-AI/scientific-agent-skills/blob/390f5146bf3c1877cf15636a3dd7b775e4f0f185/LICENSE.md).
  This adaptation retains selected principles of evidence fidelity and
  manuscript consistency while omitting its registry, script, scaffold, and
  submission workflow.
- Lauren Tan,
  [Unslop](https://github.com/cursor/plugins/blob/46125561306434d8a1d7745d540d8932ab0cd2a2/pstack/skills/unslop/SKILL.md),
  Copyright (c) 2026 Lauren Tan, licensed under the
  [MIT License](https://github.com/cursor/plugins/blob/46125561306434d8a1d7745d540d8932ab0cd2a2/pstack/LICENSE).
  This adaptation uses selected checks for vague, repetitive, and formulaic
  prose while rejecting broad punctuation bans, word blacklists, artificial
  informality, and AI-detector optimization.
