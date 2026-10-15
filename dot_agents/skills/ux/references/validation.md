# Task-based validation

Choose a check that could invalidate the proposed decision. Match the method
to the missing evidence rather than running a fixed battery of checks.
For working UI, use [implementation checks](implementation-review.md) to connect
design promises with observed state transitions and recovery.

## Choose the evidence

| Question | Useful evidence | Limitation |
| --- | --- | --- |
| Does the control behave as specified? | Focused interaction or integration check. | Does not establish that people understand it. |
| Does the layout hold up? | Rendered states at relevant widths, content lengths, and themes. | Does not prove task completion or accessibility. |
| Can people find and complete the task? | Observe actual or likely users attempting a realistic task. | A small round identifies problems, not population-wide effect sizes. |
| Does the change improve outcomes? | Appropriate outcome measurement over a meaningful period. | Conversion or retention alone does not establish user benefit or causality. |

## Specify an observable result

Define starting context, goal, observable completion, and the consequential
failure or return path. Give the goal without teaching the controls to use.

For example: “Find the items missing a price, correct one, and return to your
filtered list.” This tests discovery, editing, and context preservation without
teaching the intended route.

Write a useful check as: “After this action, under this condition, this result
is observable.” For a mail handoff, distinguish opening the app, the person
sending, and receipt. For an edit, include returning to the filtered list.

Use synthetic data for local checks. Real-user research requires actual or
likely users and the appropriate authorization. Observe without coaching;
record behavior separately from comments and interpretation. Agent reviews
and simulated personas are not user research.

## Interpret the result

Prefer correct completion, recoverable errors, retained work, and time when
speed matters. Match measures to the usage rhythm; occasional services do not
need daily visits.

Compare against the starting state. A small sample or changes to several
things together limit the conclusion. A passing render check does not establish
user success or full accessibility; visual preference does not establish
conversion improvement.

Report the observation, resulting decision, and remaining uncertainty briefly.
Use the project's checks for implementation. For web accessibility criteria,
consult [WCAG 2.2](https://www.w3.org/WAI/WCAG22/quickref/). For observed task
testing, see the
[GOV.UK guide](https://www.gov.uk/service-manual/user-research/using-moderated-usability-testing).
