import Foundation

enum ErrorCode {
    case invalidUserName
    case invalidPassword
    case other(message: String?)
}

func evaluateError(code: ErrorCode) {
    switch result {
    case .invalidUserName:
        print("Invalid user name")
    case .invalidPassword:
        print("Invalid password")
    case .other(let value?): // This case will only execute if value is not nil
        print("\(value) error")
    default:
        print("Unknown error")
    }
}

var result = ErrorCode.other(message: nil)
evaluateError(code: result)

result = ErrorCode.other(message: "Stupid user")
evaluateError(code: result)
