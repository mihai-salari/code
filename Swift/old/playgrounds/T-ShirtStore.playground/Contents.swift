//: Playground - noun: a place where people can play

import Cocoa

struct TShirt {
    var size: Int
    var color: NSColor
    var price: Double
    var image: NSImage?
}

struct Address {
    var name: String
    var street: String
    var city: String
    var zip: String
}

class User {
    var name: String
    var email: String
    var cart: ShoppingCart
    
    init(name: String, email: String, cart: ShoppingCart) {
        self.name = name
        self.email = email
        self.cart = cart
    }
}

class ShoppingCart {
    var carts: [TShirt]
    var user: User
    var shippingAddress: Address
    
    init(carts: [TShirt], user: User, shippingAddress: Address) {
        self.carts = carts
        self.user = user
        self.shippingAddress = shippingAddress
    }
    
    func calculateTotalCost() {
        print("I don't how to calculate yet")
    }
}