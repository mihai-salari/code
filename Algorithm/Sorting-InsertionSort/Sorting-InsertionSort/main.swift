import Foundation

// Insertion Sort ranks elements by iterating through a collection and positions
// elements based on their value. The set is divided into sorted and unsorted
// halves and repeats until all elements are sorted.

extension Array where Element: Comparable {
    func insertionSort() -> Array<Element> {
        // check for trivial case
        guard self.count > 1 else {
            return self
        }
        
        // mutated copy
        var output: Array<Element> = self
        
        for primaryIndex in 0..<output.count {
            print("Log: primaryIndex = \(primaryIndex)")
            
            let key = output[primaryIndex]
            
            print("Log: key is \(key)")
            
            var secondaryIndex = primaryIndex
            
            print("Log: secondaryIndex = \(secondaryIndex)")
            
            print("Log: ===> begin while loop")
            
            while secondaryIndex > -1 {
                print("Log:\toutput[\(secondaryIndex)] = \(output[secondaryIndex])")
                
                if key < output[secondaryIndex] {
                    print("Log:\t\(key) < \(output[secondaryIndex])")
                    print("Log:\tmoving \(key) from index \(secondaryIndex + 1) to index \(secondaryIndex)")
                    // move to correct position
                    output.remove(at: secondaryIndex + 1)
                    output.insert(key, at: secondaryIndex)
                }
                
                print("Log:\t\(key) >= \(output[secondaryIndex]), keep at index \(secondaryIndex)")
                
                secondaryIndex -= 1
            }
            
            print("Log: end while loop <===")
        }
        
        return output
    }
}

let numberList: Array<Int> = [8, 2, 10, 9, 11, 1, 7, 3, 4]
let results: Array<Int> = numberList.insertionSort()
print(results)

/*
 
 Log: primaryIndex = 0
 Log: key is 8
 Log: secondaryIndex = 0
 Log: ===> begin while loop
 Log:	output[0] = 8
 Log:	8 >= 8, keep at index 0
 Log: end while loop <===
 Log: primaryIndex = 1
 Log: key is 2
 Log: secondaryIndex = 1
 Log: ===> begin while loop
 Log:	output[1] = 2
 Log:	2 >= 2, keep at index 1
 Log:	output[0] = 8
 Log:	2 < 8
 Log:	moving 2 from index 1 to index 0
 Log:	2 >= 2, keep at index 0
 Log: end while loop <===
 Log: primaryIndex = 2
 Log: key is 10
 Log: secondaryIndex = 2
 Log: ===> begin while loop
 Log:	output[2] = 10
 Log:	10 >= 10, keep at index 2
 Log:	output[1] = 8
 Log:	10 >= 8, keep at index 1
 Log:	output[0] = 2
 Log:	10 >= 2, keep at index 0
 Log: end while loop <===
 Log: primaryIndex = 3
 Log: key is 9
 Log: secondaryIndex = 3
 Log: ===> begin while loop
 Log:	output[3] = 9
 Log:	9 >= 9, keep at index 3
 Log:	output[2] = 10
 Log:	9 < 10
 Log:	moving 9 from index 3 to index 2
 Log:	9 >= 9, keep at index 2
 Log:	output[1] = 8
 Log:	9 >= 8, keep at index 1
 Log:	output[0] = 2
 Log:	9 >= 2, keep at index 0
 Log: end while loop <===
 Log: primaryIndex = 4
 Log: key is 11
 Log: secondaryIndex = 4
 Log: ===> begin while loop
 Log:	output[4] = 11
 Log:	11 >= 11, keep at index 4
 Log:	output[3] = 10
 Log:	11 >= 10, keep at index 3
 Log:	output[2] = 9
 Log:	11 >= 9, keep at index 2
 Log:	output[1] = 8
 Log:	11 >= 8, keep at index 1
 Log:	output[0] = 2
 Log:	11 >= 2, keep at index 0
 Log: end while loop <===
 Log: primaryIndex = 5
 Log: key is 1
 Log: secondaryIndex = 5
 Log: ===> begin while loop
 Log:	output[5] = 1
 Log:	1 >= 1, keep at index 5
 Log:	output[4] = 11
 Log:	1 < 11
 Log:	moving 1 from index 5 to index 4
 Log:	1 >= 1, keep at index 4
 Log:	output[3] = 10
 Log:	1 < 10
 Log:	moving 1 from index 4 to index 3
 Log:	1 >= 1, keep at index 3
 Log:	output[2] = 9
 Log:	1 < 9
 Log:	moving 1 from index 3 to index 2
 Log:	1 >= 1, keep at index 2
 Log:	output[1] = 8
 Log:	1 < 8
 Log:	moving 1 from index 2 to index 1
 Log:	1 >= 1, keep at index 1
 Log:	output[0] = 2
 Log:	1 < 2
 Log:	moving 1 from index 1 to index 0
 Log:	1 >= 1, keep at index 0
 Log: end while loop <===
 Log: primaryIndex = 6
 Log: key is 7
 Log: secondaryIndex = 6
 Log: ===> begin while loop
 Log:	output[6] = 7
 Log:	7 >= 7, keep at index 6
 Log:	output[5] = 11
 Log:	7 < 11
 Log:	moving 7 from index 6 to index 5
 Log:	7 >= 7, keep at index 5
 Log:	output[4] = 10
 Log:	7 < 10
 Log:	moving 7 from index 5 to index 4
 Log:	7 >= 7, keep at index 4
 Log:	output[3] = 9
 Log:	7 < 9
 Log:	moving 7 from index 4 to index 3
 Log:	7 >= 7, keep at index 3
 Log:	output[2] = 8
 Log:	7 < 8
 Log:	moving 7 from index 3 to index 2
 Log:	7 >= 7, keep at index 2
 Log:	output[1] = 2
 Log:	7 >= 2, keep at index 1
 Log:	output[0] = 1
 Log:	7 >= 1, keep at index 0
 Log: end while loop <===
 Log: primaryIndex = 7
 Log: key is 3
 Log: secondaryIndex = 7
 Log: ===> begin while loop
 Log:	output[7] = 3
 Log:	3 >= 3, keep at index 7
 Log:	output[6] = 11
 Log:	3 < 11
 Log:	moving 3 from index 7 to index 6
 Log:	3 >= 3, keep at index 6
 Log:	output[5] = 10
 Log:	3 < 10
 Log:	moving 3 from index 6 to index 5
 Log:	3 >= 3, keep at index 5
 Log:	output[4] = 9
 Log:	3 < 9
 Log:	moving 3 from index 5 to index 4
 Log:	3 >= 3, keep at index 4
 Log:	output[3] = 8
 Log:	3 < 8
 Log:	moving 3 from index 4 to index 3
 Log:	3 >= 3, keep at index 3
 Log:	output[2] = 7
 Log:	3 < 7
 Log:	moving 3 from index 3 to index 2
 Log:	3 >= 3, keep at index 2
 Log:	output[1] = 2
 Log:	3 >= 2, keep at index 1
 Log:	output[0] = 1
 Log:	3 >= 1, keep at index 0
 Log: end while loop <===
 Log: primaryIndex = 8
 Log: key is 4
 Log: secondaryIndex = 8
 Log: ===> begin while loop
 Log:	output[8] = 4
 Log:	4 >= 4, keep at index 8
 Log:	output[7] = 11
 Log:	4 < 11
 Log:	moving 4 from index 8 to index 7
 Log:	4 >= 4, keep at index 7
 Log:	output[6] = 10
 Log:	4 < 10
 Log:	moving 4 from index 7 to index 6
 Log:	4 >= 4, keep at index 6
 Log:	output[5] = 9
 Log:	4 < 9
 Log:	moving 4 from index 6 to index 5
 Log:	4 >= 4, keep at index 5
 Log:	output[4] = 8
 Log:	4 < 8
 Log:	moving 4 from index 5 to index 4
 Log:	4 >= 4, keep at index 4
 Log:	output[3] = 7
 Log:	4 < 7
 Log:	moving 4 from index 4 to index 3
 Log:	4 >= 4, keep at index 3
 Log:	output[2] = 3
 Log:	4 >= 3, keep at index 2
 Log:	output[1] = 2
 Log:	4 >= 2, keep at index 1
 Log:	output[0] = 1
 Log:	4 >= 1, keep at index 0
 Log: end while loop <===
 [1, 2, 3, 4, 7, 8, 9, 10, 11]
 
 */
