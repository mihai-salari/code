//: Playground - noun: a place where people can play

import UIKit

print(Int.max)
print(Int.min)
print(Int32.max)
print(Int32.min)

print(UInt.max)
print(UInt.min)
print(UInt32.max)
print(UInt32.min)

print(Int8.max) // 1 + 2 + 4 + 8 + 16 + 32 + 64
print(Int8.min)
print(UInt8.max) // 1 + 2 + 4 + 8 + 16 + 32 + 64 + 128
print(UInt8.min)

print(1 + 2 + 4 + 8 + 16 + 32 + 64 + 128)

// Note of using remainder operator (not same as modulo operator) with negative numbers
print(11 % 3)
print(11 % -3)
print(-11 % 3)
print(-11 % -3)

// Shift operations
print(1 << 1) // 0001 shift left 1 bit becomes 0010 = decimal 2
print(1 << 2)
print(1 << 3)
print(2 << 1)
print(2 << 2)
print(2 << 3)
print(1 >> 1)

// Type of
var age = 10
print(type(of: age))

// Constant Double.pi
print(Double.pi)

// Math functions
print(sqrt(2.0))
print(max(1, 2))
print(min(1, 20))
