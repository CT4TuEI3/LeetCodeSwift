//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

class Solution {
    
    // 345. Reverse Vowels of a String
    
    func reverseVowels(_ s: String) -> String {
        let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
        var chars = Array(s)
        var left = 0
        var right = chars.count - 1
        
        while left < right {
            // Поиск гласной слева
            while left < right && !vowels.contains(Character(String(chars[left]).lowercased())) {
                left += 1
            }
            // Поиск гласной справа
            while left < right && !vowels.contains(Character(String(chars[right]).lowercased())) {
                right -= 1
            }
            // Обмен символов
            if left < right {
                chars.swapAt(left, right)
                left += 1
                right -= 1
            }
        }
        
        return String(chars)
    }
}

let test = Solution()
print(test.reverseVowels("leetcode"))
