import Foundation

let john = Person()

func testNumberOfProperty() {
    if let numberOfProperty = john.property?.number {
        let propertyString = numberOfProperty > 1 ? "properties" : "property"
        print("John has \(numberOfProperty) \(propertyString).")
    } else {
        print("John has no property.")
    }
}

testNumberOfProperty()

john.property = Property()

testNumberOfProperty()

john.property?.number = 10

testNumberOfProperty()
