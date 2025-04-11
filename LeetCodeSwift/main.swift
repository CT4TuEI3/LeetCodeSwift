//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

final class Solution {
    
    // 392. Is Subsequence
    
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        let sArray = Array(s)
        let tArray = Array(t)
        var i = 0
        var j = 0
        
        while i < sArray.count && j < tArray.count {
            if sArray[i] == tArray[j] {
                i += 1
            }
            j += 1
        }
        
        return i == sArray.count
    }
}

let test = Solution()

print(test.isSubsequence("ahbgdc", "daasddsa"))
