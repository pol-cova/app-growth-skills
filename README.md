# App Growth Skills

Data-driven Agent Skills for building and optimizing subscription apps.

[![skills.sh](https://skills.sh/b/pol-cova/app-growth-skills)](https://skills.sh/pol-cova/app-growth-skills)

## Included skill

### Subscription Onboarding

Evidence-aware onboarding design from first session to activation, without cargo-cult growth patterns.

Use this skill to:

- audit an existing onboarding or onboarding-to-paywall flow;
- design a flow around the product's actual time-to-value;
- decide whether a question, permission, proof point, or paywall belongs;
- interpret funnel results without confusing conversion movement with durable growth; and
- specify controlled experiments with downstream guardrails.

When an app repository is available, the skill inspects the implementation first. It maps current first-run behavior, monetization, permissions, persistence, and analytics before asking for missing metrics or recommending changes.

The skill does not impose a universal sequence. A fast utility may need almost no onboarding. A behavior-change product may need credible explanation, setup, and commitment before its value becomes visible.

## Install

Install the skill with the [Skills CLI](https://skills.sh):

```bash
npx skills add https://github.com/pol-cova/app-growth-skills \
  --skill subscription-onboarding
```

You can also clone the repository and copy `skills/subscription-onboarding` into the skills directory used by your agent.

## Example prompts

```text
Use $subscription-onboarding to audit this 12-screen onboarding flow. I have attached screenshots and our last 30 days of funnel data.
```

```text
Design onboarding for a meal-planning app with a seven-day trial. Users must answer dietary questions before the first plan can be generated.
```

```text
Our variant increased paywall reach by 18% but reduced trial-to-paid and D30 retention. Interpret the test and recommend the next experiment.
```

```text
We have no funnel instrumentation yet. Review the proposed flow, label uncertainty, and give us a measurement plan before suggesting a redesign.
```

For a stronger audit, include the ordered flow or screenshots, the downstream use of each answer, acquisition channels and markets, pricing and trial terms, funnel counts by experiment arm, the activation definition, and mature retention or subscription outcomes. The skill still gives a bounded recommendation when some inputs are unavailable.

## Method

The skill reasons through:

```text
Current state -> Desired state -> Obstacle -> Mechanism -> Evidence -> Offer -> Activation
```

It starts with the product implementation, builds a product model, classifies time-to-value, and tests whether onboarding is needed. It keeps only stages with a concrete job.

Evidence is classified by the question:

| Type | Use |
| --- | --- |
| `FACT` | Verified product behavior |
| `CONSTRAINT` | Platform, safety, technical, privacy, or business requirements |
| `EXPERIMENTAL` | Credible causal evidence |
| `BEHAVIORAL` | First-party observational analytics |
| `QUALITATIVE` | Evidence about expectations, confusion, and why users behave as they do |
| `BENCHMARK` | External empirical prior |
| `INFERENCE` | Deduction from stated evidence |
| `HYPOTHESIS` | Claim that still needs validation |

External benchmarks are priors. They are not prescriptions.

## Scope

The skill covers onboarding, first-run, onboarding-to-paywall, activation handoff, contextual permissions, and experiments that change those experiences. Standalone pricing, paywall creative, App Store optimization, lifecycle CRM, cancellation, win-back, reactivation, and unrelated analytics belong in specialized workflows.

## Repository structure

```text
skills/
└── subscription-onboarding/
    ├── SKILL.md
    ├── references/       Deeper domain guidance loaded when relevant
    ├── assets/           Reusable audit output template
    └── evals/            Answer-quality, routing, and regression cases
```

## Limitations

- The skill cannot replace product research, instrumentation, or a properly powered experiment.
- Recommendations depend on the accuracy and completeness of supplied product facts.
- External benchmarks can be misleading when category, geography, acquisition source, price, or measurement definitions differ.
- Platform and legal requirements change. Verify current rules before shipping, especially for subscriptions, privacy, and permissions.
- The skill supports product decisions. It is not legal, financial, or statistical advice.

## Evaluate the skill

Run the cases with the skill disabled, then repeat with it enabled. Score behavior rather than wording. Structured cases cover automation and codebase-first discovery. Routing cases test whether the skill activates only when onboarding or activation is central. Add regression fixtures from observed failures, not speculative prompt collections.

## Source basis

The initial methodology draws on the [Agent Skills specification](https://agentskills.io/specification), [Apple's Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/onboarding), [Apple's App Review Guidelines](https://developer.apple.com/app-store/review/guidelines/), and [RevenueCat's State of Subscription Apps 2026](https://www.revenuecat.com/state-of-subscription-apps). The repository treats market benchmarks as observational priors. Refresh benchmarks periodically and verify store rules before shipping.

## Contributing

Issues and pull requests are welcome. Contributions should match evidence to the question, distinguish facts from hypotheses, and avoid adding fixed funnels as universal best practices.

For changes to the decision engine, add or update an eval. Keep detailed domain material in `references/` so `SKILL.md` remains concise. Run `ruby scripts/validate_skills.rb` before opening a pull request.

## License

[MIT](LICENSE) © 2026 Paul Contreras
