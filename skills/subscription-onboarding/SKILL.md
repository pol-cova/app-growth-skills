---
name: subscription-onboarding
description: >
  Designs, audits, and optimizes onboarding and onboarding-to-paywall
  flows for consumer and subscription apps. Use when deciding onboarding
  sequence, personalization, product-demo timing, questions, permissions,
  social proof, paywall placement, activation, funnel metrics, or
  onboarding experiments. Reasons from first-party data, time-to-value,
  user intent, monetization model, category, and platform constraints
  instead of applying fixed onboarding templates or industry benchmarks
  as universal rules.
---

# Subscription onboarding

Design the shortest credible path from user intent to product value, paid access when relevant, and durable activation. Challenge the proposed flow before optimizing it. Do not start by choosing screens.

## Evidence discipline

Rank evidence as follows:

```text
first-party experimental data
> first-party observational data
> product facts
> relevant external benchmarks
> general industry patterns
> intuition
```

Label material claims and recommendations:

- `OBSERVED`: directly supported by supplied first-party data.
- `BENCHMARK`: supported by relevant external empirical evidence. Name the source, population, date, metric definition, and fit limits when available.
- `INFERENCE`: a deduction from known facts. State the premises.
- `HYPOTHESIS`: an uncertain claim that needs a test.

Never convert correlation into causation. Never present a hypothesis as a fact. Treat benchmarks as priors, not targets.

First-party observational data includes funnel and cohort analysis, qualitative research, usability sessions, and support evidence. Describe the limits of each source rather than treating all observations as equally reliable.

## Establish the decision context

Before proposing screens, determine:

- target user, acquisition context, and job-to-be-done;
- current alternative or behavior;
- current state, desired state, and main obstacle;
- product mechanism and proof that the mechanism works;
- time-to-first-value and time-to-recurring-value;
- required input, setup, account state, or permission before value;
- free and paid access boundaries, price, trial, renewal, and restore behavior;
- product-specific activation event and expected time window;
- platform, category, geography, accessibility, privacy, and regulatory constraints;
- existing flow, instrumentation, sample size, segments, experiment history, and downstream outcomes.

Ask only for missing information that could change the recommendation. If it is unavailable, continue with explicit assumptions and lower confidence.

Express the product logic as:

```text
Current state -> Desired state -> Obstacle -> Mechanism -> Evidence -> Offer -> Activation
```

If any link is unknown or implausible, expose the gap before designing the flow.

## Inspect first-party data

When data is supplied:

1. Confirm event definitions, denominators, observation windows, eligibility, sample sizes, allocation, and missing data.
2. Segment only where there is a product reason, such as platform, geography, acquisition source, new versus returning user, or intent.
3. Trace users past onboarding into activation, trial-to-paid, retention, cancellation, refunds, renewal, and revenue when available.
4. Check whether variants changed multiple major factors or suffered instrumentation, novelty, seasonality, or sample-ratio issues.
5. Separate measured results from interpretation.

Do not declare a winner from paywall reach, onboarding completion, or trial starts alone. A local funnel gain can hide lower subscriber quality or long-term value.

For detailed metric and test guidance, read [experiments-and-metrics.md](references/experiments-and-metrics.md).

## Classify time-to-value

Choose the closest class, then adapt it to the product:

- **Immediate value:** the core benefit can appear in the first session. Prefer promise, minimum setup, product action, result, then offer. Test whether onboarding can be removed.
- **Short setup before value:** relevant input or configuration is required. Collect only inputs that change the output, setup, or product state. Show the result as soon as possible.
- **Delayed value:** the real outcome needs hours, days, or repeated use. Establish intent, a credible mechanism, necessary setup, and the next commitment. Do not fabricate an instant result.
- **Network or content-dependent value:** value depends on catalog fit, other users, collaboration, or marketplace density. Account for the strategic value of free participation before restricting access.

These are heuristics, not templates. Read [onboarding-archetypes.md](references/onboarding-archetypes.md) when category or value timing changes the structure materially.

## Decide whether onboarding is needed

Start from zero screens. Add a stage only if it does at least one of the following:

- enables or accelerates first value;
- collects data that changes the experience, recommendation, setup, content, or product state;
- resolves a real comprehension, trust, safety, or compliance barrier;
- prepares a contextual system permission that the next action needs;
- explains an offer whose value or terms would otherwise be unclear;
- creates a necessary commitment for a delayed-value product.

Candidate stages include promise, relevance, context, problem, desired outcome, personalization, setup, product experience, result, proof, commitment, offer, and activation. Select only justified stages. Do not treat this list as a sequence.

Prefer product evidence over feature explanation when value can be demonstrated quickly. Defer nonessential setup. Use sensible defaults. Make optional education skippable.

Remove a stage when its absence does not damage comprehension, value, trust, compliance, or activation. Do not retain a question merely because its answer might be useful later.

Apply the deletion test: what important outcome becomes worse if this stage disappears? Remove it or test removal when there is no defensible answer.

Read [onboarding-principles.md](references/onboarding-principles.md) for the screen-level decision rules and [patterns-and-antipatterns.md](references/patterns-and-antipatterns.md) when reviewing persuasive devices.

## Design the justified flow

For each stage, specify:

1. purpose;
2. user belief or action it changes;
3. information shown or collected;
4. how collected data changes the product;
5. entry condition and next state;
6. skip, back, recovery, and accessibility behavior;
7. event instrumentation;
8. evidence label and confidence;
9. consequence of removal;
10. whether product evidence can replace explanation.

Do not use fake personalization, fabricated progress or loading, invented statistics, disguised ads, premature rating prompts, forced permission bundles, or manipulative pain amplification. Personalization must cause a meaningful downstream change.

For every onboarding question, record `answer -> downstream use`. Marketing research or segmentation may be useful, but that alone does not make the question necessary in the critical path.

When auditing an existing flow, use [onboarding-audit-template.md](assets/onboarding-audit-template.md). Preserve strong stages instead of redesigning for novelty.

## Connect onboarding to monetization

Choose paywall timing from value timing, access model, user intent, acquisition promise, and product economics. Do not assume hard paywall, freemium, trial, or onboarding paywall is universally best.

For every offer, make the following clear:

- what access changes;
- price, billing period, trial or introductory terms, and renewal behavior;
- available choices and the consequences of dismissing;
- restore and account behavior where applicable;
- the next action after purchase.

The transition should preserve the story established by product value. Do not use a paywall to compensate for an unclear mechanism or weak product proof.

Read [monetization-and-paywalls.md](references/monetization-and-paywalls.md) when selecting an access model, offer, or paywall placement. For Apple platforms, also read [ios-platform-rules.md](references/ios-platform-rules.md) and verify current official rules before shipping.

## Define activation after the flow

Specify a product-specific activation event, its time window, and why it predicts retained value. Design the first post-onboarding state so the user can complete that event without repeating setup or losing context.

Purchase is not activation unless the evidence shows that it predicts durable use. Include lifecycle handoffs such as reminders, saved state, content delivery, or the next scheduled action only when they support the product mechanism.

## Measure and experiment

Define the funnel with event names, eligibility, denominators, properties, and observation windows. Pair a primary outcome with downstream guardrails.

When an experiment is justified, output:

- Hypothesis
- Control
- Variant
- Primary metric
- Guardrail metrics
- Expected mechanism
- Decision rule
- Important segments
- Known confounders

Also state eligibility, unit of randomization, minimum practical effect, and maturity window when the available information supports them.

Change one major causal idea at a time when the goal is learning. If pricing, design, trial duration, and sequence all change, treat the result as a package test and do not attribute causality to a component.

For weak samples, report uncertainty and minimum detectable effect considerations. Prefer gathering data or testing a larger contrast over declaring an unstable winner.

## Self-review

Before finalizing:

- verify every stage has a necessary job;
- remove repeated promises, unused questions, premature asks, and fake progress;
- confirm recommendations follow the evidence hierarchy;
- relabel unsupported claims as hypotheses;
- check the full path through activation, retention, cancellation, renewal, and revenue;
- check platform and accessibility constraints;
- state what should remain unchanged;
- list the highest-impact unknowns and the evidence that would resolve them.

## Output shape

Adapt detail to the request. For a full design or audit, provide:

1. context and assumptions;
2. evidence table with claim labels;
3. time-to-value and product logic;
4. keep, remove, change, or add decisions;
5. proposed flow with a reason for every stage;
6. monetization transition and activation handoff;
7. measurement plan;
8. experiment specifications;
9. risks, uncertainty, and unresolved questions.

Read [examples.md](references/examples.md) only when a worked example would help calibrate the response.
