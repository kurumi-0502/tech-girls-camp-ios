
import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            CoffeeListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("コーヒー")
                }
            FavoriteListView()
                .tabItem {
                    Image(systemName: "star")
                    Text("お気に入り")
                }
            }
        }
    }

#Preview {
    MainTabView()
}

