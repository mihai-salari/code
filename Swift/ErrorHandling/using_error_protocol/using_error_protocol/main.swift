import Foundation

enum BakeryError: Error {
    case tooFew(numberOnHand: Int)
    case doNotSell
    case wrongFlavor
}

class Pastry {
    let flavor: String
    var numberOnHand: Int
    
    init(flavor: String, numberOnHand: Int) {
        self.flavor = flavor
        self.numberOnHand = numberOnHand
    }
}

class Bakery {
    var itemsForSale = [
        "Cookie": Pastry(flavor: "ChocolateChip", numberOnHand: 20),
        "PopTart": Pastry(flavor: "WildBerry", numberOnHand: 13),
        "Donut": Pastry(flavor: "Sprinkles", numberOnHand: 24),
        "HandPie": Pastry(flavor: "Cherry", numberOnHand: 6)
    ]
    
    func orderPastry(item: String, amountRequested: Int, flavor: String) throws -> Int {
        guard let pastry = itemsForSale[item] else {
            throw BakeryError.doNotSell
        }
        
        guard flavor == pastry.flavor else {
            throw BakeryError.wrongFlavor
        }
        
        guard amountRequested < pastry.numberOnHand else {
            throw BakeryError.tooFew(numberOnHand: pastry.numberOnHand)
        }
        
        pastry.numberOnHand -= amountRequested
        
        return pastry.numberOnHand
    }
}

let bakery = Bakery()

// With do-catch block

do {
    try bakery.orderPastry(item: "Albatross", amountRequested: 1, flavor: "AlbatrossWithWafer")
} catch BakeryError.doNotSell {
    print("Sorry, we don't sell this item")
} catch BakeryError.wrongFlavor {
    print("Sorry, the flavor requested is not available")
} catch BakeryError.tooFew {
    print("Sorry, we don't have enough ordered item")
}

// With try?

let remaining = try? bakery.orderPastry(item: "Albatross", amountRequested: 1, flavor: "AlbatrossWithWafer")

if (remaining != nil) {
    print("remaining is not nil")
} else {
    print("remaining is nil")
}

// We cannot failed, if failed then well just crash!

do {
    try bakery.orderPastry(item: "Albatross", amountRequested: 1, flavor: "AlbatrossWithWafer")
} catch {
    fatalError("An error is encountered")
}

try! try bakery.orderPastry(item: "Albatross", amountRequested: 1, flavor: "AlbatrossWithWafer")
