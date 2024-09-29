//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

struct Solution {
    
    // 28. Find the Index of the First Occurrence in a String
    
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard haystack.contains(needle) else { return -1 }
        if let range = haystack.firstRange(of: needle) {
            let startIndex = haystack.distance(from: haystack.startIndex, to: range.lowerBound)
            return startIndex
        } else {
            return 0
        }
    }
}

let test = Solution()
print(test.strStr("sadbutsad", "sad"))
