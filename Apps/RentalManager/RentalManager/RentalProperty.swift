import Foundation

class RentalProperty: NSObject {
    @objc enum PropertyType: Int {
        case apartment
        case bungalow
        case condominium
        case flat
        case linkedHouse
        case townHouse
        case villa
        case unknown
    }

    var address: String
    var type: PropertyType
    var weeklyRentalPrice: Double
    
    init(address: String, type: PropertyType, weeklyRentalPrice: Double) {
        self.address = address
        self.type = type
        self.weeklyRentalPrice = weeklyRentalPrice
        
        super.init()
    }
    
    convenience init(address: String) {
        let address: String = address
        let type: PropertyType = .unknown
        let weeklyRentalPrice: Double = 0.0
        
        self.init(address: address, type: type, weeklyRentalPrice: weeklyRentalPrice)
    }
    
    convenience init(type: PropertyType) {
        let address: String = "test"
        let type: PropertyType = type
        let weeklyRentalPrice: Double = 120.0
        
        self.init(address: address, type: type, weeklyRentalPrice: weeklyRentalPrice)
    }
    
    convenience init(weeklyRentalPrice: Double) {
        let address: String = "unknown"
        let type: PropertyType = .unknown
        let weeklyRentalPrice: Double = weeklyRentalPrice
        
        self.init(address: address, type: type, weeklyRentalPrice: weeklyRentalPrice)
    }
}
