//: Playground - noun: a place where people can play

import Cocoa

//struct Stack {
//    var items = [Int]()
//    
//    mutating func push(_ newItem: Int) {
//        self.items.append(newItem)
//    }
//    
//    mutating func pop() -> Int? {
//        guard !items.isEmpty else {
//            return nil
//        }
//        
//        return items.removeLast()
//    }
//}
//
//var intStack = Stack()
//intStack.push(1)
//intStack.push(2)

//print(intStack.pop())
//print(intStack.pop())
//print(intStack.pop())
//print(intStack.pop())
//print(intStack.pop())

// Associated Type Protocol

struct StackIterator<T>: IteratorProtocol {
    typealias Element = T
    
    var stack: Stack<T>
    
    mutating func next() -> Element? {
        return stack.pop()
    }
}

// Generic Type

struct Stack<Element>: Sequence {
    typealias Iterator = StackIterator<Element>
    
    var items = [Element]()
    
    mutating func push(_ newItem: Element) {
        self.items.append(newItem)
    }
    
    mutating func pop() -> Element? {
        guard !items.isEmpty else {
            return nil
        }
        
        return items.removeLast()
    }
    
    mutating func pushAll(_ array: [Element]) {
        for item in array {
            self.push(item)
        }
    }
    
    mutating func genericPushAll<S: Sequence>(_ sequence: S) where S.Iterator.Element == Element {
        for item in sequence {
            self.push(item)
        }
    }
    
    // Generic method
    func map<U>(_ f: (Element) -> (U)) -> Stack<U> {
        var mappedItems = [U]()
        
        for item in items {
            mappedItems.append(f(item))
        }
        
        return Stack<U>(items: mappedItems)
    }
    
    func filter(_ f: (Element) -> Bool) -> Stack<Element> {
        var filteredItems = [Element]()
        
        for item in items {
            if f(item) {
                filteredItems.append(item)
            }
        }
        
        return Stack<Element>(items: filteredItems)
    }
    
    func makeIterator() -> StackIterator<Element> {
        return StackIterator(stack: self)
    }
}

var intStack = Stack<Int>()
intStack.push(1)
intStack.push(2)

var doubleStack = intStack.map({
    $0 * 2
})

print(doubleStack)

print(intStack.pop())
print(intStack.pop())
print(intStack.pop())
print(intStack.pop())
print(intStack.pop())

var stringStack = Stack<String>()
stringStack.push("Hello World")
stringStack.push("Hello Swift")
print(stringStack.pop())
print(stringStack.pop())
print(stringStack.pop())

// Generic function
func myMap<T, U>(_ items: [T], _ f: (T) -> (U)) -> [U] {
    var result = [U]()
    
    for item in items {
        result.append(f(item))
    }
    
    return result
}

let strings = ["one", "two", "three"]
let stringLengths = myMap(strings) {
    $0.characters.count
}

print(stringLengths)

// Type constraint
func checkIfEqual<T: Equatable>(_ first: T, _ second: T) -> Bool {
    return first == second
}

print(checkIfEqual(1, 1))

func checkIfDescriptionMatch<T: CustomStringConvertible, U: CustomStringConvertible>(_ first: T, _ second: U) -> Bool {
    return first.description == second.description
}

print(checkIfDescriptionMatch(1, 1.0))
print(checkIfDescriptionMatch("hello", "hello"))
print(checkIfDescriptionMatch(Float(1.0), Double(1.0)))

// Using associated type protocol
var myStack = Stack<Int>()

for _ in 0...10 {
    let i = Int(arc4random_uniform(100)) + 1
    myStack.push(i)
}

print(myStack)

var myStackIterator = StackIterator(stack: myStack)

while let value = myStackIterator.next() {
    print("Got \(value)")
}

// We got this because of Sequence
for value in myStack {
    print(value)
}

myStack.pushAll([1, 2, 3])

for value in myStack {
    print(value)
}

var myOtherStack = Stack<Int>()
myOtherStack.genericPushAll([1, 2, 3])
myOtherStack.genericPushAll(myStack)

for value in myOtherStack {
    print("value is \(value)")
}

let filterStack = myOtherStack.filter({
    $0 % 2 == 1
})

print(filterStack)