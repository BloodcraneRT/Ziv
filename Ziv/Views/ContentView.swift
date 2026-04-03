import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            DashboardView()
                .tabItem {
                    Label("Dashboard", systemImage: "chart.bar.fill")
                }

            RewardsListView()
                .tabItem {
                    Label("Rewards", systemImage: "star.fill")
                }

            IntegrationsView()
                .tabItem {
                    Label("Integrations", systemImage: "link")
                }

            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
