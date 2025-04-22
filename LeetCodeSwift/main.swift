//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

final class Solution {
    
    // 724. Find Pivot Index
    
    func pivotIndex(_ nums: [Int]) -> Int {
        let totalSum = nums.reduce(0, +)
        var leftSum = 0
        
        for (index, num) in nums.enumerated() {
            let rightSum = totalSum - leftSum - num
            if leftSum == rightSum {
                return index
            }
            leftSum += num
        }
        
        return -1
    }
}

let test = Solution()

print(test.pivotIndex([1,7,3,6,5,6]))
