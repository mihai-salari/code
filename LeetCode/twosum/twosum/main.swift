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
    
    print("tmpNums = \(tmpNums)")
    print("first = \(tmpNums[0])")
    print("result = \(result)")
    
    func r(_ nums: [Int], _ target: Int, _ result: inout [Int]) {
        let tmpNums = nums
        let first = tmpNums[0]
        
        print("tmpNums = \(tmpNums)")
        print("first = \(first)")
        print("tmpNums.count - 1 = \(tmpNums.count - 1)")
        
        if (tmpNums.count - 1 == 0) { // only one element left, no need to go further
            return
        } else {
            for n in 1...tmpNums.count-1 {
                if (first + tmpNums[n]) == target {
                    print("found!")
                    result.append(first)
                    result.append(tmpNums[n])
                    
                    break
                }
            }
        }
        
        r(Array(nums.dropFirst(1)), target, &result)
    }
    
    r(nums, target, &result)
    
    let x = nums.index(of: result[0])
    let y = nums.index(of: result[1])
    
    let answer = [x!, y!]
    
    return answer
}

print(twoSum([9, 3, 1, -10, -2], 4))

/*
 
 var result: [Int] = [-1, -1]
 var found: Bool = false
 let numsSize = nums.count
 
 var i = 0
 while i < nums.count {
 result[0] = i
 
 var j = i + 1
 while j < numsSize {
 if nums[i] + nums[j] == target {
 result[1] = j
 
 found = true
 
 return result
 }
 
 j += 1
 }
 
 i += 1
 }
 
 if !found {
 result = [-1, -1] // No match
 }
 
 return result
 }
 
 */
