import Foundation

class PugBot {
    let name: String
    let correctPath: [Direction]
    
    private var currentStepInPath = 0
    
    init(name: String, correctPath: [Direction]) {
        self.correctPath = correctPath
        self.name = name
    }
    
    func turnLeft() throws {
        guard currentStepInPath < correctPath.count else {
            throw PugBotError.endOfPath
        }
        
        let nextDirection = correctPath[currentStepInPath]
        
        guard nextDirection == .left else {
            throw PugBotError.invalidMove(found: .left, expected: nextDirection)
        }
        
        currentStepInPath += 1
    }
    
    func turnRight() throws {
        guard currentStepInPath < correctPath.count else {
            throw PugBotError.endOfPath
        }
        
        let nextDirection = correctPath[currentStepInPath]
        
        guard nextDirection == .right else {
            throw PugBotError.invalidMove(found: .right, expected: nextDirection)
        }
        
        currentStepInPath += 1
    }
    
    func moveForward() throws {
        guard currentStepInPath < correctPath.count else {
            throw PugBotError.endOfPath
        }
        
        let nextDirection = correctPath[currentStepInPath]
        
        guard nextDirection == .forward else {
            throw PugBotError.invalidMove(found: .forward, expected: nextDirection)
        }
        
        currentStepInPath += 1
    }
}
