# Android platform rules

Use this reference for Android onboarding. The sources below were verified on 2026-09-02. Recheck official documentation before shipping because Android versions, target SDK behavior, Play policies, and billing APIs change. This is product guidance, not legal advice.

## Runtime permissions

Request a runtime permission in context when the user starts the feature that needs it. First check whether the feature can work without the permission or with narrower access. Keep educational UI cancelable.

Handle denial without blocking unrelated features. Explain which capability is limited and provide a useful degraded state. Do not assume that permission groups, repeat prompts, or denial behavior remain identical across OS versions.

Sources: [Request runtime permissions](https://developer.android.com/training/permissions/requesting), [App permissions best practices](https://developer.android.com/training/permissions/usage-notes)

## Notifications

Android 13, API level 33, and later use the `POST_NOTIFICATIONS` runtime permission for non-exempt notifications. Target SDK version affects when the system prompt can appear. Inspect the app's minimum and target SDK versions before recommending a request flow.

Ask after the user understands and chooses a notification-dependent feature. Design for allow, deny, and dismiss outcomes. Do not assume notification permission exists or behaves the same on older versions.

Source: [Notification runtime permission](https://developer.android.com/develop/ui/compose/notifications/notification-permission)

## Subscriptions and entitlements

Show the actual available products and eligible offers returned for the user. Make price, billing period, trial or introductory terms, and renewal clear. Handle purchase success, pending state, failure, cancellation, and already-owned products without losing onboarding state.

Grant entitlement only after verifying a purchased state. Reconcile purchases with the user's account when the product uses one. Subscription state can change outside the app, so do not treat a client purchase callback as permanent truth.

Sources: [Integrate the Google Play Billing Library](https://developer.android.com/google/play/billing/integrate), [Subscription lifecycle](https://developer.android.com/google/play/billing/lifecycle/subscriptions), [Integrate Google Play with your backend](https://developer.android.com/google/play/billing/backend)

## Restore and re-entitlement

On launch or return to a paid feature, query or synchronize current purchases so an entitled user is not sent through acquisition onboarding again. Google Play subscription restoration and resubscription have distinct lifecycle behavior. Confirm the current Billing Library and backend guidance for the app's implementation.

Source: [Subscription lifecycle](https://developer.android.com/google/play/billing/lifecycle/subscriptions)

## Accounts

Require an account before value only when identity, synchronization, security, collaboration, or server-side entitlement needs it. Preserve work through sign-in. If the app permits in-app account creation, verify current Google Play account-deletion policy and provide the required deletion path.

Source: [Google Play account deletion requirements](https://support.google.com/googleplay/android-developer/answer/13327111)

## Accessibility

Make every meaningful control and first-run action understandable to accessibility services. Label elements, expose needed accessibility actions, preserve logical focus order, support scalable text and adequate targets, and do not rely on color or animation alone. Test the complete onboarding and purchase path with TalkBack and accessibility analysis tools.

Sources: [Principles for improving app accessibility](https://developer.android.com/guide/topics/ui/accessibility/principles), [Test your app's accessibility](https://developer.android.com/guide/topics/ui/accessibility/testing)

## Shipping check

Verify target SDK behavior, declared and runtime permissions, notification states, Play Billing version and purchase states, entitlement restoration, account deletion, offline behavior, and the full TalkBack path. If live verification is unavailable, state that this bundled summary may be stale.
