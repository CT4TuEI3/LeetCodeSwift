//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

struct Solution {
    
    // 1929. Concatenation of Array
    
    func getConcatenation(_ nums: [Int]) -> [Int] {
        nums + nums
    }
}

let test = Solution()
print(test.getConcatenation([1, 3, 2]))
