import Foundation

enum HTTPMethod {
    case get
    case post(body: String)
}

let request = HTTPMethod.post(body: "Welcome")

guard case .post(let body) = request else {
    fatalError("HTTP post with no body message!")
}

print(body)
