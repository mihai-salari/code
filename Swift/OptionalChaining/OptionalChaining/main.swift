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

// MARK: - Multilevel optional chaining

let mark = PersonWithHouse()

let houseAddress = Address()
houseAddress.buildingNumber = "18"
houseAddress.street = "Acacia Road"

if let roomCount = mark.house?.numberOfRooms {
    print("Mark's house has \(roomCount) rooms.")
} else {
    print("Unable to retrieve the number of rooms.")
}

// If you call method on an optional value with optional chaining, the method's
// return type will be Void?.
if mark.house?.printNumberOfRooms() != nil {
    print("It was possible to print the number of rooms.")
} else {
    print("It was not possible to print the number of rooms.")
}

// Any attemp to set a property through optional chaining returns a value of
// type Void?, which enables you to compare against nil to see if the property
// was set successfully.
if (mark.house?.address = houseAddress) != nil {
    print("It was possible to set the address.")
} else {
    print("It was not possible to set the addresss.")
}

// You can use optional chaining to try to retrieve and set a value from a
// subscript on an optional value, and to check whether that subscript call is
// successful.
if let firstRoomName = mark.house?[0].name {
    print("The first room name is \(firstRoomName).")
} else {
    print("Unable to retrieve the first room name.")
}

let markHouse = House()
markHouse.rooms.append(Room(name: "Living Room"))
markHouse.rooms.append(Room(name: "Kitchen"))
mark.house = markHouse

if let firstRoomName = mark.house?[0].name {
    print("The first room name is \(firstRoomName).")
} else {
    print("Unable to retrieve the first room name.")
}

// Multilevels of chaining

if let markStreet = mark.house?.address?.street {
    print("Mark's street name is \(markStreet).")
} else {
    print("Unable to retrieve address.")
}

mark.house?.address = houseAddress

if let markStreet = mark.house?.address?.street {
    print("Mark's street name is \(markStreet).")
} else {
    print("Unable to retrieve address.")
}

// Multilevers of chaining on method with optional return value

if let beginsWithThe = mark.house?.address?.buildingIdentifier()?.hasPrefix("The") {
    if beginsWithThe {
        print("Mark's house begin with The.")
    } else {
        print("Mark's house not begin with The.")
    }
}

// Accessing subscripts of optional type
if let value = persons["Dave"]?[0] {
    print("Value is \(value).")
} else {
    print("Unable to retrieve value.")
}
