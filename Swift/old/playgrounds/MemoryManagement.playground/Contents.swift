//: Playground - noun: a place where people can play

import Cocoa

// Strong reference cycle

class Person: CustomStringConvertible {
    let name: String
    
    let accountant = Accountant()
    
    var assets = [Asset]()
    
    var description: String {
        return "Person(\(name))"
    }
    
    init(name: String) {
        self.name = name
        
        accountant.netWorthChangedHandler = {
            [weak self] netWorth in
            
            self?.netWorthDidChange(to: netWorth)
            
            return
        }
    }
    
    deinit {
        print("\(self) is being deallocated")
    }
    
    func takeOwnership(of asset: Asset) {
        //asset.owner = self
        //assets.append(asset)
        accountant.gained(asset) {
            asset.owner = self
            assets.append(asset)
        }
    }
    
    func giveAwayOwnership(of asset: Asset) {
        asset.owner = nil
    }
    
    func netWorthDidChange(to netWorth: Double) {
        print("The net worth of \(self) is now \(netWorth)")
    }
    
    func useNetWorthChangedHandler(handler: @escaping (Double) -> Void) {
        accountant.netWorthChangedHandler = handler
    }
}

var bob: Person? = Person(name: "Bob")
print("created \(bob)")

//bob = nil
//print("The bob variable is now \(bob)")

class Asset: CustomStringConvertible {
    let name: String
    let value: Double
    weak var owner: Person?
    
    var description: String {
        if let owner = owner {
            return "Asset(\(name), worth \(value), owned by \(owner))"
        } else {
            return "Asset(\(name), worth \(value), not owned by anyone)"
        }
    }
    
    init(name: String, value: Double) {
        self.name = name
        self.value = value
    }
    
    deinit {
        print("\(self) is being deallocated")
    }
}

class Accountant {
    typealias NetWorthChanged = (Double) -> Void
    
    var netWorthChangedHandler: NetWorthChanged? = nil
    
    var netWorth: Double = 0.0 {
        didSet {
            netWorthChangedHandler?(netWorth)
        }
    }
    
    func gained(_ asset: Asset, completion: () -> Void) {
        netWorth += asset.value
        completion()
    }
}


var laptop: Asset? = Asset(name: "MacBook Air", value: 1199)
var iphoneSE: Asset? = Asset(name: "iPhone SE", value: 399)
var iphone7Plus: Asset? = Asset(name: "iPhone 7 Plus", value: 769)

print(laptop)
print(iphoneSE)
print(iphone7Plus)

//laptop = nil
//iphoneSE = nil
//iphone7Plus = nil

bob?.useNetWorthChangedHandler(handler: {
    netWorth in
    print("Bob's net-worth is now \(netWorth).")
})

bob?.takeOwnership(of: laptop!)
bob?.giveAwayOwnership(of: laptop!)
bob?.takeOwnership(of: iphoneSE!)

print(bob)
print(laptop)
print(iphoneSE)
print(iphone7Plus)
print(laptop?.owner)
bob = nil
print(laptop?.owner)
print(bob)

laptop = nil
iphoneSE = nil
iphone7Plus = nil


print(laptop)
print(iphoneSE)
print(iphone7Plus)

