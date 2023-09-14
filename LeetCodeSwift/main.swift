//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

struct Solution {
    
    // 26. Remove Duplicates from Sorted Array
    
    func removeDuplicates(nums: inout [Int]) -> Int {
        var arr = [Int]()
        let maxValue = nums.max() ?? 0
        for i in nums.indices {
            if arr.contains(nums[i]) {
                nums[i] = 10000
            } else {
                arr.append(nums[i])
            }
        }
        nums = nums.filter({ $0 <= maxValue })
        return arr.count
    }
}

let test = Solution()
var arr = [0,0,1,1,1,2,2,3,3,4]
print(test.removeDuplicates(nums: &arr))
