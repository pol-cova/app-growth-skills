# Adversarial eval cases

Evaluate behavior, reasoning, and uncertainty. Do not require one exact flow or exact wording. A passing response applies the evidence hierarchy, labels claims, connects onboarding to activation and downstream outcomes, and resists unnecessary redesign.

Score each expected behavior as 0 or 1. A strong version should score at least 90% overall and pass every behavior marked `Critical`.

## 1. Immediate-value utility

Prompt setup: a document scanner produces a clean scan in five seconds. The proposed onboarding has a welcome carousel, use-case quiz, testimonial, notification prompt, and account creation before the camera.

Expected behaviors:

- `Critical`: classifies the product as immediate value and challenges the long flow;
- recommends testing direct access to the scan action;
- keeps only setup that enables the scan, including contextual camera access;
- questions the quiz, notifications, account gate, and explanatory carousel;
- defines first successful scan as a candidate first-value event;
- does not add a generic multi-screen template.

## 2. Delayed-value habit app

Prompt setup: a sleep habit app expects results over several weeks and generates a nightly plan from schedule constraints.

Expected behaviors:

- `Critical`: does not demand an immediate final-outcome proof that the product cannot provide;
- recognizes delayed value and avoids promising an instant outcome;
- permits justified context, mechanism explanation, setup, and commitment;
- treats the generated first-night plan as credible early progress;
- places notification permission after reminder intent;
- defines activation beyond onboarding completion.

## 3. Planning app with required setup

Prompt setup: a trip planner needs dates, destination, budget range, and traveler count to generate an itinerary.

Expected behaviors:

- keeps inputs that visibly change the plan;
- asks whether optional preferences can be deferred;
- preserves answers and handles incomplete or uncertain input;
- returns a real itinerary preview as soon as required setup is complete;
- does not misclassify all questions as friction.

## 4. Fifteen-screen questionnaire

Prompt setup: only three of fifteen answers affect the product. The others feed generic result copy and marketing segmentation.

Expected behaviors:

- requests or identifies the downstream use of every answer;
- removes or defers questions without a user-facing or required operational use;
- calls generic name or goal insertion fake personalization;
- measures eligible-user outcomes, not completion among survivors only;
- challenges sunk-cost reasoning.

## 5. Hard-paywall product

Prompt setup: a licensed content app cannot expose full content for free and paid access is required at entry.

Expected behaviors:

- does not prescribe freemium as a universal fix;
- looks for truthful previews, catalog evidence, acquisition context, or samples allowed by rights;
- makes offer terms and restore paths clear;
- defines activation after purchase;
- identifies trust and fit uncertainty.

## 6. Freemium product

Prompt setup: a creative tool offers five exports each month. Heavy users pay for unlimited exports and advanced formats.

Expected behaviors:

- considers letting users create and export before monetization;
- aligns the upgrade moment with the usage or advanced-format boundary;
- measures whether free users reach repeat value;
- watches revenue and retention rather than forcing an onboarding paywall;
- questions whether the free allowance demonstrates or satisfies the whole job.

## 7. Paywall reach rises while quality falls

Prompt setup: a variant raises paywall reach and trial starts, but purchases per eligible install, D30 retention, and revenue per install fall.

Expected behaviors:

- refuses to call the variant a winner from local metrics;
- compares consistent denominators and cohort mix;
- examines activation, early cancellation, refunds, and mature outcomes;
- reports uncertainty and metric windows;
- recommends rollback or further testing according to a stated decision rule.

## 8. Several major experiment changes

Prompt setup: the variant changes price, visual design, onboarding sequence, and trial duration.

Expected behaviors:

- labels the test as a package comparison;
- refuses component-level causal claims;
- checks whether the business only needs a package decision or wants causal learning;
- proposes isolated follow-up tests when attribution matters;
- names pricing and cohort maturation as confounders.

## 9. Fake personalization and loading

Prompt setup: five quiz answers lead to the same plan. A ten-second "AI analysis" animation runs over a fixed result.

Expected behaviors:

- identifies both devices as deceptive or unjustified;
- removes the delay and unused questions or makes the processing and branches real;
- does not defend them as engagement tactics without evidence;
- proposes measurement of actual result use and activation.

## 10. Premature rating request

Prompt setup: the app asks for five stars immediately after the welcome screen.

Expected behaviors:

- removes the request from onboarding;
- chooses a natural pause after a meaningful successful task;
- notes that the system may decide whether to show the prompt on iOS;
- does not treat purchase or signup alone as product value.

## 11. Excessive permission prompts

Prompt setup: first launch requests notifications, tracking, contacts, photos, microphone, and location before showing the product.

Expected behaviors:

- maps each permission to a dependent user action;
- moves justified requests into context and removes unjustified ones;
- designs denied and limited states;
- separates ATT from functional permissions;
- checks current platform requirements.

## 12. No funnel data

Prompt setup: a founder supplies mockups and product facts but no event data.

Expected behaviors:

- continues with explicit product-fact, inference, and hypothesis labels;
- avoids invented benchmark numbers;
- proposes an event taxonomy and baseline collection;
- distinguishes usability or deception fixes from growth claims;
- states which unknowns could change the design.

## 13. Very small sample

Prompt setup: a test has 42 eligible users per variant and a two-point trial-start difference.

Expected behaviors:

- does not declare a winner;
- discusses interval width, baseline, practical effect, and minimum detectable effect;
- checks exposure and event quality;
- suggests continued collection or a larger, justified contrast;
- avoids pretending a precise sample requirement is known without assumptions.

## 14. Benchmark mismatch

Prompt setup: the team wants to copy a US fitness-app onboarding benchmark for a paid education app in Brazil.

Expected behaviors:

- treats the benchmark as a weak prior;
- names category, geography, acquisition, price, audience, and metric-definition mismatch;
- prioritizes local product facts and first-party measurement;
- does not convert the benchmark into a conversion target.

## 15. Strong existing onboarding

Prompt setup: the current four-stage flow has high first-value completion, strong activation, good renewal, and no clear usability failures. The team asks for a total redesign because a competitor changed its flow.

Expected behaviors:

- challenges the need for a redesign;
- preserves effective stages and names what should remain unchanged;
- asks what outcome needs improvement;
- proposes a narrow test only if there is a supported opportunity;
- treats competitor behavior as weak evidence.

## Cross-case failure signals

Fail or flag responses that:

- reproduce the same fixed sequence across cases;
- optimize only completion, paywall reach, or trial starts;
- cite unsourced benchmarks as facts;
- invent data, statistics, user research, or platform requirements;
- confuse correlation with causation;
- keep unused questions for engagement theater;
- recommend deceptive persuasion or bundled permissions;
- omit activation and downstream guardrails;
- redesign strong work without a defined problem.

## 16. Aggregate hard-paywall bias

Prompt setup: the user cites a report showing much higher median hard-paywall conversion and asks to put a hard paywall at launch in a social collaboration app.

Expected behaviors:

- `Critical`: rejects a direct causal inference from the aggregate benchmark;
- accounts for content, invitation, and network value created by free users;
- checks category, market, acquisition, price, and product economics;
- proposes an economic model or controlled test instead of blind adoption.

## 17. Low-traffic copy test

Prompt setup: an indie utility gets 500 new users each month. The owner wants six simultaneous copy variants and a statistically significant winner.

Expected behaviors:

- `Critical`: warns about low power, multiple comparisons, and false precision;
- favors fewer, larger conceptual tests;
- uses effect uncertainty, usability sessions, or interviews as supporting evidence;
- does not fabricate a sample requirement without baseline and effect assumptions.

## 18. Questionnaire that is necessary

Prompt setup: a nutrition planner needs dietary restrictions, allergies, household size, and cooking time to create a safe plan.

Expected behaviors:

- `Critical`: does not apply a blanket rule to remove questions;
- keeps inputs that affect safety or output;
- states the downstream use and collection rationale;
- distinguishes required setup from optional marketing research.

## 19. Existing paying customer

Prompt setup: a desktop companion app mainly serves existing paying web customers. The proposed flow places a consumer persuasion quiz before sign-in.

Expected behaviors:

- `Critical`: recognizes the existing-user path;
- moves sign-in and state restoration early;
- avoids repeating acquisition persuasion;
- sends the user to an immediate task with restored context.
