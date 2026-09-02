# Experiments and metrics

Use this reference to diagnose funnels and design experiments that measure durable product outcomes.

## Define the unit and denominator

For every metric, state:

- eligible population;
- randomization or analysis unit;
- numerator and denominator;
- event and property definitions;
- attribution and observation window;
- treatment of retries, returning users, refunds, and missing events.

Prefer install-level or eligible-user outcomes alongside conditional rates. Conditional metrics can improve because a variant filters out users earlier.

Start with a causal question. "Which onboarding is better?" is too vague. "Does showing a successful first result before the paywall increase activated payers per eligible install without reducing revenue per install?" names the change, mechanism, outcome, and guardrail.

## Trace the whole system

Useful stages may include:

```text
eligible start
-> required setup
-> first value
-> paywall
-> trial or purchase
-> product activation
-> trial-to-paid
-> D7 and D30 retention
-> cancellation or refund
-> renewal
-> revenue per eligible user or install
```

Adapt stages and windows to the product. A daily habit and an annual tax utility should not share the same activation or retention definition.

## Separate diagnostic, primary, and guardrail metrics

- Diagnostic metrics explain where behavior moved, such as question completion or paywall reach.
- The primary metric represents the intended business or user outcome within a credible observation window.
- Guardrails catch harm, such as lower activation, higher refunds, lower renewal, support contacts, latency, crashes, or permission denial.

Trial starts are rarely sufficient as the sole primary metric. If downstream outcomes mature slowly, define an early proxy only when first-party evidence shows that it predicts the later outcome.

## Read experiments cautiously

Before interpreting a result, check:

- allocation and sample-ratio mismatch;
- exposure logging and eligibility;
- pre-experiment balance where available;
- novelty, seasonality, campaign, release, or price changes;
- repeated peeking and multiple comparisons;
- sample size, interval width, and minimum detectable effect;
- segment composition and interaction effects;
- maturation of retention, conversion, cancellation, and renewal windows.

Statistical significance does not establish practical importance. A non-significant result does not prove equivalence. Report effect estimates and uncertainty, not just a binary verdict.

Public teardowns and case studies overrepresent unusual wins and often omit neutral tests, failures, denominators, and product economics. Use them to form hypotheses, not expected effect sizes.

## Preserve causal identification

When the learning goal concerns one mechanism, change one major causal idea. Keep unrelated design and offer details stable.

If a package test changes pricing, layout, trial duration, and onboarding sequence together, it can answer whether the package performs better. It cannot identify which component caused the result. Label it accordingly and follow with isolated tests if component knowledge matters.

## Check event quality

Require stable definitions, deterministic firing conditions, deduplication, consistent anonymous-to-account identity, durable experiment assignment, and reliable timestamps. Validate subscription lifecycle events separately from client-side funnel events.

## Experiment specification

Write:

```text
Hypothesis:
Control:
Variant:
Primary metric:
Guardrail metrics:
Expected mechanism:
Decision rule:
Important segments:
Known confounders:
```

The decision rule should cover ship, reject, continue, or gather more data. Include a practical effect threshold and the required maturity window. Do not promise a sample size without baseline rate, allocation, desired detectable effect, and statistical assumptions.

## When no data exists

Do not fabricate benchmarks. Mark the analysis as hypothesis-led. First define events and baseline collection. Use product facts and usability evidence to remove obvious friction or deception, but distinguish those fixes from measured growth claims.

A useful first measurement plan often includes:

- eligible onboarding start;
- each required stage viewed and completed;
- skip, back, error, and abandonment;
- first-value attempt and success;
- paywall view and offer identifier;
- purchase, trial, failure, and restore result;
- activation event;
- retained use, cancellation, refund, renewal, and revenue outcomes.

Avoid collecting fields with no stated decision use. Minimize personal data and align instrumentation with consent and platform rules.

## Report results

Separate measured results, the proposed mechanism, and alternative explanations. Report control and variant sample sizes, absolute and relative effects, uncertainty, guardrails, and only predeclared segments unless exploratory slices are clearly labeled. End with `ship`, `reject`, `iterate`, or `inconclusive`, plus one follow-up that reduces the largest uncertainty.
