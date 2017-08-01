import Cocoa

// Generic Declaration - Generic Protocol with Associated Type

// A protocol can declare an associated type using an associatedtype statement.
// This turns the protocol into a generic; the associated type name is a placeholder.

protocol Animal {
    associatedtype Other
    
    func eatTogetherWith(_ a: Other)
    func mateWith(_ a: Other)
}