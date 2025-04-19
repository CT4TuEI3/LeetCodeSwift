//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

final class Solution {
    
    // 1004. Max Consecutive Ones III
    
    func longestOnes(_ nums: [Int], _ k: Int) -> Int {
        var left = 0
        var maxLength = 0
        var zeroCount = 0
        
        for right in 0..<nums.count {
            if nums[right] == 0 {
                zeroCount += 1
            }
            
            while zeroCount > k {
                if nums[left] == 0 {
                    zeroCount -= 1
                }
                left += 1
            }
            
            maxLength = max(maxLength, right - left + 1)
        }
        
        return maxLength
    }
}

let test = Solution()

print(test.longestOnes([1,1,1,0,0,0,1,1,1,1,0], 3))
