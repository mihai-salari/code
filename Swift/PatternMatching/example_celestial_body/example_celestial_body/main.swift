import Foundation

enum CelestialBody {
    case star
    case planet(liquidWater: Bool)
    case comet
}

let telescopeCensus: [CelestialBody] = [
    .star,
    .planet(liquidWater: false),
    .planet(liquidWater: true),
    .planet(liquidWater: true),
    .comet
]

for obj in telescopeCensus {
    switch obj {
    case .planet(let gotWater) where gotWater:
        print("I have water!")
    default:
        print("I don't have water...")
    }
}
