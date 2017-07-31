import Foundation

// Bubble Sort - The function works by evaluating pairs of values. Once compared,
// the position of the largest value is swapped with the smaller value. Completed
// enough times, this "bubbling" effect eventually sorts all elements in the list.

extension Array where Element: Comparable {
    func bubbleSort() -> Array<Element> {
        guard self.count > 1 else {
            return self
        }
        
        var output: Array<Element> = self
        
        for primaryIndex in 0..<self.count {
            let passes = (output.count - 1) - primaryIndex
            print("Log: passes = \(passes)")
            
            for secondaryIndex in 0..<passes {
                print("Log: \tsecondaryIndex is \(secondaryIndex)")
                let key = output[secondaryIndex]
                print("Log: \tkey is \(output[secondaryIndex])")
                print("Log: \toutput[\(secondaryIndex + 1)] is \(output[secondaryIndex + 1])")
                
                // compare / swap positions
                if (key > output[secondaryIndex + 1]) {
                    print("Log:\t\(key) > \(output[secondaryIndex + 1]) true")
                    print("Log:\t swapping position for index \(secondaryIndex) and index \(secondaryIndex + 1)")
                    swap(&output[secondaryIndex], &output[secondaryIndex + 1])
                    print("Log:\t after swap, output[\(secondaryIndex)] is \(output[secondaryIndex]), output[\(secondaryIndex + 1)] is \(output[secondaryIndex + 1])")
                }
                
                print("Log:\t\(key) <= \(output[secondaryIndex + 1]), continue with next index")
            }
            
            print("Log: \(output)")
        }
        
        return output
    }
}

let numberList: Array<Int> = [8, 2, 10, 9, 11, 1, 7, 3, 4]
let results: Array<Int> = numberList.bubbleSort()
print(results)

/*
 
 Log: passes = 8
 Log: 	secondaryIndex is 0
 Log: 	key is 8
 Log: 	output[1] is 2
 Log:	8 > 2 true
 Log:	 swapping position for index 0 and index 1
 Log:	 after swap, output[0] is 2, output[1] is 8
 Log:	8 <= 8, continue with next index
 Log: 	secondaryIndex is 1
 Log: 	key is 8
 Log: 	output[2] is 10
 Log:	8 <= 10, continue with next index
 Log: 	secondaryIndex is 2
 Log: 	key is 10
 Log: 	output[3] is 9
 Log:	10 > 9 true
 Log:	 swapping position for index 2 and index 3
 Log:	 after swap, output[2] is 9, output[3] is 10
 Log:	10 <= 10, continue with next index
 Log: 	secondaryIndex is 3
 Log: 	key is 10
 Log: 	output[4] is 11
 Log:	10 <= 11, continue with next index
 Log: 	secondaryIndex is 4
 Log: 	key is 11
 Log: 	output[5] is 1
 Log:	11 > 1 true
 Log:	 swapping position for index 4 and index 5
 Log:	 after swap, output[4] is 1, output[5] is 11
 Log:	11 <= 11, continue with next index
 Log: 	secondaryIndex is 5
 Log: 	key is 11
 Log: 	output[6] is 7
 Log:	11 > 7 true
 Log:	 swapping position for index 5 and index 6
 Log:	 after swap, output[5] is 7, output[6] is 11
 Log:	11 <= 11, continue with next index
 Log: 	secondaryIndex is 6
 Log: 	key is 11
 Log: 	output[7] is 3
 Log:	11 > 3 true
 Log:	 swapping position for index 6 and index 7
 Log:	 after swap, output[6] is 3, output[7] is 11
 Log:	11 <= 11, continue with next index
 Log: 	secondaryIndex is 7
 Log: 	key is 11
 Log: 	output[8] is 4
 Log:	11 > 4 true
 Log:	 swapping position for index 7 and index 8
 Log:	 after swap, output[7] is 4, output[8] is 11
 Log:	11 <= 11, continue with next index
 Log: [2, 8, 9, 10, 1, 7, 3, 4, 11]
 Log: passes = 7
 Log: 	secondaryIndex is 0
 Log: 	key is 2
 Log: 	output[1] is 8
 Log:	2 <= 8, continue with next index
 Log: 	secondaryIndex is 1
 Log: 	key is 8
 Log: 	output[2] is 9
 Log:	8 <= 9, continue with next index
 Log: 	secondaryIndex is 2
 Log: 	key is 9
 Log: 	output[3] is 10
 Log:	9 <= 10, continue with next index
 Log: 	secondaryIndex is 3
 Log: 	key is 10
 Log: 	output[4] is 1
 Log:	10 > 1 true
 Log:	 swapping position for index 3 and index 4
 Log:	 after swap, output[3] is 1, output[4] is 10
 Log:	10 <= 10, continue with next index
 Log: 	secondaryIndex is 4
 Log: 	key is 10
 Log: 	output[5] is 7
 Log:	10 > 7 true
 Log:	 swapping position for index 4 and index 5
 Log:	 after swap, output[4] is 7, output[5] is 10
 Log:	10 <= 10, continue with next index
 Log: 	secondaryIndex is 5
 Log: 	key is 10
 Log: 	output[6] is 3
 Log:	10 > 3 true
 Log:	 swapping position for index 5 and index 6
 Log:	 after swap, output[5] is 3, output[6] is 10
 Log:	10 <= 10, continue with next index
 Log: 	secondaryIndex is 6
 Log: 	key is 10
 Log: 	output[7] is 4
 Log:	10 > 4 true
 Log:	 swapping position for index 6 and index 7
 Log:	 after swap, output[6] is 4, output[7] is 10
 Log:	10 <= 10, continue with next index
 Log: [2, 8, 9, 1, 7, 3, 4, 10, 11]
 Log: passes = 6
 Log: 	secondaryIndex is 0
 Log: 	key is 2
 Log: 	output[1] is 8
 Log:	2 <= 8, continue with next index
 Log: 	secondaryIndex is 1
 Log: 	key is 8
 Log: 	output[2] is 9
 Log:	8 <= 9, continue with next index
 Log: 	secondaryIndex is 2
 Log: 	key is 9
 Log: 	output[3] is 1
 Log:	9 > 1 true
 Log:	 swapping position for index 2 and index 3
 Log:	 after swap, output[2] is 1, output[3] is 9
 Log:	9 <= 9, continue with next index
 Log: 	secondaryIndex is 3
 Log: 	key is 9
 Log: 	output[4] is 7
 Log:	9 > 7 true
 Log:	 swapping position for index 3 and index 4
 Log:	 after swap, output[3] is 7, output[4] is 9
 Log:	9 <= 9, continue with next index
 Log: 	secondaryIndex is 4
 Log: 	key is 9
 Log: 	output[5] is 3
 Log:	9 > 3 true
 Log:	 swapping position for index 4 and index 5
 Log:	 after swap, output[4] is 3, output[5] is 9
 Log:	9 <= 9, continue with next index
 Log: 	secondaryIndex is 5
 Log: 	key is 9
 Log: 	output[6] is 4
 Log:	9 > 4 true
 Log:	 swapping position for index 5 and index 6
 Log:	 after swap, output[5] is 4, output[6] is 9
 Log:	9 <= 9, continue with next index
 Log: [2, 8, 1, 7, 3, 4, 9, 10, 11]
 Log: passes = 5
 Log: 	secondaryIndex is 0
 Log: 	key is 2
 Log: 	output[1] is 8
 Log:	2 <= 8, continue with next index
 Log: 	secondaryIndex is 1
 Log: 	key is 8
 Log: 	output[2] is 1
 Log:	8 > 1 true
 Log:	 swapping position for index 1 and index 2
 Log:	 after swap, output[1] is 1, output[2] is 8
 Log:	8 <= 8, continue with next index
 Log: 	secondaryIndex is 2
 Log: 	key is 8
 Log: 	output[3] is 7
 Log:	8 > 7 true
 Log:	 swapping position for index 2 and index 3
 Log:	 after swap, output[2] is 7, output[3] is 8
 Log:	8 <= 8, continue with next index
 Log: 	secondaryIndex is 3
 Log: 	key is 8
 Log: 	output[4] is 3
 Log:	8 > 3 true
 Log:	 swapping position for index 3 and index 4
 Log:	 after swap, output[3] is 3, output[4] is 8
 Log:	8 <= 8, continue with next index
 Log: 	secondaryIndex is 4
 Log: 	key is 8
 Log: 	output[5] is 4
 Log:	8 > 4 true
 Log:	 swapping position for index 4 and index 5
 Log:	 after swap, output[4] is 4, output[5] is 8
 Log:	8 <= 8, continue with next index
 Log: [2, 1, 7, 3, 4, 8, 9, 10, 11]
 Log: passes = 4
 Log: 	secondaryIndex is 0
 Log: 	key is 2
 Log: 	output[1] is 1
 Log:	2 > 1 true
 Log:	 swapping position for index 0 and index 1
 Log:	 after swap, output[0] is 1, output[1] is 2
 Log:	2 <= 2, continue with next index
 Log: 	secondaryIndex is 1
 Log: 	key is 2
 Log: 	output[2] is 7
 Log:	2 <= 7, continue with next index
 Log: 	secondaryIndex is 2
 Log: 	key is 7
 Log: 	output[3] is 3
 Log:	7 > 3 true
 Log:	 swapping position for index 2 and index 3
 Log:	 after swap, output[2] is 3, output[3] is 7
 Log:	7 <= 7, continue with next index
 Log: 	secondaryIndex is 3
 Log: 	key is 7
 Log: 	output[4] is 4
 Log:	7 > 4 true
 Log:	 swapping position for index 3 and index 4
 Log:	 after swap, output[3] is 4, output[4] is 7
 Log:	7 <= 7, continue with next index
 Log: [1, 2, 3, 4, 7, 8, 9, 10, 11]
 Log: passes = 3
 Log: 	secondaryIndex is 0
 Log: 	key is 1
 Log: 	output[1] is 2
 Log:	1 <= 2, continue with next index
 Log: 	secondaryIndex is 1
 Log: 	key is 2
 Log: 	output[2] is 3
 Log:	2 <= 3, continue with next index
 Log: 	secondaryIndex is 2
 Log: 	key is 3
 Log: 	output[3] is 4
 Log:	3 <= 4, continue with next index
 Log: [1, 2, 3, 4, 7, 8, 9, 10, 11]
 Log: passes = 2
 Log: 	secondaryIndex is 0
 Log: 	key is 1
 Log: 	output[1] is 2
 Log:	1 <= 2, continue with next index
 Log: 	secondaryIndex is 1
 Log: 	key is 2
 Log: 	output[2] is 3
 Log:	2 <= 3, continue with next index
 Log: [1, 2, 3, 4, 7, 8, 9, 10, 11]
 Log: passes = 1
 Log: 	secondaryIndex is 0
 Log: 	key is 1
 Log: 	output[1] is 2
 Log:	1 <= 2, continue with next index
 Log: [1, 2, 3, 4, 7, 8, 9, 10, 11]
 Log: passes = 0
 Log: [1, 2, 3, 4, 7, 8, 9, 10, 11]
 [1, 2, 3, 4, 7, 8, 9, 10, 11]
 
 */
