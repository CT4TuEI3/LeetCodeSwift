//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

struct Solution {
    
    // 1071. Greatest Common Divisor of Strings
    
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        func gcd(_ a: Int, _ b: Int) -> Int {
            var a = a
            var b = b
            while b != 0 {
                let temp = b
                b = a % b
                a = temp
            }
            return a
        }

        guard str1 + str2 == str2 + str1 else {
            return ""
        }
        
        let gcdLength = gcd(str1.count, str2.count)
        
        return String(str1.prefix(gcdLength))
    }
}

let test = Solution()
print(test.gcdOfStrings("ABCABC", "ABC"))
