//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

final class Solution {
    
    // 1657. Determine if Two Strings Are Close
    
    func closeStrings(_ word1: String, _ word2: String) -> Bool {
        if word1.count != word2.count {
            return false
        }
        
        let word1Array = Array(word1)
        let word2Array = Array(word2)
        
        var freq1 = [Character: Int]()
        var freq2 = [Character: Int]()
        
        for char in word1Array {
            freq1[char] = (freq1[char] ?? 0) + 1
        }
        
        for char in word2Array {
            freq2[char] = (freq2[char] ?? 0) + 1
        }
        
        if Set(freq1.keys) != Set(freq2.keys) {
            return false
        }
        
        let sortedFreq1 = freq1.values.sorted()
        let sortedFreq2 = freq2.values.sorted()
        
        return sortedFreq1 == sortedFreq2
    }
}

let test = Solution()

print(test.closeStrings("abc", "bca"))
