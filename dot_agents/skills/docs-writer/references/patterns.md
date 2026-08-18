# Content patterns

Use only the pattern that matches the reader's situation. The sections below
are coverage prompts, not mandatory headings or templates.

## Overview

Orient readers to a product or product area and route them toward common goals.

- State what the product area is and who it serves.
- Explain the smallest useful mental model.
- Lead with the most common tasks and decisions.
- Link to task, concept, and reference pages instead of summarizing each one.
- State important boundaries when readers could choose the wrong product area.

Do not use a feature inventory as information architecture.

## Task guide

Help a reader complete one known task.

- State the outcome and when this guide applies.
- List prerequisites only when they can block the task.
- Present the shortest safe path in order.
- Put realistic branches where the reader encounters them.
- Show the success state.
- Include common recovery steps near the step that can fail.
- Link adjacent tasks instead of expanding the scope.

Prefer task titles such as “Export invoices” over product-area titles such as
“Invoice export functionality”.

## Getting started

Give a new user one complete, visible success.

- State what the reader will achieve.
- Name required access, accounts, or prior setup.
- Choose one path; do not survey every option.
- Use realistic values and exact product labels.
- Show expected results after meaningful steps.
- End with a short recap and the next useful task.

Move alternatives, full configuration, and architecture elsewhere.

## Concept page

Explain a mental model the reader needs for later decisions.

- Answer what the concept is and why it matters.
- Connect it to something the reader already knows.
- Explain the parts and their relationships.
- Show the practical consequences of the model.
- State important limits or cases where the model changes.
- Link to tasks and reference rather than embedding their full content.

Do not turn a concept page into a feature tour or internal design history.

## Troubleshooting

Start from what the reader can observe, not an internal error category.

- Name the symptom using words the reader can search for.
- Give the fastest safe check first.
- Order likely causes by frequency, then by cost or risk.
- For each cause, show how to identify it, fix it, and verify recovery.
- Preserve user data and warn before destructive actions.
- If escalation is required, say where to go and what diagnostic information
  to include.

Do not create a grab bag of unrelated errors. Split it when symptoms, audiences,
or recovery paths differ.

## Reference

Support fast and trustworthy lookup.

- State the documented surface and version.
- Use one predictable structure for every entry.
- Include applicable types, defaults, constraints, units, side effects,
  permissions, outputs, and errors.
- Include all entries in scope; do not select only interesting ones.
- Keep examples minimal and factual.
- Separate generated facts from hand-written guidance when practical.

Group entries by the way readers look for them. Mirror internal code structure
only when readers already use that structure.

## Microcopy

Write for the exact screen, state, and next action. Omit copy that merely repeats
the visible UI.

- **Label or button:** name the object or outcome with the reader's verb.
- **Field hint:** say what to enter, the required format, or why it is needed.
- **Error:** say what happened and how to recover; preserve valid input.
- **Empty state:** say what would be here and offer the relevant first action.
- **Confirmation:** name the consequence, whether it can be undone, and the
  affected scope.
- **Success:** confirm the result; add a next action only when useful.

Keep essential instructions outside placeholders and tooltips because they may
disappear or be hard to access. Avoid humor in errors, security, payment, and
destructive actions.

## Change notice

Help affected users adapt without reading a release narrative.

- State what changes, for whom, and when.
- Explain the practical effect.
- Name any action required and its deadline.
- Provide the replacement path or migration steps.
- State what does not change when confusion is likely.

Lead with user impact, not implementation work or promotional claims.
