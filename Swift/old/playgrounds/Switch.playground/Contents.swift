//: Playground - noun: a place where people can play

import UIKit

var statusCode: Int = 204
var errorString: String = ""

switch statusCode {
case 400:
    errorString = "Bad request"
case 401:
    errorString = "Unauthorized"
case 403:
    errorString = "Forbidden"
case 404, 405:
    errorString = "Not found"
    fallthrough
case 408:
    errorString += "... Oops! I fallthrough... where am I???"
case 501...509:
    errorString = "Server error"
case var unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 600:
    errorString = "\(unknownCode + unknownCode) is unknown"
default:
    errorString = "Unexpected error encountered"
}

print(errorString)

// Single case switch
let age = 33

switch age {
case 18...35:
    print("Cool demographic")
default:
    break
}

// Using if case for above example (this is better!)
if case 18...35 = age, age >= 21, age < 30 {
    print("Super cool demographic")
}

let point = (x: 1, y: 4)

print(point)

switch point {
case let q1 where (point.x > 0) && (point.y > 0):
    print("\(q1) is in quadrant 1")
case let q2 where (point.x < 0) && (point.y > 0):
    print("\(q2) is in quadrant 2")
case let q3 where (point.x < 0) && (point.y < 0):
    print("\(q3) is in quadrant 3")
case let q4 where (point.x > 0) && (point.y < 0):
    print("\(q4) is in quadrant 4")
case (_, 0):
    print("\(point) sits on the x-axis")
case (0, _):
    print("\(point) sits on the y-axis")
default:
    print("Case not covered")
}
