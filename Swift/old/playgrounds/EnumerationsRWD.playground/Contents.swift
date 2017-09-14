//: Playground - noun: a place where people can play

import Cocoa

enum Month: Int {
    case january = 1, february, march, april, may, june, july, august, september, october, november, december
    
    // Computed property
    var semester: String {
        switch self {
        case .august, .september, .october, .november, .december:
            return "Autumn"
        case .january, .february, .march, .april, .may:
            return "Spring"
        case .june, .july:
            return "Summer"
        }
    }
    
    var monthsUntilWinterBreak: Int {
        return Month.december.rawValue - self.rawValue
    }
}

func semester(for month: Month) -> String {
    switch month {
    case .august, .september, .october, .november, .december:
        return "Autumn"
    case .january, .february, .march, .april, .may:
        return "Spring"
    case .june, .july:
        return "Summer"
    }
}

// Using raw value
func monthsUntilWinterBreak(from month: Month) -> Int {
    return Month.december.rawValue - month.rawValue
}

var month: Month = .april
print(semester(for: month))
month = .september
print(semester(for: month))

month = .january
let semester = month.semester
print(semester)

print("There's still \(monthsUntilWinterBreak(from: Month.august)) months for X'mas")

// Initialize with raw value (return is optional)
let birthMonth = Month(rawValue: 12)
print(birthMonth)

if let birthMonth = birthMonth {
    print("My birthday fall in \(birthMonth)!")
}

let monthsLeft1 = birthMonth?.monthsUntilWinterBreak
print(monthsLeft1)

let monthsLeft2 = month.monthsUntilWinterBreak
print(monthsLeft2)

// Raw value with String
enum Icon: String {
    case music
    case sports
    case weather
    
    var filename: String {
        return "\(self.rawValue.capitalized).png"
    }
}

let icon = Icon.music
print(icon.filename)

// Unordered raw values
enum Coin: Int {
    case penny = 1
    case nickel = 5
    case dime = 10
    case quarter = 25
}

let coin = Coin.quarter
coin.rawValue

let coinPurse: [Coin] = [Coin.penny, Coin.dime, Coin.penny, Coin.quarter, Coin.quarter, Coin.nickel]

func calculateTotalValue(in coinPurse: [Coin]) -> Int {
    var total = 0
    
    for coin in coinPurse {
        switch coin {
        case .penny:
            total += 1
        case .nickel:
            total += 5
        case .dime:
            total += 10
        case .quarter:
            total += 25
        }
    }
    
    return total
}

print(calculateTotalValue(in: coinPurse))

// Associated values
enum WithdrawalResult {
    case success(newBalance: Int)
    case error(message: String)
}

var balance = 100

func withdraw(amount: Int) -> WithdrawalResult {
    if amount <= balance {
        balance -= amount
        return .success(newBalance: balance)
    } else {
        return .error(message: "You don't have enough money!")
    }
}

let result = withdraw(amount: 99)
//print(result)

switch result {
case .success(let newBalance):
    print("Your new balance is \(newBalance)")
case .error(let message):
    print(message)
}

enum HTTPMethod {
    case get
    case post(body: String)
}

let request = HTTPMethod.post(body: "Hi there")

guard case .post(let body) = request else {
    fatalError("No message was posted")
}

print(body)

if case .post(let message) = request {
    print(message)
}

//print(message) // Error, message is out of scope, this is not same like guard

// Enumeration as state machine
enum TrafficLight {
    case red, yellow, green
}

let trafficLight = TrafficLight.red

enum LightSwitch {
    case on
    case off
}

// Enumeration as name space for type method (case-less enumeration)
enum Math {
    static var e: Double {
        return 2.7183
    }
    
    static func factorial(of number: Int) -> Int {
        return (1...number).reduce(1, *)
    }
}

let factorial = Math.factorial(of: 6)
print(factorial)

let nestegg = 25000 * pow(Math.e, 0.07 * 20)
print(nestegg)

// Optional is enumuration
var age: Int?
age = 37

switch age {
case .none:
    print("No value")
case .some(let value):
    print("Got a value: \(value)")
}

age = .none
age == nil
age == .none