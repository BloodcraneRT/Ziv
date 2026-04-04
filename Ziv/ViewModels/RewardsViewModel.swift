import Foundation
import Combine

class RewardsViewModel: ObservableObject {
    @Published var rewards: [Reward] = []
    @Published var isLoading: Bool = false

    init() {
        fetchRewards()
    }

    func fetchRewards() {
        isLoading = true
        // Mock fetching data from API/Services
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.rewards = [
                Reward(title: "Free Coffee", description: "Get a free coffee after 10 purchases", pointsRequired: 100, isActive: true, partnerApp: .clover, cashbackPercentage: nil, is10xReward: false),
                Reward(title: "10% Cashback", description: "Get 10% cashback on your entire order", pointsRequired: 500, isActive: true, partnerApp: .claava, cashbackPercentage: 10.0, is10xReward: true),
                Reward(title: "VIP Status", description: "Access to exclusive events", pointsRequired: 2000, isActive: false, partnerApp: .generic, cashbackPercentage: 2.0, is10xReward: false)
            ]
            self.isLoading = false
        }
    }

    func addReward(_ reward: Reward) {
        rewards.append(reward)
    }
}
