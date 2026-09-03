# Evaluating subscription onboarding

The evals test decisions and reasoning, not exact wording or one preferred onboarding sequence.

## Run manually

1. Run each prompt with the skill disabled and save the response.
2. Run the same prompt and context with the skill enabled.
3. Score each item in `required` as pass or fail.
4. Fail the case if the response includes a `forbidden` behavior.
5. Compare the enabled response with the baseline and record the behavioral difference.

Every critical case must pass. Use [cases.yaml](cases.yaml) for structured core cases and [cases.md](cases.md) for the broader adversarial suite. Test [routing.yaml](routing.yaml) separately because discovery quality and answer quality are different concerns.

Do not score by matching phrases. Accept different flows when the response uses the evidence available, explains the tradeoff, and satisfies the required behavior.

## Add a regression case

Prefer failures observed in real agent use over speculative prompt expansion. When a meaningful failure occurs:

1. preserve the original prompt and relevant context;
2. document the undesirable response behavior;
3. define the required and forbidden behavior;
4. add the smallest useful fixture under `fixtures/`;
5. make the minimum instruction or reference change needed;
6. rerun the existing routing and answer-quality evals.

Remove sensitive product data before committing a fixture. Do not add a fake project merely to make the directory nonempty.

## Fixture shape

A fixture may contain the prompt, a reduced codebase or file set, relevant metrics, the observed failure, and expected behavior. Keep only evidence needed to reproduce the failure. Name the directory after the case ID.
