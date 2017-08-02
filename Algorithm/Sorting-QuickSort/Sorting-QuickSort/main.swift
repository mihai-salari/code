import Foundation

extension Array where Element: Comparable {
    mutating func quickSort() -> Array<Element> {
        func qSort(start startIndex: Int, _ pivot: Int) {
            if (startIndex < pivot) {
                let iPivot = qPartition(start: startIndex, pivot)
                qSort(start: startIndex, iPivot - 1)
                qSort(start: iPivot + 1, pivot)
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
            print("current is: \(self[currentIndex]), pivot is: \(self[pivot])")
            print(self)
            
            if self[currentIndex] <= self[pivot] {
                if wallIndex != currentIndex {
                    swap(&self[currentIndex], &self[wallIndex])
                    print("swapping > \(self)")
                }
                
                // advance wall
                wallIndex += 1
            }
        }
        
        // move pivot to final position
        if wallIndex != pivot {
            swap(&self[wallIndex], &self[pivot])
            print("swapping > \(self)")
        }
        
        return wallIndex
    }
}

// execute sort
var sequence: Array<Int> = [7, 2, 1, 6, 8, 5, 3, 4]
let results = sequence.quickSort()
print(results)

/*
 
 current is: 7, pivot is: 4
 [7, 2, 1, 6, 8, 5, 3, 4]
 current is: 2, pivot is: 4
 [7, 2, 1, 6, 8, 5, 3, 4]
 swapping > [2, 7, 1, 6, 8, 5, 3, 4]
 current is: 1, pivot is: 4
 [2, 7, 1, 6, 8, 5, 3, 4]
 swapping > [2, 1, 7, 6, 8, 5, 3, 4]
 current is: 6, pivot is: 4
 [2, 1, 7, 6, 8, 5, 3, 4]
 current is: 8, pivot is: 4
 [2, 1, 7, 6, 8, 5, 3, 4]
 current is: 5, pivot is: 4
 [2, 1, 7, 6, 8, 5, 3, 4]
 current is: 3, pivot is: 4
 [2, 1, 7, 6, 8, 5, 3, 4]
 swapping > [2, 1, 3, 6, 8, 5, 7, 4]
 swapping > [2, 1, 3, 4, 8, 5, 7, 6]
 current is: 2, pivot is: 3
 [2, 1, 3, 4, 8, 5, 7, 6]
 current is: 1, pivot is: 3
 [2, 1, 3, 4, 8, 5, 7, 6]
 current is: 2, pivot is: 1
 [2, 1, 3, 4, 8, 5, 7, 6]
 swapping > [1, 2, 3, 4, 8, 5, 7, 6]
 current is: 8, pivot is: 6
 [1, 2, 3, 4, 8, 5, 7, 6]
 current is: 5, pivot is: 6
 [1, 2, 3, 4, 8, 5, 7, 6]
 swapping > [1, 2, 3, 4, 5, 8, 7, 6]
 current is: 7, pivot is: 6
 [1, 2, 3, 4, 5, 8, 7, 6]
 swapping > [1, 2, 3, 4, 5, 6, 7, 8]
 current is: 7, pivot is: 8
 [1, 2, 3, 4, 5, 6, 7, 8]
 [1, 2, 3, 4, 5, 6, 7, 8]
 Program ended with exit code: 0
 
 */
