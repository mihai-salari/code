import Cocoa

protocol A {
    func sayA()
}

protocol B {
    func sayB()
}

protocol C: A, B {
    // It only purpose is to combine other protocols by adopting
    // all of them...
}

// Without protocol composition
class Z: C {
    func sayA() {
        print("Aaaaaa...")
    }
    
    func sayB() {
        print("Bbbbbb...")
    }
}

func sayAB(_ z: C) {
    z.sayA()
    z.sayB()
}

// Or with protocol composition, note we only use it when it is needed in the method type declaration
func sayAB2(_ z: A & B) {
    z.sayA()
    z.sayB()
}

let z = Z()
z.sayA()
z.sayB()

sayAB(z)
sayAB2(z)