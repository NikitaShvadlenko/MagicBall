import Foundation

struct ResponseGenerator {
    static func generateRandomResponse() -> Int {
        let response = Int.random(in: 1...5)
        return response
    }
}
