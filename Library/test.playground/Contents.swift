import Cocoa

func leastCommonMultiple(of numbers: Int...) -> Int {
    var numbers = numbers
    numbers = numbers.sorted()
    
    let largest = numbers[numbers.count-1]
    
    numbers.remove(at: numbers.count - 1)

    var n = 0
    var leastCommonMultiple = 0
    var found: Bool = false
    
    while !found {
        n += 1
        leastCommonMultiple = largest * n
        
        for number in numbers {
            if leastCommonMultiple % number != 0 {
                found = false
            } else {
                found = true
            }
        }
    }
    
    return leastCommonMultiple
}

print(leastCommonMultiple(of: 2, 9, 4, 3, 1))
