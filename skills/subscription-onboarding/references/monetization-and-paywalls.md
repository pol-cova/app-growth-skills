# Monetization and paywalls

Use this reference to connect onboarding to paid access without assuming one access model wins everywhere.

## Choose the access model from constraints

| Model | Conditions that can support it | Main risks to inspect |
| --- | --- | --- |
| Hard paywall | Value is already understood, the acquisition promise is strong, free use is infeasible, or content cost is high | Users cannot verify fit; weak trust; low learning before purchase |
| Metered or freemium | Free use demonstrates repeat value and paid limits map to growing need | Free tier satisfies the whole job; upgrade trigger feels arbitrary |
| Free trial | Meaningful value can appear inside the trial and repeated use predicts payment | Trial attracts low-intent users; value arrives after trial; cancellation surprise |
| Paid trial or intro offer | There is enough intent and trust to support an early commitment | Offer complexity; pricing comprehension; cohort-quality shifts |
| Onboarding paywall | Onboarding has established relevance and paid access is the next necessary step | Questionnaire theater; sunk-cost pressure; offer arrives before credible value |

These are decision factors, not claims about expected conversion.

Other viable models include consumption credits and hybrids of subscription and one-time purchases. Include them when usage cost, episodic demand, or ownership expectations make recurring access a poor fit.

## Interpret aggregate subscription benchmarks

RevenueCat's [State of Subscription Apps 2026](https://www.revenuecat.com/state-of-subscription-apps) reports a much higher median D35 download-to-paid rate for hard-paywall apps than freemium apps, and reports that conversion timing, trial conversion, and revenue vary by category, geography, platform, price, and trial length. This is observational aggregate evidence. It does not show that moving a given product to a hard paywall or longer trial will cause the aggregate difference.

Before using a benchmark, check category, store, geography, price band, trial length, acquisition source, product maturity, brand intent, and the strategic value of free users. State the report date, cohort definition, metric definition, and mismatches. Prefer distributions over a single median.

## Place the paywall at a coherent moment

Possible moments include before product access, after a representative result, at a paid-feature boundary, after a usage limit, or when recurring value is evident. Evaluate each against:

- whether the user understands the mechanism and expected outcome;
- whether enough value can be shown without undermining the business model;
- whether setup creates real product state or only sunk cost;
- whether the acquisition source already communicated the offer;
- whether the user can complete the activation event during the access period.

Do not make completion effort the primary reason to show an offer. A longer quiz can raise paywall reach among survivors while losing qualified users earlier.

## Specify the offer

Make the product and terms legible:

- paid entitlement and important exclusions;
- price and billing period;
- trial length, charge timing, and eligibility where known;
- automatic renewal behavior;
- plan comparison and default selection;
- dismissal or free-path behavior;
- restore, sign-in, and existing-subscriber paths;
- the exact next step after purchase.

Avoid misleading price framing, hidden renewal terms, visually suppressed alternatives, false scarcity, or unsupported savings claims.

## Evaluate subscriber quality

Track acquisition through at least:

```text
eligible install -> paywall view -> purchase or trial -> activation
-> trial conversion -> early cancellation or refund -> retention -> renewal -> revenue
```

Use consistent denominators. Report both conditional conversion and install-level outcomes. A higher paywall conversion rate can coexist with lower revenue per install if fewer suitable users reach it.

Compare cohort mix when a variant changes who reaches the offer. Segment shifts can explain apparent improvements without any user-level treatment effect.

## Preserve the post-purchase handoff

After purchase, return the user to the action or result that motivated the offer. Do not drop them on a generic home screen, repeat collected setup, or treat purchase as the end of onboarding. Instrument entitlement success, activation, and purchase-recovery failures separately.

## Design trials around recurring value

Relate trial length to how long the user needs to experience the recurring benefit, not merely to trial-start conversion. Inspect cancellation timing, marginal service cost, billing expectations, category behavior, and renewal cadence. Track conversion, revenue per eligible user, payer value, renewal, refunds, and plan mix.

## Treat win-backs as experiments

A dismissal discount may add immediate purchases but can train users to reject the first offer or reduce trust. Test it separately and measure incremental revenue and subscriber quality, not only win-back conversion.
