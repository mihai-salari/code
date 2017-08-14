//
// Given an array of integers, return indices of the two numbers such that they
// add up to a specific target.
// 
// You may assume that each input would have exactly one solution, and you may not
// use the same element twice.
//
// Example:
//
// Given nums = [2, 7, 11, 15], target = 9,
//
// Because nums[0] + nums[1] = 2 + 7 = 9,
//
// return [0, 1].
//

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    let tmpNums = nums
    let first = tmpNums[0]
    var result = [Int]()
    var count = 0
    
    func r(_ nums: [Int], _ target: Int, _ result: inout [Int], _ count: inout Int) {
        let tmpNums = nums
        let first = tmpNums[0]
        
        if (tmpNums.count - 1 == 0) { // only one element left, no need to go further
            return
        } else {
            for n in 1...tmpNums.count-1 {
                if (first + tmpNums[n]) == target {
                    print("found!")
                    result.append(count)
                    result.append(count + n)
                    
                    break
                }
            }
        }
        
        count += 1
        
        r(Array(nums.dropFirst(1)), target, &result, &count)
    }
    
    r(nums, target, &result, &count)
    
    return result
}

print(twoSum([9, 3, 1, -10, -2], 4))
print(twoSum([3, 3], 6))
