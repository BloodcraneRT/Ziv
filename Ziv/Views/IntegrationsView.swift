import SwiftUI

struct IntegrationsView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Payments")) {
                    IntegrationRow(name: "Stripe", description: "Process payments and manage subscriptions", isConnected: true, icon: "creditcard.fill")
                }

                Section(header: Text("Point of Sale & Rewards")) {
                    IntegrationRow(name: "Clover", description: "Sync transactions for loyalty points", isConnected: false, icon: "cart.fill")
                    IntegrationRow(name: "Claava", description: "Import existing reward structures", isConnected: false, icon: "arrow.triangle.2.circlepath")
                }

                Section(header: Text("Customer Wallet")) {
                    IntegrationRow(name: "Clavaa Wallet", description: "Accept contactless payments and 10x rewards", isConnected: true, icon: "iphone.radiowaves.left.and.right")
                    IntegrationRow(name: "Apple PassKit", description: "Issue digital loyalty cards", isConnected: true, icon: "wallet.pass.fill")
                }
            }
            .navigationTitle("Integrations")
        }
    }
}

struct IntegrationRow: View {
    var name: String
    var description: String
    var isConnected: Bool
    var icon: String

    var body: some View {
        HStack {
            Image(systemName: icon)
                .frame(width: 30)
                .foregroundColor(.blue)

            VStack(alignment: .leading) {
                Text(name)
                    .font(.headline)
                Text(description)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }

            Spacer()

            if isConnected {
                Text("Connected")
                    .font(.caption)
                    .foregroundColor(.green)
                    .padding(6)
                    .background(Color.green.opacity(0.1))
                    .cornerRadius(8)
            } else {
                Button("Connect") {
                    // Connect action
                }
                .font(.caption)
                .buttonStyle(.bordered)
            }
        }
        .padding(.vertical, 4)
    }
}

struct IntegrationsView_Previews: PreviewProvider {
    static var previews: some View {
        IntegrationsView()
    }
}
