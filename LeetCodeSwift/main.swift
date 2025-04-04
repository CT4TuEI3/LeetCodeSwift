//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

class Solution {
    
    // 605. Can Place Flowers
    
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        if n == 0 {
            return true
        }
        
        var i = 0
        let length = flowerbed.count
        var maxFlowers = 0
        
        while i < length {
            if flowerbed[i] == 0 {
                let start = i
                while i < length && flowerbed[i] == 0 {
                    i += 1
                }
                let end = i - 1
                let L = end - start + 1
                
                let leftOccupied = start > 0 ? (flowerbed[start - 1] == 1) : false
                let rightOccupied = end < length - 1 ? (flowerbed[end + 1] == 1) : false
                
                var count = 0
                if leftOccupied && rightOccupied {
                    count = (L - 1) / 2
                } else if !leftOccupied && !rightOccupied {
                    count = (L + 1) / 2
                } else {
                    count = L / 2
                }
                
                maxFlowers += count
                if maxFlowers >= n {
                    return true
                }
            } else {
                i += 1
            }
        }
        
        return maxFlowers >= n
    }
}
let test = Solution()
print(test.canPlaceFlowers([1,0,0,0,1], 1))
