import Foundation

/*
    Quick Sort - features a time complexity of 0(n log n) and applies a divide
    and conquer strategy.
 
    Quick sort applies a series of rules to "swap" pairs of values. Swap events
    are performed in place so no additional structures are needed to process data.
 
 */

extension Array where Element: Comparable {
    mutating func quickSort() -> Array<Element> {
        func qSort(start startIndex: Int, _ pivot: Int) {
            if (startIndex < pivot) {
                let iPivot = qPartition(start: startIndex, pivot)
                qSort(start: startIndex, iPivot - 1) // left side
                qSort(start: iPivot + 1, pivot) // right side
            }
        }
        
        qSort(start: 0, self.endIndex - 1)
        
        return self
    }
    
    // sort selected pivot
    mutating func qPartition(start startIndex: Int, _ pivot: Int) -> Int {
        var wallIndex: Int = startIndex
        
        // compare range with pivot
        for currentIndex in wallIndex..<pivot {
            print(self)
            print("current is: \(self[currentIndex]), wallIndex is: \(wallIndex), pivot is: \(self[pivot])")
            
            if self[currentIndex] <= self[pivot] {
                print("==> \(self[currentIndex]) <= \(self[pivot])")
                
                if wallIndex != currentIndex {
                    print("==> wallIndex (\(wallIndex)) != currentIndex (\(currentIndex))")
                    print("==> swapping \(self[currentIndex]) with \(self[wallIndex])")
                    swap(&self[currentIndex], &self[wallIndex])
                    print("==> array after swapped: \(self)")
                }
                
                // advance wall
                wallIndex += 1
            }
        }
        
        // current index meet pivot, prepare to swap wall with pivot
        print("==> wallIndex is: \(wallIndex), current and pivot is: \(self[pivot])")
        
        // move pivot to final position
        if wallIndex != pivot {
            print("==> wallIndex != pivot")
            print("==> swapping \(self[wallIndex]) with \(self[pivot])")
            swap(&self[wallIndex], &self[pivot])
            print("==> array after swapped: \(self)")
        }
        
        return wallIndex
    }
}

// execute sort
var sequence: Array<Int> = [7, 2, 1, 6, 8, 5, 3, 4]
let results = sequence.quickSort()
print(results)

/*
 
 [7, 2, 1, 6, 8, 5, 3, 4]
 current is: 7, wallIndex is: 0, pivot is: 4
 [7, 2, 1, 6, 8, 5, 3, 4]
 current is: 2, wallIndex is: 0, pivot is: 4
 ==> 2 <= 4
 ==> wallIndex (0) != currentIndex (1)
 ==> swapping 2 with 7
 ==> array after swapped: [2, 7, 1, 6, 8, 5, 3, 4]
 [2, 7, 1, 6, 8, 5, 3, 4]
 current is: 1, wallIndex is: 1, pivot is: 4
 ==> 1 <= 4
 ==> wallIndex (1) != currentIndex (2)
 ==> swapping 1 with 7
 ==> array after swapped: [2, 1, 7, 6, 8, 5, 3, 4]
 [2, 1, 7, 6, 8, 5, 3, 4]
 current is: 6, wallIndex is: 2, pivot is: 4
 [2, 1, 7, 6, 8, 5, 3, 4]
 current is: 8, wallIndex is: 2, pivot is: 4
 [2, 1, 7, 6, 8, 5, 3, 4]
 current is: 5, wallIndex is: 2, pivot is: 4
 [2, 1, 7, 6, 8, 5, 3, 4]
 current is: 3, wallIndex is: 2, pivot is: 4
 ==> 3 <= 4
 ==> wallIndex (2) != currentIndex (6)
 ==> swapping 3 with 7
 ==> array after swapped: [2, 1, 3, 6, 8, 5, 7, 4]
 ==> wallIndex is: 3, current and pivot is: 4
 ==> wallIndex != pivot
 ==> swapping 6 with 4
 ==> array after swapped: [2, 1, 3, 4, 8, 5, 7, 6]
 [2, 1, 3, 4, 8, 5, 7, 6]
 current is: 2, wallIndex is: 0, pivot is: 3
 ==> 2 <= 3
 [2, 1, 3, 4, 8, 5, 7, 6]
 current is: 1, wallIndex is: 1, pivot is: 3
 ==> 1 <= 3
 ==> wallIndex is: 2, current and pivot is: 3
 [2, 1, 3, 4, 8, 5, 7, 6]
 current is: 2, wallIndex is: 0, pivot is: 1
 ==> wallIndex is: 0, current and pivot is: 1
 ==> wallIndex != pivot
 ==> swapping 2 with 1
 ==> array after swapped: [1, 2, 3, 4, 8, 5, 7, 6]
 [1, 2, 3, 4, 8, 5, 7, 6]
 current is: 8, wallIndex is: 4, pivot is: 6
 [1, 2, 3, 4, 8, 5, 7, 6]
 current is: 5, wallIndex is: 4, pivot is: 6
 ==> 5 <= 6
 ==> wallIndex (4) != currentIndex (5)
 ==> swapping 5 with 8
 ==> array after swapped: [1, 2, 3, 4, 5, 8, 7, 6]
 [1, 2, 3, 4, 5, 8, 7, 6]
 current is: 7, wallIndex is: 5, pivot is: 6
 ==> wallIndex is: 5, current and pivot is: 6
 ==> wallIndex != pivot
 ==> swapping 8 with 6
 ==> array after swapped: [1, 2, 3, 4, 5, 6, 7, 8]
 [1, 2, 3, 4, 5, 6, 7, 8]
 current is: 7, wallIndex is: 6, pivot is: 8
 ==> 7 <= 8
 ==> wallIndex is: 7, current and pivot is: 8
 [1, 2, 3, 4, 5, 6, 7, 8]
 Program ended with exit code: 0
 
 */
