import SwiftUI

struct SettingsView: View {
    @State private var showLogoutConfirmation = false

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Business Profile")) {
                    HStack {
                        Text("Business Name")
                        Spacer()
                        Text("Ziv Demo Inc.")
                            .foregroundColor(.secondary)
                    }
                    HStack {
                        Text("Email")
                        Spacer()
                        Text("admin@zivdemo.com")
                            .foregroundColor(.secondary)
                    }
                }

                Section(header: Text("Subscription")) {
                    HStack {
                        Text("Current Plan")
                        Spacer()
                        Text("Pro")
                            .foregroundColor(.blue)
                    }
                    Button("Manage Billing") {
                        // Action to manage billing via Stripe
                    }
                }

                Section {
                    Button("Log Out") {
                        showLogoutConfirmation = true
                    }
                    .foregroundColor(.red)
                    .confirmationDialog(
                        "Are you sure you want to log out?",
                        isPresented: $showLogoutConfirmation,
                        titleVisibility: .visible
                    ) {
                        Button("Log Out", role: .destructive) {
                            // Log out action
                        }
                        Button("Cancel", role: .cancel) {}
                    } message: {
                        Text("You will need to sign back in to access your business data.")
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
