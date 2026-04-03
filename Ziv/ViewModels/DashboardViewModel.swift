import Foundation
import Combine

class DashboardViewModel: ObservableObject {
    @Published var totalCustomers: Int = 0
    @Published var activeRewards: Int = 0
    @Published var totalPointsIssued: Int = 0
    @Published var isLoading: Bool = false

    init() {
        loadDashboardData()
    }

    func loadDashboardData() {
        isLoading = true
        // Mock data loading
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.totalCustomers = 1240
            self.activeRewards = 12
            self.totalPointsIssued = 45000
            self.isLoading = false
        }
    }
}
