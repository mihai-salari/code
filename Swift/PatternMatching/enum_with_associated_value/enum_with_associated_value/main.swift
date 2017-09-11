import Foundation

enum Color {
    case white
    case black
    case hexValue(hexValue: String)
}

let color = Color.hexValue(hexValue: "123456")

switch color {
case .white:
    print("White - 0xFFFFFF")
case .black:
    print("Black - 0x000000")
case .hexValue(let value):
    print("??? - 0x\(value)")
default:
    print("Unknown color")
}
