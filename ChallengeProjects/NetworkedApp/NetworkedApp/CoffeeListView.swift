import SwiftUI

struct CoffeeListView: View {
    let coffees: [Coffee] = [
        Coffee(id: 1, title: "Black Coffee", description: "Simple and classic.", ingredients: ["Coffee"], image: URL(string: "https://images.unsplash.com/photo-1494314671902-399b18174975?auto=format&fit=crop&q=80&w=1887")!),
        Coffee(id: 2, title: "Latte", description: "Smooth and creamy coffee with milk.", ingredients: ["Espresso", "Milk"], image: URL(string: "https://images.unsplash.com/photo-1498804103079-a6351b050096?auto=format&fit=crop&q=80&w=1887")!),
        Coffee(id: 3, title: "Cappuccino", description: "Espresso, hot milk, and steamed milk foam.", ingredients: ["Espresso", "Milk Foam"], image: URL(string: "https://images.unsplash.com/photo-1525351484163-7529414344d8?auto=format&fit=crop&q=80&w=1887")!),
        Coffee(id: 4, title: "Mocha", description: "Espresso with chocolate and steamed milk.", ingredients: ["Espresso", "Chocolate", "Milk"], image: URL(string: "https://images.unsplash.com/photo-1509042239860-f550ce710b93?auto=format&fit=crop&q=80&w=1887")!),
        Coffee(id: 5, title: "Espresso", description: "Strong and rich coffee.", ingredients: ["Espresso"], image: URL(string: "https://images.unsplash.com/photo-1517705008128-361805f42e86?auto=format&fit=crop&q=80&w=1887")!)
    ]
    
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
    }
}

#Preview {
    CoffeeListView()
}
