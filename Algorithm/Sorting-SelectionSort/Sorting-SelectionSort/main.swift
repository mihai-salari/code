import Foundation

// Selection Sort - The selection sort algorithm ranks elements by iterating
// through a collection and swaps elements based on their value. The set is
// divided into sorted and unsorted halves and repeats until all elements are
// sorted.

extension Array where Element: Comparable {
    func selectionSort() -> Array<Element> {
        guard self.count > 1 else {
            return self
        }
        
        var output: Array<Element> = self
        
        for primaryIndex in 0..<output.count {
            print("for-loop: primaryIndex = \(primaryIndex)")
            
            var minimum = primaryIndex
            print("for-loop: minimum index = \(minimum)")
            
            var secondaryIndex = primaryIndex + 1
            
            while secondaryIndex < output.count {
                print("\twhile-loop: secondaryIndex = \(secondaryIndex)")
                
                print("\twhile-loop: output[\(minimum)] is \(output[minimum])")
                print("\twhile-loop: output[\(secondaryIndex)) is \(output[secondaryIndex])")
                
                // store lowest value as minimum
                if output[minimum] > output[secondaryIndex] {
                    print("\twhile-loop: output[\(minimum)] > output[\(secondaryIndex)] is true")
                    print("\twhile-loop: set minimum = secondaryIndex")
                    minimum = secondaryIndex
                } else {
                    print("\twhile-loop: output[\(minimum)] > output[\(secondaryIndex)] is false")
                }
                
                secondaryIndex += 1
            }
            
            // swap minimum array with array iteration
            print("for-loop: primaryIndex is \(primaryIndex)")
            print("for-loop: minimum is \(minimum)")
            if primaryIndex != minimum {
                print("for-loop: primaryIndex != minimum")
                print("for-loop: output[\(primaryIndex)] = \(output[primaryIndex])")
                print("for-loop: output[\(minimum)] = \(output[minimum])")
                print("for-loop: swapping value of primaryIndex and minimum")
                swap(&output[primaryIndex], &output[minimum])
                print("for-loop: output[\(primaryIndex)] = \(output[primaryIndex])")
                print("for-loop: output[\(minimum)] = \(output[minimum])")
            }
            
            print("for-loop: output is \(output)")
        }
        
        return output
    }
}

let numberList: Array<Int> = [8, 2, 10, 9, 11, 1, 7, 3, 4]
let results: Array<Int> = numberList.selectionSort()
print(results)

/*
 
 for-loop: primaryIndex = 0
 for-loop: minimum index = 0
	while-loop: secondaryIndex = 1
	while-loop: output[0] is 8
	while-loop: output[1) is 2
	while-loop: output[0] > output[1] is true
	while-loop: set minimum = secondaryIndex
	while-loop: secondaryIndex = 2
	while-loop: output[1] is 2
	while-loop: output[2) is 10
	while-loop: output[1] > output[2] is false
	while-loop: secondaryIndex = 3
	while-loop: output[1] is 2
	while-loop: output[3) is 9
	while-loop: output[1] > output[3] is false
	while-loop: secondaryIndex = 4
	while-loop: output[1] is 2
	while-loop: output[4) is 11
	while-loop: output[1] > output[4] is false
	while-loop: secondaryIndex = 5
	while-loop: output[1] is 2
	while-loop: output[5) is 1
	while-loop: output[1] > output[5] is true
	while-loop: set minimum = secondaryIndex
	while-loop: secondaryIndex = 6
	while-loop: output[5] is 1
	while-loop: output[6) is 7
	while-loop: output[5] > output[6] is false
	while-loop: secondaryIndex = 7
	while-loop: output[5] is 1
	while-loop: output[7) is 3
	while-loop: output[5] > output[7] is false
	while-loop: secondaryIndex = 8
	while-loop: output[5] is 1
	while-loop: output[8) is 4
	while-loop: output[5] > output[8] is false
 for-loop: primaryIndex is 0
 for-loop: minimum is 5
 for-loop: primaryIndex != minimum
 for-loop: output[0] = 8
 for-loop: output[5] = 1
 for-loop: swapping value of primaryIndex and minimum
 for-loop: output[0] = 1
 for-loop: output[5] = 8
 for-loop: output is [1, 2, 10, 9, 11, 8, 7, 3, 4]
 for-loop: primaryIndex = 1
 for-loop: minimum index = 1
	while-loop: secondaryIndex = 2
	while-loop: output[1] is 2
	while-loop: output[2) is 10
	while-loop: output[1] > output[2] is false
	while-loop: secondaryIndex = 3
	while-loop: output[1] is 2
	while-loop: output[3) is 9
	while-loop: output[1] > output[3] is false
	while-loop: secondaryIndex = 4
	while-loop: output[1] is 2
	while-loop: output[4) is 11
	while-loop: output[1] > output[4] is false
	while-loop: secondaryIndex = 5
	while-loop: output[1] is 2
	while-loop: output[5) is 8
	while-loop: output[1] > output[5] is false
	while-loop: secondaryIndex = 6
	while-loop: output[1] is 2
	while-loop: output[6) is 7
	while-loop: output[1] > output[6] is false
	while-loop: secondaryIndex = 7
	while-loop: output[1] is 2
	while-loop: output[7) is 3
	while-loop: output[1] > output[7] is false
	while-loop: secondaryIndex = 8
	while-loop: output[1] is 2
	while-loop: output[8) is 4
	while-loop: output[1] > output[8] is false
 for-loop: primaryIndex is 1
 for-loop: minimum is 1
 for-loop: output is [1, 2, 10, 9, 11, 8, 7, 3, 4]
 for-loop: primaryIndex = 2
 for-loop: minimum index = 2
	while-loop: secondaryIndex = 3
	while-loop: output[2] is 10
	while-loop: output[3) is 9
	while-loop: output[2] > output[3] is true
	while-loop: set minimum = secondaryIndex
	while-loop: secondaryIndex = 4
	while-loop: output[3] is 9
	while-loop: output[4) is 11
	while-loop: output[3] > output[4] is false
	while-loop: secondaryIndex = 5
	while-loop: output[3] is 9
	while-loop: output[5) is 8
	while-loop: output[3] > output[5] is true
	while-loop: set minimum = secondaryIndex
	while-loop: secondaryIndex = 6
	while-loop: output[5] is 8
	while-loop: output[6) is 7
	while-loop: output[5] > output[6] is true
	while-loop: set minimum = secondaryIndex
	while-loop: secondaryIndex = 7
	while-loop: output[6] is 7
	while-loop: output[7) is 3
	while-loop: output[6] > output[7] is true
	while-loop: set minimum = secondaryIndex
	while-loop: secondaryIndex = 8
	while-loop: output[7] is 3
	while-loop: output[8) is 4
	while-loop: output[7] > output[8] is false
 for-loop: primaryIndex is 2
 for-loop: minimum is 7
 for-loop: primaryIndex != minimum
 for-loop: output[2] = 10
 for-loop: output[7] = 3
 for-loop: swapping value of primaryIndex and minimum
 for-loop: output[2] = 3
 for-loop: output[7] = 10
 for-loop: output is [1, 2, 3, 9, 11, 8, 7, 10, 4]
 for-loop: primaryIndex = 3
 for-loop: minimum index = 3
	while-loop: secondaryIndex = 4
	while-loop: output[3] is 9
	while-loop: output[4) is 11
	while-loop: output[3] > output[4] is false
	while-loop: secondaryIndex = 5
	while-loop: output[3] is 9
	while-loop: output[5) is 8
	while-loop: output[3] > output[5] is true
	while-loop: set minimum = secondaryIndex
	while-loop: secondaryIndex = 6
	while-loop: output[5] is 8
	while-loop: output[6) is 7
	while-loop: output[5] > output[6] is true
	while-loop: set minimum = secondaryIndex
	while-loop: secondaryIndex = 7
	while-loop: output[6] is 7
	while-loop: output[7) is 10
	while-loop: output[6] > output[7] is false
	while-loop: secondaryIndex = 8
	while-loop: output[6] is 7
	while-loop: output[8) is 4
	while-loop: output[6] > output[8] is true
	while-loop: set minimum = secondaryIndex
 for-loop: primaryIndex is 3
 for-loop: minimum is 8
 for-loop: primaryIndex != minimum
 for-loop: output[3] = 9
 for-loop: output[8] = 4
 for-loop: swapping value of primaryIndex and minimum
 for-loop: output[3] = 4
 for-loop: output[8] = 9
 for-loop: output is [1, 2, 3, 4, 11, 8, 7, 10, 9]
 for-loop: primaryIndex = 4
 for-loop: minimum index = 4
	while-loop: secondaryIndex = 5
	while-loop: output[4] is 11
	while-loop: output[5) is 8
	while-loop: output[4] > output[5] is true
	while-loop: set minimum = secondaryIndex
	while-loop: secondaryIndex = 6
	while-loop: output[5] is 8
	while-loop: output[6) is 7
	while-loop: output[5] > output[6] is true
	while-loop: set minimum = secondaryIndex
	while-loop: secondaryIndex = 7
	while-loop: output[6] is 7
	while-loop: output[7) is 10
	while-loop: output[6] > output[7] is false
	while-loop: secondaryIndex = 8
	while-loop: output[6] is 7
	while-loop: output[8) is 9
	while-loop: output[6] > output[8] is false
 for-loop: primaryIndex is 4
 for-loop: minimum is 6
 for-loop: primaryIndex != minimum
 for-loop: output[4] = 11
 for-loop: output[6] = 7
 for-loop: swapping value of primaryIndex and minimum
 for-loop: output[4] = 7
 for-loop: output[6] = 11
 for-loop: output is [1, 2, 3, 4, 7, 8, 11, 10, 9]
 for-loop: primaryIndex = 5
 for-loop: minimum index = 5
	while-loop: secondaryIndex = 6
	while-loop: output[5] is 8
	while-loop: output[6) is 11
	while-loop: output[5] > output[6] is false
	while-loop: secondaryIndex = 7
	while-loop: output[5] is 8
	while-loop: output[7) is 10
	while-loop: output[5] > output[7] is false
	while-loop: secondaryIndex = 8
	while-loop: output[5] is 8
	while-loop: output[8) is 9
	while-loop: output[5] > output[8] is false
 for-loop: primaryIndex is 5
 for-loop: minimum is 5
 for-loop: output is [1, 2, 3, 4, 7, 8, 11, 10, 9]
 for-loop: primaryIndex = 6
 for-loop: minimum index = 6
	while-loop: secondaryIndex = 7
	while-loop: output[6] is 11
	while-loop: output[7) is 10
	while-loop: output[6] > output[7] is true
	while-loop: set minimum = secondaryIndex
	while-loop: secondaryIndex = 8
	while-loop: output[7] is 10
	while-loop: output[8) is 9
	while-loop: output[7] > output[8] is true
	while-loop: set minimum = secondaryIndex
 for-loop: primaryIndex is 6
 for-loop: minimum is 8
 for-loop: primaryIndex != minimum
 for-loop: output[6] = 11
 for-loop: output[8] = 9
 for-loop: swapping value of primaryIndex and minimum
 for-loop: output[6] = 9
 for-loop: output[8] = 11
 for-loop: output is [1, 2, 3, 4, 7, 8, 9, 10, 11]
 for-loop: primaryIndex = 7
 for-loop: minimum index = 7
	while-loop: secondaryIndex = 8
	while-loop: output[7] is 10
	while-loop: output[8) is 11
	while-loop: output[7] > output[8] is false
 for-loop: primaryIndex is 7
 for-loop: minimum is 7
 for-loop: output is [1, 2, 3, 4, 7, 8, 9, 10, 11]
 for-loop: primaryIndex = 8
 for-loop: minimum index = 8
 for-loop: primaryIndex is 8
 for-loop: minimum is 8
 for-loop: output is [1, 2, 3, 4, 7, 8, 9, 10, 11]
 [1, 2, 3, 4, 7, 8, 9, 10, 11]
 Program ended with exit code: 0
 
 */
