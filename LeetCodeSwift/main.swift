//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

struct Solution {
    
    // 412. Fizz Buzz
    
    func fizzBuzz(_ n: Int) -> [String] {
        var answer: [String] = []
        for i in 1...n {
            if i % 3 == 0 && i % 5 == 0 {
                answer.append("FizzBuzz")
            } else if i % 3 == 0 {
                answer.append("Fizz")
            } else if i % 5 == 0 {
                answer.append("Buzz")
            } else {
                answer.append(String(i))
            }
        }
        return answer
    }
}

let test = Solution()
print(test.fizzBuzz(15))
