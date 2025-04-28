//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

final class Solution {
    
    // 2390. Removing Stars From a String
    
    func removeStars(_ s: String) -> String {
        var stack = [Character]()
        
        for char in s {
            if char == "*" {
                // Удаляем последний добавленный символ (ближайший слева от звезды)
                if !stack.isEmpty {
                    stack.removeLast()
                }
            } else {
                // Добавляем обычный символ в стек
                stack.append(char)
            }
        }
        
        return String(stack)
    }
}

let test = Solution()

print(test.removeStars("leet**cod*e"))
