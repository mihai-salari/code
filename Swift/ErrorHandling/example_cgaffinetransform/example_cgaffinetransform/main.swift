import Foundation

enum MathError: Error {
    case singularMaxtrix
}

extension CGAffineTransform {
    var isInvertable: Bool {
        return abs(a*b - b*c) > CGFloat.ulpOfOne
    }
}

extension CGAffineTransform: CustomStringConvertible {
    public var description: String {
        return [a,b,c,d,tx,ty].reduce("") {
            $0 + " \($1)"
        }
    }
}

extension CGAffineTransform {
    func safeInverted() -> CGAffineTransform? {
        if self.isInvertable {
            return self.inverted()
        }
        
        return nil
    }
    
    func checkInverted() throws -> CGAffineTransform {
        guard self.isInvertable else {
            throw MathError.singularMaxtrix
        }
        
        return self.inverted()
    }
}

// Testing...
print(CGAffineTransform().isInvertable)
print(CGAffineTransform.identity.isInvertable)

// Singular matrix, won't be able to invert
let a = CGAffineTransform(a: 1, b: 1, c: 1, d: 1, tx: 2, ty: 2)
print(a.inverted())

let b = CGAffineTransform(a: 1, b: 2, c: 3, d: 4, tx: 2, ty: 2)

if let result = b.safeInverted() {
    print("result: \(result)")
} else {
    print("result: nil")
}

let scaleByTwo = CGAffineTransform.identity.scaledBy(x: 2, y: 2)
print(scaleByTwo)

// Invert and invert again, back to original value
let b2 = b.safeInverted()?.safeInverted()
print(b2!) // Force unwrap is not encourage ;)
