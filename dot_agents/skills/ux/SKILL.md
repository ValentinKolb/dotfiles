---
name: ux
description: Design and implement usable, distinctive interfaces and review existing user flows for web, mobile, and desktop. Use for UI design, frontend implementation, visual redesigns, typography, layout, navigation, forms, and task flows. Carry design decisions into working interactions, complete states, and consistent screens. Not for isolated copy edits, standalone artwork, or backend work without a user-facing design decision.
---

# UX and frontend design

Make the person's task work well and give its interface a deliberate visual
identity. Keep small questions small; use the relevant guidance rather than
running a full audit or redesign.

For new UI, visual redesigns, or frontend work that shapes the appearance,
read [frontend design](references/frontend-design.md) before designing or
coding. For a flow review without visual changes, use the interaction guidance
below. For combined work, resolve the task and visual direction together.

## Establish the actual path

Identify the person, starting context, and observable completion. Trace the
existing path through its triggers, handlers, routes, and feedback where
available. Inspect related components and product conventions before replacing
them. Distinguish a confirmed defect, an unmet new requirement, and a design
hypothesis; a working handoff to another app is not automatically a broken flow.

Check where the result actually happens and who can confirm it. Opening a mail
app, selecting a file, or starting a request is different from accepted delivery.
Do not claim missing backend capabilities or device behavior from a screenshot.

## Choose a complete interaction

**Existing flow:** prioritize obstacles to completion. Connect each important
finding to a concrete source or observation and its consequence. Preserve what
already works; distinguish a local correction from a new product capability.

**New flow:** outline entry, necessary inputs and decisions, commitment,
confirmation, and return before choosing screens. Separate existing abilities
from requirements to build. Define the first version around a complete task,
including its consequential failure path.

For a material choice, read the relevant section of
[decision aids](references/decisions.md):

- Existing mechanism or new capability?
- Dialog, panel, page, or staged flow?
- Visible action or secondary menu?
- Immediate save or explicit commitment?
- Table, list, or cards?

Recommend an option, name its relevant cost, and explain why it fits this task
better than the plausible alternative. Skip this comparison for obvious local
fixes. Do not trade accessibility, truthful feedback, or user control for a
cleaner appearance or more engagement.

## Give the interface a visual direction

In a product with a design system, every new screen, including a new app or
feature, uses its tokens and components. Mark any mockup element the system
cannot express yet as a proposed new component, so the mockup stays buildable.
Change the system only when that is part of the assignment. Develop originality
within those constraints.

For a new design or an authorized redesign, act as a design lead: derive a
distinctive, coherent direction from the real subject, audience, and brief.
Where visual choices are open, make deliberate choices about type, palette,
composition, and motion; take an aesthetic risk where it serves the brief.
A small feature set can still have an ambitious visual treatment. Apply the
design reference to the affected surface, preserving the product's identity
unless changing it is part of the assignment.

Use the reference's plan, review, build, and critique process in proportion to
the task. A local fix needs no new palette, font system, or design presentation.

## Carry the design into the working interface

For implementation, a design handoff, or a functional UI review, read
[implementation checks](references/implementation-review.md). Turn material
promises from the brief, mockup, and chosen design into observable conditions;
check them against the actual controls, handlers, state transitions, and render.
Explaining a recovery path or drawing an error state does not implement it.

A mockup or prototype shows each screen's consequential states: empty, loading,
error with recovery, no permission, pending or saving, and conflict where
applicable. Use a state switcher to make these reviewable beyond the happy path.

Follow the affected flow across screens, including waiting, failure, and return.
Keep actions, terminology, limits, and feedback consistent with neighboring
screens. A visible control needs working behavior or a clear explanation of
its unavailable or simulated state. Confirm only outcomes the system knows.
For consequential writes, a timeout leaves the outcome unresolved. Reconcile
before retrying; without that capability, preserve uncertainty and prevent a
potentially duplicate submission instead of offering a reassuring retry button.

## Verify the result

Choose a task scenario that could disprove the recommendation, including the
relevant failure or return path. Use [validation](references/validation.md) when
selecting the method. Deliver the requested findings, flow, or implementation
with supporting evidence and remaining uncertainty; avoid a mandatory report
template. For visual work, inspect the rendered result at relevant widths,
critique it against the brief, and correct what the render reveals. Check the
affected interaction's consequential states using the implementation checks,
including an intentionally triggered failure and recovery where applicable.
Use the environment's browser and preview tools. Mark any promised behavior
that remains missing or unverified; do not call it complete from a happy-path
screenshot or a successful build.
Source inspection, rendered behavior, and real-user research are different
evidence. State which one you obtained.
