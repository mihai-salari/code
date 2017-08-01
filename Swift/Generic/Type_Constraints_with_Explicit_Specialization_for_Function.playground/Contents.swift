import Cocoa

// You cannot explicitly specialize a generic function.

// You can, declare a generic type with a non-generic function that uses the generic type's placeholder;
// explicitly specialization of the generic type resolves the placeholder, and thus resolves the function.

protocol A {
    init()
}

struct S: A {
    init() { // Note, no need to mark required here, it is not Class
        
    }
}

struct MakerForA<T: A> {
    static func makeA() -> T {
        return T()
    }
}

let f = MakerForA<S>.makeA()
print(f)