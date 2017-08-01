import Cocoa

// extend Swift built-in Array type to give it a shuffle method
extension Array {
    mutating func shuffle() {
        for i in (0..<self.count).reversed() {
            let ix1 = i
            let ix2 = Int(arc4random_uniform(UInt32(i+1)))
            
            (self[ix1], self[ix2]) = (self[ix2], self[ix1])
        }
    }
}

var myArray1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(myArray1)
myArray1.shuffle()
print(myArray1)

// extend Cocoa CGRect to has a center point property
extension CGRect {
    var center: CGPoint {
        return CGPoint(x: self.midX, y: self.midY)
    }
}

// extension can declare a static or class member, since an object type is usually globally available, this can be a good way to slot a global function into an appropriate namespace
extension NSColor {
    class var myGolden: NSColor {
        return self.init(red: 1.000, green: 0.894, blue: 0.541, alpha: 0.900)
    }
}

let myGolderColor = NSColor.myGolden

// use exte xnsion for each protocol adopted
class MyClass {
    
}

extension MyClass: CustomStringConvertible {
    // ...
}

extension MyClass: Equatable {
    // ....
}