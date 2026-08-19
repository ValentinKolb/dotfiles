# Evaluation rubric

Score each dimension from 1 (fails) to 5 (excellent). Judge the document as the
intended reader, using only the prompt and generated output.

## Accuracy

Every behavior, limit, label, and instruction is supported by the supplied
facts. Unknowns remain unknown instead of becoming plausible inventions.

## Task fit

The document helps the named reader achieve the intended outcome or answer the
intended decision. Product internals and adjacent features do not displace the
reader's goal.

## Reader perspective

The document explains what the reader can do, must decide, or will notice. It
includes a technical detail only when that reader needs it to act, choose,
recognize a state, avoid a mistake, or recover. Necessary technical detail is
connected directly to its practical consequence and uses the reader's
vocabulary.

## Coverage

The output covers every fact and reader question needed for success. It does not
silently omit prerequisites, decisions, verification, or common recovery.

## Detail balance

Depth follows importance, frequency, and risk. Closely related topics receive
comparable treatment; no incidental detail receives a disproportionate
explanation.

## Structure

The order matches the user's journey or lookup behavior. Headings form a useful
map, related information stays together, and the most important content appears
first.

## Language

The output is concrete, direct, and economical. It uses the reader's vocabulary
and consistent terms. Actors, actions, and observable results replace abstract
process language. Attributions name a source, and qualitative claims are
supported by user-visible behavior, an example, or a measurement. The output
contains no meta-narration, filler, marketing language, vague claims, or
repetitive summaries.

## Hard failures

Mark the result unsuitable regardless of its average score if it:

- invents a product fact
- omits information required to complete the task safely
- gives an unsafe or destructive instruction without warning
- contradicts itself
- is organized primarily around implementation details the reader does not know
- explains internal implementation while leaving its effect on the reader
  unclear
