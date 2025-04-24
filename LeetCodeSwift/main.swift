//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

final class Solution {
    
    // 1207. Unique Number of Occurrences
    
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var frequencyDict = [Int: Int]()
        
        for num in arr {
            frequencyDict[num] = (frequencyDict[num] ?? 0) + 1
        }
        
        var frequencySet = Set<Int>()
        for (_, count) in frequencyDict {
            if frequencySet.contains(count) {
                return false
            }
            frequencySet.insert(count)
        }
        
        return true
    }
}

let test = Solution()

print(test.uniqueOccurrences([1,2,2,1,1,3]))
