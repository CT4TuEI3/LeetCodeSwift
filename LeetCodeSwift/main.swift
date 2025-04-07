//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

final class Solution {
    
    // 238. Product of Array Except Self
    
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        guard !nums.isEmpty else { return [] }
        let n = nums.count
        var answer = [Int](repeating: 1, count: n)
        
        // Вычисляем произведения элементов слева
        for i in 1..<n {
            answer[i] = answer[i - 1] * nums[i - 1]
        }
        
        var rightProduct = 1
        // Обновляем ответ, умножая на произведения справа
        for i in (0..<n).reversed() {
            answer[i] *= rightProduct
            rightProduct *= nums[i]
        }
        
        return answer
    }
}

let test = Solution()
print(test.productExceptSelf([1,2,3,4]))
