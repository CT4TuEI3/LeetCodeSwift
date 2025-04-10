//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

final class Solution {
    
    // 283. Move Zeroes
    
    func moveZeroes(_ nums: inout [Int]) {
        var nonZeroIndex = 0
        
        for i in 0..<nums.count {
            if nums[i] != 0 {
                nums.swapAt(nonZeroIndex, i)
                nonZeroIndex += 1
            }
        }
    }
}

let test = Solution()

var numbers = [0, 1, 0, 3, 12]
print(test.moveZeroes(&numbers))
