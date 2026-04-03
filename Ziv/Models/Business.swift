import Foundation

struct Business: Identifiable, Codable {
    var id: UUID = UUID()
    var name: String
    var description: String
    var stripeAccountId: String?
    var hasActiveSubscription: Bool
    var integratedPlatforms: [String]
}
