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

/*
 Logger #B6726D44-F7FD-4058-809E-4AE8C0FA823B
 Logger ID is B6726D44-F7FD-4058-809E-4AE8C0FA823B
 Logger #B6726D44-F7FD-4058-809E-4AE8C0FA823B
 Logger ID is B6726D44-F7FD-4058-809E-4AE8C0FA823B
 Logger #39E99FAF-7A4F-4DB8-9EF3-9D49CD3AB3D9
 Logger ID is 39E99FAF-7A4F-4DB8-9EF3-9D49CD3AB3D9
 Program ended with exit code: 0
 */
