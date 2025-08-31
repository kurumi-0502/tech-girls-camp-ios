import SwiftUI

@MainActor
@Observable
final class FavoriteCoffeeManager {
    static let shared = FavoriteCoffeeManager()
    
    private(set) var coffees: [Coffee] = [] {
        didSet {
            save()
        }
    }

    private let key = "favoriteCoffees"

    private init() {
        load()
    }

    func toggle(_ coffee: Coffee) {
        if contains(coffee) {
            remove(coffee)
        } else {
            add(coffee)
        }
    }

    func contains(_ coffee: Coffee) -> Bool {
        coffees.contains { $0.id == coffee.id }
    }

    private func add(_ coffee: Coffee) {
        coffees.append(coffee)
    }

    private func remove(_ coffee: Coffee) {
        coffees.removeAll { $0.id == coffee.id }
    }

    // MARK: - Persistence
    private func save() {
        if let data = try? JSONEncoder().encode(coffees) {
            UserDefaults.standard.set(data, forKey: key)
        }
    }

    private func load() {
        if let data = UserDefaults.standard.data(forKey: key),
           let savedCoffees = try? JSONDecoder().decode([Coffee].self, from: data) {
            coffees = savedCoffees
        }
    }
}

