import UIKit

// When you extend a generic type, the placeholder type names are visible to your extension declaration.
// It might be a good idea to add a comment, to remind yourself what is that placeholder type related to as it is a little mystifying...

class Dog<T> {
    var name: T?
}

extension Dog {
    func sayMyName() -> T? { // T is the type of self.name
        return self.name
    }
}

// Generic type extension declaration with where clause:

// This is a global generic function
func myMin<T: Comparable>(_ things: T...) -> T {
    var min = things[0]
    
    for ix in 1..<things.count {
        if things[ix] < min {
            min = things[ix]
        }
    }
    
    return min
}

// We inject it into Array as a method...
extension Array where Element: Comparable {
    func myMin() -> Element {
        var min = self[0]
        
        for ix in 1..<self.count {
            if self[ix] < min {
                min = self[ix]
            }
        }
        
        return min
    }
}

// where clause with ==
// Note that we cannot do that with a generic struct, but we can do it with a generic protocol

extension Array where Element == Int { // This will not work!
    // ....
}

// but this will work, since Array adopted Sequence protocol, so it will get following behavior
extension Sequence where Iterator.Element == Int {
    // ...
}