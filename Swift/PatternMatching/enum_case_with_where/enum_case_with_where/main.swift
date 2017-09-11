import Foundation

enum LevelStatus {
    case complete
    case inProgress(percent: Double)
    case notStarted
}

let levels: [LevelStatus] = [.complete, .inProgress(percent: 0.9), .notStarted]

for level in levels {
    switch level {
    case .inProgress(let percent) where percent > 0.8:
        print("Almost there!")
    case .inProgress(let percent) where percent > 0.5:
        print("Halfway there!")
    case .inProgress(let percent) where percent > 0.2:
        print("Made it throught the beginning!")
    default:
        break
    }
}
