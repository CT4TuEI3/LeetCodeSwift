//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

final class Solution {
    
    // 443. String Compression
    
    func compress(_ chars: inout [Character]) -> Int {
        guard !chars.isEmpty else { return 0 }
        
        var writeIndex = 0
        var readIndex = 0
        let n = chars.count
        
        while readIndex < n {
            let currentChar = chars[readIndex]
            var count = 0
            
            // Считаем количество повторений текущего символа
            while readIndex < n && chars[readIndex] == currentChar {
                readIndex += 1
                count += 1
            }
            
            // Записываем символ
            chars[writeIndex] = currentChar
            writeIndex += 1
            
            // Если повторений больше 1, записываем цифры количества
            if count > 1 {
                for digit in String(count) {
                    chars[writeIndex] = digit
                    writeIndex += 1
                }
            }
        }
        
        return writeIndex
    }
}

let test = Solution()

var chars: [Character] = ["a","a","b","b","c","c","c"]
print(test.compress(&chars))
