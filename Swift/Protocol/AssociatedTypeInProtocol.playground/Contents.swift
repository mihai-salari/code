import Cocoa

// When using associatedType in a protocol, you're simply stating there is a type used in
// this protocol, without specifying what type this should be. It's up to the protocol
// adopter to decide what the exact type should be.

protocol WeightCalculatable {
    associatedtype WeightType
    
    var weight: WeightType { get }
}

class DoubleWeightType: WeightCalculatable {
    typealias WeightType = Double
    
    var weight: Double {
        return 0.0025
    }
}

class IntWeightType: WeightCalculatable {
    typealias WeightType = Int
    
    var weight: Int = 25
}
