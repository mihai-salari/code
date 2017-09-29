import Cocoa

protocol Vehicle {
    func accelerate()
    func stop()
}

protocol WheeledVehicle: Vehicle {
    var numberOfWheels: Int { get }
    var wheelSize: Double { get set }
}

class Bike: WheeledVehicle {
    var numberOfWheels: Int = 2
    var wheelSize: Double = 18.0
    
    func accelerate() {
        print("accelerating...")
    }
    
    func stop() {
        print("stop...")
    }
}
