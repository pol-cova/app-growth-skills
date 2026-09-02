# Onboarding principles

Use this reference to decide whether a stage belongs and how to specify it.

## Start with the user's job

The acquisition promise creates an expectation. Identify what the user believes will happen after opening the app and how soon. A flow that delays that promised action incurs an attention and trust cost.

Map:

| Element | Question |
| --- | --- |
| Current state | What is true before the user opens the app? |
| Desired state | What concrete progress does the user want? |
| Obstacle | Why can they not reach it now? |
| Mechanism | What does the product actually do to remove the obstacle? |
| Evidence | What can substantiate the mechanism? |
| Offer | What does payment unlock, and when is that relevant? |
| Activation | What behavior indicates that value has begun? |

Do not write screens while the mechanism or first-value event remains undefined.

## Budget attention

Treat each required action as a cost. Its benefit should be visible in the output, safety, compliance, or user's next step.

Questions earn their place when the answer changes at least one of:

- generated output or recommendation;
- defaults, settings, content, or navigation;
- eligibility, safety, or compliance treatment;
- a clearly stated analysis that the user requested.

For each question, name the exact branch or state it controls. If all answers lead to the same generic copy, remove it or make the personalization real.

## Separate first value from recurring value

Time-to-first-value is the time until the first credible useful result. Time-to-recurring-value is the time until the user repeatedly receives the promised benefit. A product can produce an immediate setup result while its lasting outcome takes weeks. Design the first session for credible progress and define activation around the behavior that begins recurring value.

## Account for acquisition intent

Branded search, a problem-specific ad, App Store browsing, a creator recommendation, and an existing web account place users at different levels of intent and trust. Infer what is already known from the entry path. Do not make every user repeat the same persuasion or identification steps.

## Judge the depth of personalization

Personalization can change copy, content order, defaults, recommendations, setup, product behavior, or outcomes. Name insertion is the weakest form. Prefer changes that affect product state or the quality of the result. Do not describe cosmetic copy changes as deep personalization.

## Prefer doing over telling

When the product can produce useful output in seconds, let the user perform the action. Use embedded, contextual guidance for unfamiliar controls. Reserve explanatory screens for facts the experience cannot reveal quickly, such as a delayed mechanism, a safety boundary, or the terms of paid access.

For delayed-value products, proof should remain honest. Show the mechanism, plan, schedule, preview, prior user evidence with a source, or a measurable leading indicator. Do not simulate an outcome that has not occurred.

## Preserve agency and recovery

Required stages should be truly required. Make optional education skippable. Preserve answers when users go back. Explain validation errors next to the relevant field. Support interruption and resume when setup takes more than a moment.

Do not use progress indicators unless progress maps to real work or a known number of steps. Never fabricate analysis or delay completion to make the product appear sophisticated.

## Prepare permissions contextually

Ask when the user is about to use a feature that needs access. A pre-permission explanation should say what is requested, the immediate benefit, and what happens if the user declines. Do not mimic the system dialog or shame refusal.

Bundle permission prompts only when one user action genuinely needs them together. Design a functional denied state and a route to Settings for users who later change their minds.

## Define stage quality

A stage specification is incomplete unless it answers:

- Why does it exist?
- What belief or action changes?
- What data does it collect?
- Where and how is that data used?
- What breaks if it disappears?
- Can live product evidence replace the explanation?
- How does it behave for skip, back, failure, and assistive technology?
- Which event confirms that it worked?

## Accessibility baseline

Do not rely on color, animation, haptics, or sound alone. Support text scaling, screen readers, reduced motion, sufficient contrast, clear focus order, and controls with meaningful labels and adequate targets. Keep critical terms readable without requiring time-limited interaction.
