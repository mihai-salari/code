import Cocoa

// Any can represent an instance of any type at all, including function types
// AnyObject can represent an instance of any class type

var things = [Any]()

things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159)
things.append("hello")
things.append((1.0, 2.0))
things.append({ (name: String) -> String in "Hello, \(name)" })
