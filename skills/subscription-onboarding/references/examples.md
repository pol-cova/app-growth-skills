# Worked examples

Use these examples for calibration, not as templates.

## Five-second identification utility

Product facts: the user points the camera at an object and receives an identification in about five seconds. Camera access is necessary for the live action. A paid plan unlocks unlimited identifications and history.

Reasoning:

- `OBSERVED` only if supplied data confirms the five-second result. Otherwise treat it as a product fact.
- `INFERENCE`: introductory feature slides delay the acquisition promise.
- `HYPOTHESIS`: letting users complete one identification before the paywall will improve activation and qualified purchase intent.

Likely flow:

```text
concise promise -> camera action and contextual permission -> real result
-> usage boundary or offer -> continue the identified task
```

Do not add a lifestyle questionnaire unless an answer changes recognition or the result.

## Delayed-value habit product

Product facts: users seek better sleep over several weeks. The product generates an evening routine from schedule constraints and supports reminders.

Reasoning:

- The final outcome cannot be demonstrated honestly on first launch.
- The first credible value can be a realistic plan with a clear mechanism.
- Notification permission becomes relevant after the user selects a reminder time.

Likely flow:

```text
goal and constraints -> mechanism -> generated first-night plan
-> reminder choice and contextual permission -> offer -> first routine
```

Activation might be completing the first routine, not finishing onboarding.

## Mixed experiment result

Result: variant paywall reach rises from 60% to 72%, trial starts per paywall view rise, but purchases per eligible install and D30 retained subscribers fall.

Interpretation:

- `OBSERVED`: report each result with denominator, interval, sample, and maturity window.
- `INFERENCE`: the variant likely improved a local step while reducing the quality or number of users surviving the full path.
- Do not ship based on paywall reach or conditional trial conversion alone.
- Inspect earlier abandonment, cohort mix, activation during trial, cancellation, and revenue per eligible install.

The next experiment should isolate the suspected mechanism instead of stacking more persuasion.

## Grocery planning app

Product facts: a useful plan needs household size, recurring items, and an optional budget. Premium access adds automation, history, and shared workflows.

Reasoning:

- Keep an input only when it changes the plan or safety of the result.
- Generate the first useful list before explaining abstract features.
- Test whether budget setup belongs before the preview or after the first list.
- Return paid users to the generated plan instead of an empty home screen.

## Creator tool

Product facts: a screen recorder can demonstrate quality with a short recording and polished preview. Microphone and screen-capture permissions depend on the chosen recording mode.

Likely flow:

```text
promise -> recording choice -> contextual permissions -> short recording
-> real preview -> export or premium boundary -> continue editing
```

Teach controls during the first action. Do not require a five-screen feature tour.

## Freemium network product

Product facts: free users create content and invite collaborators. Paid access adds advanced controls.

`INFERENCE`: a launch hard paywall may reduce content supply, invitations, acquisition, and later upgrade opportunities. An aggregate hard-paywall benchmark does not measure those losses.

Model the economic tradeoff and test access changes with network outcomes, paid conversion, retention, and revenue measured together.
