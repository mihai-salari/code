import Cocoa

// Generic Declaration - Generic Protocol with Self

// In a protocol, use of the keyword Self turns the protocol into a generic,
// Self is a placeholder meaning the type of the adopter.

protocol Animal {
    func eatTogetherWith(_ a: Self)
}