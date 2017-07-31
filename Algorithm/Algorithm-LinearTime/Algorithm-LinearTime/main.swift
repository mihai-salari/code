import Foundation

// Linear Time -  A common brute force technique that involves looping
// through the entire array until we find a match.

let numberList: Array<Int> = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

extension Array where Element: Comparable {
    
    // A function like this is said to run in linear time because its speed is
    // dependent on its input size. In other words, the algorithm becomes less
    // efficient as its input size (n) grows.
    func linearSearch(forElement key: Element) -> Bool {
        for number in self {
            if number == key {
                return true
            }
        }
        
        return false
    }
    
}

let isFound: Bool = numberList.linearSearch(forElement: 9)
print(isFound)
