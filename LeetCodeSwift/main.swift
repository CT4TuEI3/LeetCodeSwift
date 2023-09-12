//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

struct Solution {
    
    // 704. Binary Search
    
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            let mid = (left + right) / 2
            let midValue = nums[mid]
            
            if midValue == target {
                return mid
            }
            if midValue < target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        return -1
    }
}

let test = Solution()
print(test.search([-1, 0, 3, 5, 9, 12], 9))
