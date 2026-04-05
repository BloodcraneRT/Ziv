import SwiftUI

struct RewardsListView: View {
    @StateObject private var viewModel = RewardsViewModel()
    @State private var showingAddReward = false

    var body: some View {
        NavigationView {
            List {
                if viewModel.isLoading {
                    HStack {
                        Spacer()
                        ProgressView()
                        Spacer()
                    }
                } else {
                    ForEach(viewModel.rewards) { reward in
                        RewardRow(reward: reward)
                    }
                }
            }
            .navigationTitle("Rewards")
            .toolbar {
                Button(action: {
                    showingAddReward = true
                }) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("Add Reward")
            }
            .sheet(isPresented: $showingAddReward) {
                // Placeholder for add reward view
                Text("Add Reward View")
            }
        }
    }
}

struct RewardRow: View {
    var reward: Reward

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                Text(reward.title)
                    .font(.headline)
                Spacer()
                Text("\(reward.pointsRequired) pts")
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
            }
            Text(reward.description)
                .font(.subheadline)
                .foregroundColor(.secondary)

            HStack(spacing: 8) {
                if reward.is10xReward {
                    Text("10x Rewards")
                        .font(.caption)
                        .fontWeight(.bold)
                        .padding(4)
                        .background(Color.yellow.opacity(0.3))
                        .foregroundColor(.orange)
                        .cornerRadius(4)
                }

                if let cashback = reward.cashbackPercentage {
                    Text("\(String(format: "%.0f", cashback))% Cashback")
                        .font(.caption)
                        .padding(4)
                        .background(Color.green.opacity(0.1))
                        .foregroundColor(.green)
                        .cornerRadius(4)
                }

                if let partner = reward.partnerApp {
                    Text("via \(partner.rawValue)")
                        .font(.caption)
                        .padding(4)
                        .background(Color(.systemGray5))
                        .cornerRadius(4)
                }

                Spacer()

                if reward.isActive {
                    Text("Active")
                        .font(.caption)
                        .foregroundColor(.green)
                } else {
                    Text("Inactive")
                        .font(.caption)
                        .foregroundColor(.red)
                }
            }
            .padding(.top, 2)
        }
        .padding(.vertical, 4)
    }
}

struct RewardsListView_Previews: PreviewProvider {
    static var previews: some View {
        RewardsListView()
    }
}
