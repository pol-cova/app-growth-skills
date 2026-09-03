# Source quality and freshness

Use this reference when external evidence or platform rules affect a recommendation.

## Record external evidence metadata

When available, record:

- source organization;
- publication date and date verified;
- population and sample size;
- product category, geography, platform, and acquisition context;
- price, access model, and trial design;
- cohort and metric definitions;
- observation window and study design;
- known limitations and potential conflicts of interest.

Missing metadata lowers confidence. It does not automatically make a source useless.

## Check transferability

Compare the source with the product on category, geography, platform, audience, acquisition source, price, access model, trial design, product maturity, cohort definition, metric definition, and measurement window.

State meaningful mismatches. Reduce confidence when comparability is weak. Do not convert a benchmark percentile or median into a product target without first-party evidence that the comparison is useful.

## Separate vendor evidence layers

RevenueCat, Superwall, Adapty, and other vendor reports can contain useful empirical data. Keep three layers separate:

```text
dataset result
vendor interpretation
recommendation for this product
```

Record the vendor's product relationship and dataset coverage when known. Do not treat a vendor conclusion as a universal prescription.

## Verify time-sensitive claims

Platform policies, billing APIs, permission behavior, and market benchmarks change. When web access is available, verify shipping-sensitive claims against current official documentation and record the verification date.

If current verification is unavailable, say that the bundled reference may be stale. Present the claim as provisional and direct the user to the official source. Do not infer a current rule from an old screenshot, blog post, or memory.
