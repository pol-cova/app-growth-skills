# Apple platform rules

Use this reference for onboarding on Apple platforms. The sources below were verified on 2026-09-02. Recheck official documentation before shipping because policies and APIs change. This is product guidance, not legal advice.

## Onboarding

Apple's Human Interface Guidelines recommend making onboarding fast and optional when possible, postponing nonessential setup, and letting people experience the app before ratings or purchase prompts. Apply this contextually. Safety, account, entitlement, or required setup may still precede use.

Source: [Onboarding, Apple Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/onboarding)

## Notifications

Request authorization before sending notifications. Ask when the user has chosen a feature whose value depends on them, such as a reminder time, delivery alert, or scheduled session. Explain the immediate use. Do not request permission on launch merely because notifications may help retention.

Respect denial and provide a functional fallback where possible. Assign interruption levels honestly. Keep lock-screen content appropriate.

Sources: [Notifications](https://developer.apple.com/design/human-interface-guidelines/notifications/), [Managing notifications](https://developer.apple.com/design/human-interface-guidelines/managing-notifications)

## App Tracking Transparency

Use App Tracking Transparency before tracking users across other companies' apps or websites or accessing the advertising identifier. State the purpose accurately. Do not gate app functionality or rewards on tracking consent, and do not manipulate users into granting it.

A pre-prompt may explain the use but must remain transparent and must not imitate the system dialog.

Source: [User privacy and data use](https://developer.apple.com/app-store/user-privacy-and-data-use/)

## Ratings and reviews

Do not request a rating during onboarding or on first launch. Wait until the user has experienced meaningful value, such as completing a significant task. Use the system review request at a natural pause. The system controls whether the prompt appears.

Source: [Ratings and reviews, Apple Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/ratings-and-reviews)

## Account creation

Require an account before value only when the core experience depends on identity, cross-device state, security, legal eligibility, or server-side persistence. Otherwise consider guest use or just-in-time account creation. Explain why the account is needed and preserve work through sign-in.

If the app supports account creation, confirm current account-deletion requirements. If third-party login establishes the primary account, confirm whether an equivalent privacy-preserving login option is required and which exceptions apply.

Source: [App Review Guidelines, sections 4.8 and 5.1.1](https://developer.apple.com/app-store/review/guidelines/)

## Subscriptions and offers

Before purchase, describe what the subscription provides and show the material price, duration, trial or introductory terms, and renewal behavior. Subscription access should work across supported user devices. Do not require unrelated tasks to access paid content.

Use StoreKit purchase interfaces and verify current rules for links, alternative purchase methods, and storefront-specific behavior. These rules vary by entitlement, app category, and storefront.

Source: [App Review Guidelines, section 3.1](https://developer.apple.com/app-store/review/guidelines/)

## Restore purchases

Provide a discoverable way to restore restorable purchases. Do not automatically initiate a restore at app launch because it can prompt for App Store credentials and interrupt the user.

Source: [Restoring purchased products](https://developer.apple.com/documentation/storekit/restoring-purchased-products)

## Other permissions

Request camera, microphone, photos, contacts, location, health, calendar, or similar access when the user invokes the dependent feature. Explain the purpose before the system prompt when context alone is insufficient. Request the narrowest access that supports the task, and design denied and limited-access states.

Never require unrelated system permissions to unlock paid content or compensate the user for granting them. Keep purpose strings accurate and consistent with actual data use.

Sources: [Privacy, Apple Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/privacy), [App Review Guidelines, section 5.1](https://developer.apple.com/app-store/review/guidelines/)

## Shipping check

Verify current store and storefront rules, subscription products and eligibility, purchase lifecycle states, privacy disclosures, permission states, offline behavior, and accessibility with VoiceOver, Dynamic Type, contrast, reduced motion, and switch control.
