## 2026-04-07 - Combine SwiftUI data cards into single accessibility elements
**Learning:** By default, SwiftUI presents each text element in a data card to VoiceOver independently, causing screen readers to interpret simple data points as overly verbose disconnected pieces of information.
**Action:** Use `.accessibilityElement(children: .ignore)` alongside `.accessibilityLabel` to group the card's contents together into a single focused element, presenting the data (e.g., Title and Value) coherently to VoiceOver.
