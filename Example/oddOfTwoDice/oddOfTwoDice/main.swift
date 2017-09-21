import Foundation

var two: Int = 0
var three: Int = 0
var four: Int = 0
var five: Int = 0
var six: Int = 0
var seven: Int = 0
var eight: Int = 0
var nine: Int = 0
var ten: Int = 0
var eleven: Int = 0
var twelve: Int = 0

var diceOne = 1
var result = 0

while diceOne <= 6 {
    var diceTwo = 1
    
    while diceTwo <= 6 {
        result = diceOne + diceTwo
        
        if result == 2 {
            two += 1
        } else if result == 3 {
            three += 1
        } else if result == 4 {
            four += 1
        } else if result == 5 {
            five += 1
        } else if result == 6 {
            six += 1
        } else if result == 7 {
            seven += 1
        } else if result == 8 {
            eight += 1
        } else if result == 9 {
            nine += 1
        } else if result == 10 {
            ten += 1
        } else if result == 11 {
            eleven += 1
        } else if result == 12 {
            twelve += 1
        }
        
        diceTwo += 1
    }
    
    diceOne += 1
}

print("two = \(two)")
print("three = \(three)")
print("four = \(four)")
print("five = \(five)")
print("six = \(six)")
print("seven = \(seven)")
print("eight = \(eight)")
print("nine = \(nine)")
print("ten = \(ten)")
print("evelen = \(eleven)")
print("twelve = \(twelve)")

/*
 
 two = 1
 three = 2
 four = 3
 five = 4
 six = 5
 seven = 6
 eight = 5
 nine = 4
 ten = 3
 evelen = 2
 twelve = 1
 Program ended with exit code: 0
 
 */
