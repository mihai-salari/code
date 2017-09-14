//: Playground - noun: a place where people can play

import UIKit

let coordinatesNamed = (x: 1, y: 2)
coordinatesNamed.x
coordinatesNamed.y

let (a, b) = coordinatesNamed
a
b

let myTuple = (6, 9, 2017, 27.5)
let myNamedTuple: (month: Int, day: Int, year: Int, averageTemperature: Double) = myTuple
let (day, _, _, averageTemperature) = myTuple
day
averageTemperature

var statusCode: Int = 418
var errorString: String = "The request failed with the error:"

switch statusCode {
case 100, 101:
    errorString += " Informational, \(statusCode)."
case 204:
    errorString += " Successful but no content, 204."
case 300...307:
    errorString += " Redirection, \(statusCode)."
case 400...417:
    errorString += " Client error, \(statusCode)."
case 500...505:
    errorString += " Server error, \(statusCode)."
case let unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 505:
    errorString = "\(unknownCode) is not a known code."
default:
    errorString = "Unexpected error encountered."
}

print(statusCode)
print(errorString)

let error = (statusCode, errorString)
print(error)

error.0
error.1

let errorName = (code: statusCode, error: errorString)
errorName.code
errorName.error

print(errorName)

// Pattern matching in Tuples
let firstErrorCode = 404
let secondErrorCode = 200
let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes {
case (404, 404):
    print("No items found")
case (404, _):
    print("First item not found")
case (_, 404):
    print("Second item not found")
default:
    print("All items found")
}

func tupleMaker() ->  (first: Int, second: String) {
    return (1, "hello")
}

let t = tupleMaker()
print(t.first)

let t2 = tupleMaker().first
print(t2)
