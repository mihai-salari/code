import Cocoa

// Can only adopted by class object type (not enum, not struct)
// @objc attribute implies it as a class protocol as well, so we don't need to write 'class' if we already 
// define the @objc attribute

protocol CP: class {
    func sayHello()
}

// Also a class protocol
@objc protocol CP2 {
    func sayHello()
}