import Foundation

struct Rectangle {
    let width: Int
    let height: Int
    let color: String
}

let view = Rectangle(width: 15, height: 60, color: "Green")

switch view {
case _ where view.height < 50:
    print("View shorter than 50 units")
case _ where view.width > 20:
    print("View at least 50 tall, and more than 20 wide")
case _ where view.color == "Green":
    print("View at least 50 tall, at most 20 wide, and green")
default:
    print("This view can't be described")
}

// You could write this code as a chain of if statements. By using the switch
// statement, it is clear that each condition is a case. Notice that each case
// uses an underscore with a qualifying where clause.
