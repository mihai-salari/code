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
    // sort the array
    var nums = nums
    nums = nums.sorted()
    
    var tmpNums = nums
    let first = tmpNums[0]
    var result = [Int]()
    
    for n in 1...tmpNums.count-1 {
        if (first + tmpNums[n]) == target {
            print("found!")
            result.append(first)
            result.append(tmpNums[n])
            
            break
        }
    }
    
    // no match found, call the function with reduced numbers    
    return twoSum(Array(nums.dropFirst(1)), target)

}

print(twoSum([9, 3, 1, -10, -2], 1))
