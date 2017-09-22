import Foundation

let coordinates = (3, 3, 5)

switch coordinates {
case (0, 0, 0):
    print("origin")
case (_, 0, 0):
    print("on the x-axis")
case (0, _, 0):
    print("on the y-axis")
case (0, 0, _):
    print("on the z-axis")
case let (x, y, _) where x == y:
    print("on y = x line")
case let (x, y, _) where y == x * x:
    print("on y = x^2 line")
case let (x, y, z):
    print("on x:\(x), y:\(y), z:\(z)")
}
