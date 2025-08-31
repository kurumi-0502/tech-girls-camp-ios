import SwiftUI

struct CoffeeListView: View {
    @State private var coffees: [Coffee] = []
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 20) {
                ForEach(coffees) { coffee in
                    CoffeeItemView(coffee: coffee)
                        .padding(.horizontal)
                }
            }
            .padding(.vertical)
        }
        .task {
            do {
                coffees = try await getCoffees()
            } catch {
                print("Failed to fetch coffees: \(error)")
            }
        }
    }
    
    func getCoffees() async throws -> [Coffee] {
        guard let url = URL(string: "https://api.sampleapis.com/coffee/hot") else { return [] }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let coffees = try JSONDecoder().decode([Coffee].self, from: data)
        return coffees
    }
}

#Preview {
    CoffeeListView()
}
