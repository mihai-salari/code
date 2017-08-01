import Cocoa

@objc protocol P {
    @objc optional var s: String? { get }
    @objc optional func f()
}

// Only a class can adopt, and the class has to be a subclass of NSObject or
// the optional member is marked with @objc attribute

class N: NSObject, P {
    var s: String? = "hello, world"
    
    func f() {
        print(self.s)
    }
}

let n = N()
n.f()

// Note we don't need to implement every members in P (those are optionals!)
class M: P {
    @objc func f() {
        print("HELLO, WORLD")
    }
}

// Note that here m is type as P, so it might has both optional members or it might not
// so the return value is nil below
let m: P = M()

// s is nil, and also pay attention to the double ??
let s = m.s
print(s)

if let f = m.f {
    f()
}

// or if this function is not nil, then call it
m.f?()