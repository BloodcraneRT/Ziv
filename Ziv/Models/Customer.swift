import Foundation

struct Customer: Identifiable, Codable {
    var id: UUID = UUID()
    var name: String
    var email: String
    var pointsBalance: Int
    var passKitId: String? // Identifier for Apple Wallet pass
}
