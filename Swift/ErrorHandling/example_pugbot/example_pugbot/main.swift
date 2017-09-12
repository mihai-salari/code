import Foundation

let myPug = PugBot(name: "Pug", correctPath: [.forward, .left, .forward, .right])

// With following method, we have to include all possible movement and also a 
// separate error handling do-catch
func goHome() throws {
    try myPug.moveForward()
    try myPug.turnLeft()
    try myPug.moveForward()
    try myPug.turnRight()
    
    print("Yeah, we are home!")
}

do {
    try goHome()
} catch PugBotError.endOfPath {
    print("End of path error")
} catch PugBotError.invalidMove {
    print("Invalid move error")
}

// Using a function that accept a move function or closure, and taking care of
// error handling inside the function
func moveSafely(move: () throws -> ()) -> String {
    do {
        try move()
        return "Operation completed successfully"
    } catch PugBotError.invalidMove(let found, let expected) {
        return "The pugbot was supposed to move \(expected), but moved \(found) instead"
    } catch PugBotError.endOfPath {
        return "The pugbot tried to move past the end of the path"
    } catch {
        return "An unknown error occurred"
    }
}

let result = moveSafely {
    try myPug.moveForward()
    try myPug.moveForward()
    try myPug.moveForward()
}

print(result)
