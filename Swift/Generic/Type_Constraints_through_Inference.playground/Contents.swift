import Cocoa

// Note that a protocol cannot use itself as a type constraint, hence
// following code won't work:

//protocol Animal {
//    associatedtype Other: Animal <-- Error!
//    
//    func flockTogetherWith(_ f: Other)
//}

protocol SuperAnimal {}
protocol Animal: SuperAnimal {
    associatedtype Other: SuperAnimal
    
    func flockTogetherWith(_ f: Other)
}

struct Frog: Animal {
    func flockTogetherWith(_ f: Frog) {
        print("We are happy frog!")
    }
}

let frog = Frog()
let brog = Frog()

frog.flockTogetherWith(brog)

//let dog = Animal()
//frog.flockTogetherWith(dog) <-- Error, dog is not Frog
