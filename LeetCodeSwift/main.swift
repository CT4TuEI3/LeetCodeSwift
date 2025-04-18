//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

final class Solution {
    
    // 1456. Maximum Number of Vowels in a Substring of Given Length
    
    func maxVowels(_ s: String, _ k: Int) -> Int {
        let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
        let characters = Array(s)
        var currentVowels = 0
        var maxVowels = 0
        
        for i in 0..<k {
            if vowels.contains(characters[i]) {
                currentVowels += 1
            }
        }
        maxVowels = currentVowels
        
        for i in k..<characters.count {
            if vowels.contains(characters[i - k]) {
                currentVowels -= 1
            }
            if vowels.contains(characters[i]) {
                currentVowels += 1
            }
            maxVowels = max(maxVowels, currentVowels)
        }
        
        return maxVowels
    }
}

let test = Solution()

print(test.maxVowels("abciiidef", 3))
