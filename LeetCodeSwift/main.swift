//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

struct Solution {
    
    // 1768. Merge Strings Alternately
    
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var result = ""
        let word1Chars = Array(word1)
        let word2Chars = Array(word2)
        let maxLength = max(word1Chars.count, word2Chars.count)
        
        for i in 0 ..< maxLength {
            if i < word1Chars.count {
                result.append(word1Chars[i])
            }
            if i < word2Chars.count {
                result.append(word2Chars[i])
            }
        }
        
        return result
    }
}

let test = Solution()
print(test.mergeAlternately("a   b   c", "    p   q   r"))
