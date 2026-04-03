import Foundation

class StripeService {
    static let shared = StripeService()

    private init() {}

    // Setup generic Stripe configurations
    func configure(withPublishableKey key: String) {
        // StripeAPI.defaultPublishableKey = key
        print("Stripe configured with key: \(key)")
    }

    func createPaymentIntent(amount: Int, currency: String, completion: @escaping (Result<String, Error>) -> Void) {
        // Call backend to get payment intent client secret
        print("Creating payment intent for \(amount) \(currency)")
        completion(.success("pi_mock_client_secret"))
    }

    func fetchSubscriptionStatus(for businessId: String, completion: @escaping (Bool) -> Void) {
        // Mock checking subscription
        completion(true)
    }
}
