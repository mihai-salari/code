import Foundation

// Logarithmic Time - Binary search, with this method, we apply our knowledge
// about the data to help reduce our search criteria.

extension Array where Element: Comparable {
    mutating func binarySearch(forElement key: Element) -> Bool {
        var result = false
        
        // establish indices
        let min = self.startIndex
        let max = self.endIndex - 1
        let mid = self.midIndex()
        
        // check bounds
        if key > self[max] || key < self[min] {
            print("search value \(key) not found.")
            return false
        }
        
        // evaluate chosen number
        let n = self[mid]
        
        print(String(describing: n) + " value attempted...")
        
        if n > key {
            var slice = Array(self[min...mid - 1])
            result = slice.binarySearch(forElement: key)
        } else if n < key {
            var slice = Array(self[mid + 1...max])
            result = slice.binarySearch(forElement: key)
        } else {
            print("search value \(key) found.")
            result = true
        }
        
        return result
    }
    
    func midIndex() -> Index {
        return startIndex + (count / 2)
    }
}

var numberList: Array<Int> = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

let isFound: Bool = numberList.binarySearch(forElement: 9)
print(isFound)
