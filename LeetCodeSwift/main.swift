//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

struct Solution {
    
    // 1431. Kids With the Greatest Number of Candies
    
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        guard let maxCandies = candies.max() else { return [] }
        return candies.map { $0 + extraCandies >= maxCandies }
    }
}

let test = Solution()
print(test.kidsWithCandies([2,3,5,1,3], 3))
