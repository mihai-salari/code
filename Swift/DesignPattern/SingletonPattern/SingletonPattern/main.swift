import Foundation

// A singleton is a design pattern that restricts the instantiation of
// a class to one object

//let logger1 = Logger()
let logger1 = Logger.sharedSingleton
print(logger1)
logger1.log()

//let logger2 = Logger()
let logger2 = Logger.sharedSingleton
print(logger2)
logger2.log()

let logger3 = Logger()
print(logger3)
logger3.log()
