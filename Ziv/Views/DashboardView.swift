import SwiftUI

struct DashboardView: View {
    @StateObject private var viewModel = DashboardViewModel()

    var body: some View {
        NavigationView {
            ScrollView {
                if viewModel.isLoading {
                    ProgressView("Loading Dashboard...")
                        .padding()
                } else {
                    VStack(spacing: 20) {
                        HStack {
                            StatCard(title: "Total Customers", value: "\(viewModel.totalCustomers)", icon: "person.3.fill")
                            StatCard(title: "Active Rewards", value: "\(viewModel.activeRewards)", icon: "star.fill")
                        }

                        StatCard(title: "Points Issued", value: "\(viewModel.totalPointsIssued)", icon: "gift.fill")
                            .frame(maxWidth: .infinity)

                        Spacer()
                    }
                    .padding()
                }
            }
            .navigationTitle("Dashboard")
        }
    }
}

struct StatCard: View {
    var title: String
    var value: String
    var icon: String

    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(.blue)
                .padding(.bottom, 5)
            Text(title)
                .font(.headline)
                .foregroundColor(.secondary)
            Text(value)
                .font(.title)
                .fontWeight(.bold)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color(.systemGray6))
        .cornerRadius(12)
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
