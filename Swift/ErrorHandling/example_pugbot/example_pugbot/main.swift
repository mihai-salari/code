import Foundation

let myPug = PugBot(name: "Pug", correctPath: [.forward, .left, .forward, .right])

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
