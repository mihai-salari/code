import Cocoa

protocol Animal {
    // An adopter cannot implement this property as a read-only computed property or
    // as a let constant stored property
    var name: String { get set }
}

class Fish: Animal {
    
    // This is not valid:
    /*
    var name: String {
        get {
            return "Nemo"
        }
    }*/
    
    // This is not valid:
    //let name: String = "Nemo"
    
    var name: String
    
    init(with name: String) {
        self.name = name
    }
}