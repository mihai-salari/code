import Foundation

let mystack = Stack<Int>()
print(mystack.count)

mystack.push(item: 10)
print(mystack.count)

mystack.push(item: 8)
mystack.push(item: 2)
mystack.push(item: 4)
mystack.push(item: 3)
mystack.pop()
mystack.pop()

if let last = mystack.peep() {
    print("Last item is \(last)")
}
