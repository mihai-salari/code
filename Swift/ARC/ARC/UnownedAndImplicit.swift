/*
 
 Third scenario - which both properties should always have a value, and neither
 property should be nil once initialization is complete. In this scenario, it's
 useful to combine an unowned property on one class with an implicit unwrapped
 optional property on the other class.
 
 This enables both properties to be accessed directly (without optional unwrapping)
 once initialization is complete, while still avoiding a reference cycle.
 
 */

import Foundation

class Country {
    let name: String
    var capitalCity: City!
    
    init(name: String, capitalName: String) {
        self.name = name
        self.capitalCity = City(name: capitalName, country: self)
        
        print("\(#file): country \(name) is being initialized with capital city \(capitalCity.name)")
    }
    
    deinit {
        print("\(#file): country \(name) is being deinitialized")
    }
}

class City {
    let name: String
    unowned let country: Country
    
    init(name: String, country: Country) {
        self.name = name
        self.country = country
        
        print("\(#file): city \(name) is being initialized for \(country.name)")
    }
    
    deinit {
        print("\(#file): city \(name) is being deinitialized")
    }
}
