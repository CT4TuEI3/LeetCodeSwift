//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

final class Solution {
    
    // 1534. Count Good Triplets
    
    func countGoodTriplets(_ arr: [Int], _ a: Int, _ b: Int, _ c: Int) -> Int {
        var count = 0
        let n = arr.count
        
        for i in 0..<n {
            for j in i+1..<n {
                for k in j+1..<n {
                    let condition1 = abs(arr[i] - arr[j]) <= a
                    let condition2 = abs(arr[j] - arr[k]) <= b
                    let condition3 = abs(arr[i] - arr[k]) <= c
                    
                    if condition1 && condition2 && condition3 {
                        count += 1
                    }
                }
            }
        }
        
        return count
    }
}

let test = Solution()

print(test.countGoodTriplets([1,8,6,2,5,4,8,3,7], 7, 0, 3))
