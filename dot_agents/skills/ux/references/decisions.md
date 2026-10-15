# Interaction decisions

Use the relevant section. These are tradeoffs to resolve from the task and
existing product, not prescribed layouts.

## Existing mechanism or new capability?

First trace what the action actually does. Follow the event or form action to
the route, service, or external destination and the available confirmation.
Check current labels before calling them misleading.

A local correction fits when the existing mechanism can achieve the goal and
the obstacle is discovery, explanation, unnecessary input, or a missing state.
A new capability is justified when a required outcome remains impossible or
unreliable with that mechanism. State the added operational responsibility.

For example, a form labelled “Prepare email” that opens a mail app does not
prove a failed web submission. Clarify the handoff before data entry and offer
a usable alternative. If the requirement is delivery inside the browser,
accepting the request is a new capability; a different button label cannot
supply it. Likewise, selecting photos is not uploading them, and uploaded
photos are not necessarily an accepted enquiry.

Do not show “received” when only a handoff occurred. Explain the next action
and a fallback when the other app is unavailable. Confirming actual receipt
requires a signal the system owns. Test the handoff boundary, including cancel
or a missing external app; do not infer failure rates from source alone.

## Dialog, panel, page, or staged flow?

Start with the product's existing container for similar tasks. Change it when
the task has a concrete unmet need:

| Form | Useful when | Cost to check |
| --- | --- | --- |
| Inline | A short edit belongs to the current object and needs nearby information. | A growing form can displace the original task; back and cancel must remain understandable. |
| Dialog | A short bounded decision can finish without deeper navigation. | Focus and small-screen space are constrained; complex work can outgrow it. |
| Side panel | Comparing or editing while the list or object remains useful. | Split attention and narrow width; mobile needs a deliberate adaptation. |
| Page | Substantial input, attachments, deep links, or an independently resumed task. | Leaving the original context requires an explicit route back and preservation of relevant work. |

Several fields do not automatically need several steps. Split when an earlier
choice determines later inputs, or a single view genuinely prevents people
from understanding the work. Staging adds navigation and hides the overview.
Keep prior input on back. A separate page does not itself provide persistence.

For a photo enquiry, compare a short inline form with a page based on photo
review, device space, entry links, and interruption. Avoid an automatic wizard
or full customer portal. Check the chosen container with realistic photos,
validation errors, a virtual keyboard, and an attempted return.

## Visible action or secondary menu?

Keep an action visible when it is central to the current task, used repeatedly,
or costly to overlook. Put rare alternatives in a discoverable contextual menu
when that reduces interference with the main work. Destructive actions can be
separate without becoming impossible to find.

Do not treat low frequency alone as permission to hide a necessary action.
Assess the consequence of missing it. Conversely, showing every possible
action makes the primary one harder to find. Hover may enhance discovery but
cannot be the only way to reach an action. Verify access by keyboard and touch,
including names, focus, and returning from an opened menu or dialog.

## Immediate save or explicit commitment?

Immediate saving fits frequent, reversible edits with reliable persistence.
Explicit commitment fits submitting a complete request, sending to another
person, or applying consequential changes together. The choice follows the
meaning and reversibility of the operation, not a universal preference for
fewer clicks. A confirmation adds value when it resolves a meaningful risk;
repeated confirmation of harmless edits adds effort.

For immediate saving, distinguish local input, pending persistence, confirmed
save, and failure. Preserve editable input and make recovery visible.
Optimistic display is a presentation choice, not evidence that saving worked.
For explicit submission, validate what is needed before commitment and make
the affected scope clear.

If a timeout leaves the outcome uncertain, reconcile before repeating the
operation. Suppressing a second click alone does not solve duplicate requests
after reconnect. Do not promise undo, cancellation, or reload recovery until
the underlying capability is established. Test slow response, rejected action,
and an interrupted response, not only the happy path.

## Table, list, or cards?

Choose the representation from the question people need to answer:

- Table: compare the same attributes across objects, scan exceptions, sort,
  or perform repeated edits. Keep comparable values aligned.
- List: find an object or read its summary without requiring cross-column
  comparison. Group by meaningful categories or sequence.
- Cards: recognize visual objects or inspect richer independent summaries.
  Repeated framing and padding cost space and comparison speed.

Use charts or maps only for a pattern or spatial question they clarify.
Do not change a working representation merely because another looks cleaner.
Test finding, comparing, and acting on realistic content, including long names
and narrow widths.

Editing should preserve filters, selection, and a comprehensible route back.
If an edit makes an item stop matching the filter, communicate that result
rather than silently resetting the whole list or showing stale data. Distinguish
no content, no matching results, unavailable data, and missing access; they
require different routes forward.
