# Complete UI implementation

Use this when handing off designs, implementing, or reviewing functional UI.
Select the checks that can expose omissions in the affected task; a small
change needs a small check.
An interactive prototype may simulate backend behavior, but identify that
boundary rather than presenting a simulated result as an actual outcome.

## Connect design promises to observable behavior

For a substantial change, keep a short working checklist of material promises
from the brief, mockup, and design decisions. For each, identify the trigger,
observable result, and evidence. When the same person or agent designs and
builds, no separate report or project file is required.

When different people or agents design and build, ship the mockup with its
parity checklist: screen × state × key interaction. The implementation PR
carries that checklist with evidence per item, identifies anything unverified,
and names any cuts explicitly approved by the decision-maker. Use the equivalent
implementation handoff when the project does not use PRs. Do not silently drop
states or treat a builder's omission as an approved scope change.

For example, "keeps edits after failure" needs an actual rejected save with
the entered value still present and a usable next step. A catch block that only
logs, a drawn error panel, or a successful build does not establish that behavior.
Likewise, specifying mobile layout or keyboard access needs a corresponding
render or interaction check, not only an explanation of the intended design.

Follow visible affordances through their handlers and outcomes: primary and
secondary buttons, search, filters, menus, links, upload controls, dismissal,
and back. Catch decorative controls that look usable but do nothing. Explain
why a genuinely unavailable action is disabled and how to proceed where possible.
In implemented UI, distinguish unfinished behavior from a deliberate limitation.

## Complete the consequential state transitions

Check component states as well as request states: default, hover, pressed,
focus, selected/toggled, disabled, and invalid where reachable. A pressed
animation confirms activation, not completion; for example, acknowledge a copy
only after the clipboard operation succeeds and handle a rejected operation.

For each affected asynchronous action, resolve what the person sees, what work
is preserved, and what they can do next. Check the actual response paths:

| Situation | Implementation check |
| --- | --- |
| Waiting | Show that the action started, keep the page usable as appropriate, and prevent accidental repeat commitment. Do not leave a stalled action as an unexplained spinner; distinguish a known failure from a missing response. |
| Confirmed success | Show the actual accepted result and next step. Opening another app, selecting files, or displaying optimistic data does not prove receipt or persistence. |
| Rejection or known failure | Keep useful input, identify the problem, and offer a correction, safe retry, or another available path. A disappearing toast or console message cannot be the only error feedback. |
| Uncertain outcome | A lost response can follow a successful write. Reconcile with the authoritative result before repeating a consequential action. If no reconciliation exists, retain the input, explain the unresolved status, and prevent duplicate commitment. A timeout or Promise.race does not cancel the underlying operation. |
| Partial completion | Identify completed and unresolved work. Correct or repeat only the unresolved portion when supported; do not label the entire operation successful or silently discard the valid portion. |
| Cancel, back, reload, or undo | Specify what each action actually changes and where it returns. Preserve relevant input and context or warn before meaningful loss; cancel discards only what its stated scope requires. Offer persistence, cancellation, or reversal only when supported. |
| Empty, filtered, or unavailable | Distinguish a new account, no search matches, failed data loading, and missing permission. Offer the corresponding next action, such as creating content, clearing filters, retrying, or obtaining access. |
| Limit or unmet prerequisite | State the real scope and requirement before avoidable effort. Show usage, remaining allowance, reset date, file limits, or minimum duration when known. Preserve useful work and provide a next step if the threshold is missed. |

Show progress percentages and processing stages only when the system can support
them. Otherwise use honest indeterminate feedback. Never copy simulated timing,
fake personalization, or an unsupported undo promise from a mockup into product
claims. For save and commitment decisions, use the
[interaction decision aid](decisions.md#immediate-save-or-explicit-commitment).

For work that continues away from its starting screen, leave and return during
the operation. Check that its identity, status, controls, and eventual result
remain findable, including at actual size or duration limits. A persistent
indicator alone does not prove background execution, saved work, or resumption.

## Check the details static mockups conceal

- **Cross-screen consistency:** walk from entry through completion and return.
  Compare meaning, wording, action placement, type, spacing, formatting, and
  limit patterns for the same operation. Reuse components instead of generating a
  different variant for each screen. Keep filters, selection, and position
  where they remain relevant; handle an edited item leaving a filtered list.
- **Return and reload:** restore the same view, selection, position, and
  still-relevant input after reload or back, and return to the intended context
  on cancel. Carry navigation state in the URL and draft input in appropriate
  saved state; do not resurrect deliberately cancelled edits. If restoration
  is unavailable, make the limitation explicit before meaningful loss. Where server rendering is
  used, server output and the first hydrated render agree; do not briefly show
  a different view or default selection before restoring the intended one.
- **Layout stability:** transient loading, hints, errors, hover, focus, and
  reconnect feedback must not unexpectedly shift surrounding content or active
  targets. Reserve appropriate space or reuse an existing status region. Keep
  feedback readable with long or localized text; do not hide it in a fixed-height
  box merely to prevent movement. Check transitions as well as static states.
- **Real content and data:** try long names, missing values, large or negative
  amounts, and relevant localized text. Preserve units and comparable number
  formats. Truncation must preserve identifying information, such as a filename's
  version suffix, with access to the full value when needed. Check live-changing
  numbers for distracting shifts; stable digit widths can help. Test wrapping
  and clipping instead of trusting ideal placeholder strings.
- **Editing behavior:** preserve caret, selection, and native text entry when
  updating or formatting input. Test insertion in the middle and the relevant
  Unicode/composition cases. Apply Enter, Escape, and shortcuts according to
  the control's context; do not accidentally submit multiline content.
- **Reachable controls:** a hover reveal must also work with focus and touch.
  Check the actual pointer path into nested menus, overlapping targets, and
  whether controls vanish before they can be used. Prefer established controls
  over a custom gesture that makes the task harder to discover or perform.
- **Semantic boundaries:** control appearance must match operation, such as
  independent checkboxes versus single-choice radios. Keep system metadata
  and read-only values distinct from editable content, even when they share
  a visual style. Exercise actual allowed operations and permissions.
- **Focus and feedback:** keyboard users can enter, operate, and leave menus
  and dialogs. Restore focus sensibly on close. Associate errors with their
  fields, keep blocking feedback near the affected work, and make status changes
  available to assistive technology. Do not communicate success, failure, or
  selection through color alone.
- **Viewport and theme:** check relevant narrow widths, long content, zoom,
  virtual keyboards, and fixed elements covering actions or errors. In products
  supporting light and dark, verify affected semantic colors, layers, and
  contrasts in both; inversion or copied accent values do not establish contrast.
- **Task relevance:** each prominent metric, prompt, notification, and onboarding
  step should support a current decision. Respect known state and entry context;
  avoid redundant setup, irrelevant repeated KPIs, and reminders for completed work.
  Walk supported onboarding branches and skip/exit routes, rather than checking
  only one newly created account's route.

## Try to disprove completion

Use a safe development environment and controlled data. Choose the smallest
set of scenarios that exercises the changed boundary:

1. Complete the intended task and compare the rendered result and actual
   behavior with the material design promises.
2. Delay or reject the relevant request. Check visible status, retained work,
   and recovery. For consequential writes, include a lost response after
   acceptance when the implementation supports testing that boundary. Follow
   the offered recovery and check the resulting data; an error message appearing
   does not prove the next action is safe or that recovery works.
3. Exercise the relevant empty or limit condition and an interruption, reload,
   back, cancel, or return. Check the resulting data, restored context, and
   initial render consistency, not only the final screen.
4. Use the affected controls with keyboard and the relevant mobile conditions;
   try realistic content and the product's supported themes.

Record what was observed, what was corrected, and what could not be exercised.
Source inspection, render checks, interaction tests, and user research support
different conclusions; choose and interpret evidence with
[task-based validation](validation.md). Do not claim the unrun checks passed.
