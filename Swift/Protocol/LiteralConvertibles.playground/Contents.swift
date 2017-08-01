import Cocoa

// After adopt a literal convertible protocol, a literal 
// can appear where an instance of your object type is expected

struct Nest: ExpressibleByIntegerLiteral {
    var eggCount: Int = 0
    
    init() {
        
    }
    
    init(integerLiteral value: Int) {
        self.eggCount = value
    }
}

func reportEggs(_ nest: Nest) {
    print("This nest contains \(nest.eggCount) eggs.")
}

reportEggs(9) // Note how we pass 9 here to initialize a new Nest object

// or a more traditional way

var nest = Nest()
nest.eggCount = 18

reportEggs(nest)