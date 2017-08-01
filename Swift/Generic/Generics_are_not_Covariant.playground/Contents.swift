import Cocoa

struct Wrapper<T> {
    
}

class Fish {
    
}

class Nemo: Fish {
    
}

// This will not compile!
//let fish: Wrapper<Nemo> = Wrapper<Fish>() // Error