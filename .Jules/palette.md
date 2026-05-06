## 2024-05-24 - Empty States in SwiftUI Lists
**Learning:** SwiftUI `List` components do not provide default empty states, leaving users with a blank screen which is a poor UX. When adding a custom empty state inside a `List`, using `listRowBackground(Color.clear)` is essential to prevent it from rendering like a standard row. Additionally, grouping the empty state elements with `accessibilityElement(children: .combine)` ensures VoiceOver reads the empty state logically as a single entity rather than disjointed text and icons.
**Action:** Always implement explicit empty states for SwiftUI `List` or `ScrollView` components that display dynamic content. Ensure the empty state provides a clear explanation and, if applicable, an actionable step (like a call-to-action to add an item). Use `accessibilityElement(children: .combine)` for combined text/icon states to optimize screen reader experience.

## 2024-05-24 - Grouping Text Elements in Data Cards
**Learning:** In SwiftUI projects, complex data display components like `StatCard` (which combine icons, titles, and values) can result in disjointed and overly verbose VoiceOver reading if left unmanaged. Screen readers treat each text element as a separate entity.
**Action:** Adhere to accessibility conventions by grouping related text elements into a single logical VoiceOver element using `.accessibilityElement(children: .ignore)` alongside a combined `.accessibilityLabel` to provide a clean, consolidated announcement (e.g., "Total Revenue, $5,000").

## 2024-05-24 - Destructive Actions in Scrollable Lists
**Learning:** In SwiftUI applications, embedding standalone destructive actions (such as 'Log Out' or 'Delete') directly as buttons within scrollable `List` components creates a high risk of accidental taps and unintended execution while users are scrolling through the view.
**Action:** Always wrap destructive or disruptive actions presented as buttons in scrollable lists within a `.confirmationDialog` or `.alert` modifier. This provides an essential secondary confirmation step, explicitly warning the user of the impending disruptive action and preventing accidental data loss or disruption of the user's session.
