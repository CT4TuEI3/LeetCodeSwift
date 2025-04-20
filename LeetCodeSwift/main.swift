//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

final class Solution {
    
    // 1493. Longest Subarray of 1's After Deleting One Element
    
    func longestSubarray(_ nums: [Int]) -> Int {
        var left = 0
        var lastZero = -1
        var maxLength = 0
        
        for i in 0..<nums.count {
            if nums[i] == 0 {
                if lastZero != -1 {
                    left = lastZero + 1
                }
                lastZero = i
            }
            let currentLength = i - left + 1
            maxLength = max(maxLength, currentLength - 1)
        }
        return maxLength
    }
}

let test = Solution()

print(test.longestSubarray([1,1,1,0,0,0,1,1,1,1,0]))
