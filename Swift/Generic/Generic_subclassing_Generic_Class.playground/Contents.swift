import Cocoa

// When a class is generic, you can subclass it, provided you resolve the generic:

// 1) through a matching generic subclass

// A generic class
class Dog<T> {
    var name: T?
}

class NoisyDog<T>: Dog<T> {
    
}

// 2) resolving the superclass generic explicitly

class SuperNoisyDog: Dog<String> {
    
}