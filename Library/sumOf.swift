import Foundation

func sum(of numbers: Int...) -> Int {
    var total = 0
	
    for number in numbers {
        total += number
    }
    
    return total
}

print(sum(of: 1, 2, 3, 4, 5))
