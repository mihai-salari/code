import Cocoa

protocol P {
    init() // Implicitly required, all classes adopted this protocol must mark it as required
}

class C: P {
    required init() {
        
    }
}

// or mark the class as final
final class D: P {
    init() {
        
    }
}