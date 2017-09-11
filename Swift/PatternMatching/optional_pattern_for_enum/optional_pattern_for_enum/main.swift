import Foundation

enum ErrorCode {
    case invalidUserName
    case invalidPassword
    case other(message: String?)
}

var result = ErrorCode.other(message: nil)
result = ErrorCode.other(message: "Stupid user")

switch result {
case .invalidUserName:
    print("Invalid user name")
case .invalidPassword:
    print("Invalid password")
case .other(let value?): // This case will only execute if value is not nil
    print("Error: \(value)")
default:
    print("Unknown error")
}
