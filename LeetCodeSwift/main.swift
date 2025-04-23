//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

final class Solution {
    
    // 2215. Find the Difference of Two Arrays
    
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        let set1 = Set(nums1)
        let set2 = Set(nums2)
    
        let diff1 = set1.subtracting(set2)
        let diff2 = set2.subtracting(set1)
    
        return [Array(diff1), Array(diff2)]
    }
}

let test = Solution()

print(test.findDifference([2,4,6], [1,2,3]))
