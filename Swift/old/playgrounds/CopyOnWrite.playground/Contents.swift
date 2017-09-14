//: Playground - noun: a place where people can play

import UIKit

// Copy on write (COW), refers to the implicit sharing of value types' underlying storage.

fileprivate class IntArrayBuffer {
    var storage: [Int]
    
    init() {
        storage = []
    }
    
    init(buffer: IntArrayBuffer) {
        storage = buffer.storage
    }
}

struct IntArray {
    private var buffer: IntArrayBuffer
    
    init() {
        buffer  = IntArrayBuffer()
    }
    
    private mutating func copyIfNeeded() {
        if !isKnownUniquelyReferenced(&buffer) {
            print("Making a copy of \(buffer.storage)")
            self.buffer = IntArrayBuffer(buffer: buffer)
        }
    }
    
    func describe() {
        print(buffer.storage)
    }
    
    mutating func insert(_ value: Int, at index: Int) {
        copyIfNeeded()
        buffer.storage.insert(value, at: index)
    }
    
    mutating func append(_ value: Int) {
        copyIfNeeded()
        buffer.storage.append(value)
    }
    
    mutating func remove(at index: Int) {
        copyIfNeeded()
        buffer.storage.remove(at: index)
    }
}

var integers = IntArray()
integers.append(1)
integers.append(3)
integers.append(8)
integers.describe()

print("copying integers to ints")
var ints = integers

print("inserting into ints")
ints.insert(0, at: 1)

ints.describe()
integers.describe()