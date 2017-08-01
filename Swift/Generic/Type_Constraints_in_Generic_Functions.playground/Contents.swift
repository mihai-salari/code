import Cocoa

func myMin<T: Comparable>(_ things: T...) -> T {
    var minimum = things[0]
    
    for ix in 1..<things.count {
        if things[ix] < minimum {
            minimum = things[ix]
        }
    }
    
    return minimum
}