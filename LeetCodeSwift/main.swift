//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

final class Solution {
    
    // 11. Container With Most Water
    
    func maxArea(_ height: [Int]) -> Int {
        var maxWater = 0
        var left = 0
        var right = height.count - 1
        
        while left < right {
            let currentHeight = min(height[left], height[right])
            let currentWidth = right - left
            let currentArea = currentHeight * currentWidth
            
            maxWater = max(maxWater, currentArea)
            
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        
        return maxWater
    }
}

let test = Solution()

print(test.maxArea([1,8,6,2,5,4,8,3,7]))
