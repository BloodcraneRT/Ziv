# Ziv - Business Rewards App

Ziv is a rewards app for businesses that connects PassKit services, Stripe, and pulls integrations from platforms like Clover and Claava. It is built entirely using SwiftUI.

## Features

- **Dashboard**: View key metrics including total customers, active rewards, and total points issued.
- **Rewards Management**: View, add, and manage customer loyalty programs, points, and tiers.
- **Integrations Hub**: Connect with Stripe for payments, PassKit for Apple Wallet integration, and Clover/Claava for points generation based on POS transactions.
- **Business Profile & Settings**: Manage the business profile and subscription plans.

## Project Structure

- `Ziv/Models`: Core data structures (Reward, Business, Customer).
- `Ziv/Views`: SwiftUI interfaces.
- `Ziv/ViewModels`: Business logic and state management for the Views.
- `Ziv/Integrations`: Scaffolded service classes for Stripe, PassKit, and Clover APIs.
- `ZivTests`: Basic unit tests for Models and ViewModels.

## Setup Instructions

1. **Prerequisites**: Ensure you are running macOS with Xcode 14 or later installed.
2. **Open the Project**: Since this codebase was generated without an `.xcodeproj` file directly, to build and run this code:
   - Open Xcode.
   - Select `File -> New -> Project -> iOS App`.
   - Name the project `Ziv`.
   - Drag and drop the `Ziv` and `ZivTests` folders from this repository into your Xcode project navigator, ensuring "Copy items if needed" is selected.
3. **Configure Stripe**:
   - Add the Stripe iOS SDK via Swift Package Manager (`https://github.com/stripe/stripe-ios`).
   - Update `Ziv/Integrations/StripeService.swift` with your Publishable Key.
4. **Configure PassKit**:
   - Enable "Wallet" in the Signing & Capabilities tab of your Xcode project target.
   - Update `Ziv/Integrations/PassKitService.swift` to communicate with your server for `.pkpass` generation.

## Testing

Run tests by pressing `Cmd + U` in Xcode to execute the unit tests located in `ZivTests/ZivTests.swift`.
