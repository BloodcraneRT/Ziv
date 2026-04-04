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
                            Text("Dashboard")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            Spacer()
                            Button(action: {
                                // Present QR Scanner
                            }) {
                                Image(systemName: "qrcode.viewfinder")
                                    .font(.title2)
                                    .foregroundColor(.white)
                                    .padding(10)
                                    .background(Color.black)
                                    .cornerRadius(10)
                            }
                        }

                        StatCard(title: "Financial Goal: Summer Trip", value: "$\(String(format: "%.0f", viewModel.financialGoalProgress)) / $1000", icon: "target")
                            .frame(maxWidth: .infinity)

                        HStack {
                            StatCard(title: "Cashback Issued", value: "$\(String(format: "%.2f", viewModel.totalCashbackIssued))", icon: "dollarsign.circle.fill")
                            StatCard(title: "10x Rewards", value: "\(viewModel.active10xRewards) Active", icon: "bolt.fill")
                        }

                        HStack {
                            StatCard(title: "Total Customers", value: "\(viewModel.totalCustomers)", icon: "person.3.fill")
                            StatCard(title: "Active Rewards", value: "\(viewModel.activeRewards)", icon: "star.fill")
                        }

                        Spacer()
                    }
                    .padding()
                }
            }
            .navigationBarHidden(true)
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
