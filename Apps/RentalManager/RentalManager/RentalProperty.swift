import Foundation

enum PropertyType {
    case apartment
    case bungalow
    case condominium
    case flat
    case linkedHouse
    case townHouse
    case villa
}

class RentalProperty: NSObject {
    var address: String
    var type: PropertyType
    var weeklyRentalPrice: Double
    
    init(address: String, type: PropertyType, weeklyRentalPrice: Double) {
        self.address = address
        self.type = type
        self.weeklyRentalPrice = weeklyRentalPrice
        
        super.init()
    }
}
