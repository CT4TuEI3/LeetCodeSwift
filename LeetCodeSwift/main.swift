//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

final class Solution {
    
    // 1732. Find the Highest Altitude
    
    func largestAltitude(_ gain: [Int]) -> Int {
        var currentAltitude = 0
        var maxAltitude = 0
        
        for change in gain {
            currentAltitude += change
            if currentAltitude > maxAltitude {
                maxAltitude = currentAltitude
            }
        }
        
        return maxAltitude
    }
}

let test = Solution()

print(test.largestAltitude([-5,1,5,0,-7]))
