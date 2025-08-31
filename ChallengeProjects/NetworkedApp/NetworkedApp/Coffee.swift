import Foundation

struct Coffee: Codable, Identifiable, Equatable {
    var id: Int
    var title: String
    var description: String
    var ingredients: [String]
    var image: URL
}
