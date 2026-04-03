import SwiftUI

struct SettingsView: View {
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
                        // Log out action
                    }
                    .foregroundColor(.red)
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
