//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

final class Solution {
    
    // 643. Maximum Average Subarray I
    
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        guard nums.count >= k else { return 0 }
        
        var currentSum = 0
        // Вычисляем сумму первого окна
        for i in 0..<k {
            currentSum += nums[i]
        }
        
        var maxSum = currentSum
        
        // Сдвигаем окно и обновляем максимальную сумму
        for i in k..<nums.count {
            currentSum += nums[i] - nums[i - k]
            maxSum = max(maxSum, currentSum)
        }
        
        return Double(maxSum) / Double(k)
    }
}

let test = Solution()

print(test.findMaxAverage([1,8,6,2,5,4,8,3,7], 7))
