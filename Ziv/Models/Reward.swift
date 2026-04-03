import Foundation

struct Reward: Identifiable, Codable {
    var id: UUID = UUID()
    var title: String
    var description: String
    var pointsRequired: Int
    var isActive: Bool
    var partnerApp: PartnerApp?

    enum PartnerApp: String, Codable {
        case clover = "Clover"
        case claava = "Claava"
        case generic = "Generic"
    }
}
