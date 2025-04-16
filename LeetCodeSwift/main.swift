//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

final class Solution {
    
    // 1679. Max Number of K-Sum Pairs
    
    func maxOperations(_ nums: [Int], _ k: Int) -> Int {
        var frequency = [Int: Int]()
        for num in nums {
            frequency[num] = (frequency[num] ?? 0) + 1
        }
        
        var result = 0
        var visited = Set<Int>()
        
        for num in frequency.keys {
            if visited.contains(num) {
                continue
            }
            let complement = k - num
            if complement == num {
                result += frequency[num]! / 2
                visited.insert(num)
            } else {
                if let compFreq = frequency[complement] {
                    result += min(frequency[num]!, compFreq)
                    visited.insert(num)
                    visited.insert(complement)
                }
            }
        }
        
        return result
    }
}

let test = Solution()

print(test.maxOperations([1,8,6,2,5,4,8,3,7], 7))
