import Foundation

let coordinates = (3, 2, 5)

switch coordinates {
case (0, 0, 0):
    print("origin")
case (_, 0, 0):
    print("on the x-axis")
case (0, _, 0):
    print("on the y-axis")
case (0, 0, _):
    print("on the z-axis")
case let (x, y, z):
    print("on x:\(x), y:\(y), z:\(z)")
}
