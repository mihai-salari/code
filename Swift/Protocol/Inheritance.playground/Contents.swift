import Cocoa

protocol Vehicle {
    func accelerate()
    func stop()
}

protocol WheeledVehicle: Vehicle {
    var numberOfWheels: Int { get }
    var wheelSize: Double { get set }
}
