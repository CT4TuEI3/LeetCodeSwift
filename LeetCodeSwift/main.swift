//
//  main.swift
//  LeetCodeSwift
//
//  Created by CT4TuEI3 on 12.09.2023.
//


import Foundation

final class Solution {
    
    // 2352. Equal Row and Column Pairs
    
    func equalPairs(_ grid: [[Int]]) -> Int {
        let n = grid.count
        var rowDict = [String: Int]()
        
        // Создаем хэш-таблицу для строк
        for row in grid {
            let key = row.map { String($0) }.joined(separator: ",")
            rowDict[key] = (rowDict[key] ?? 0) + 1
        }
        
        var colDict = [String: Int]()
        
        // Создаем хэш-таблицу для столбцов
        for j in 0..<n {
            var column = [Int]()
            for i in 0..<n {
                column.append(grid[i][j])
            }
            let key = column.map { String($0) }.joined(separator: ",")
            colDict[key] = (colDict[key] ?? 0) + 1
        }
        
        // Подсчитываем количество совпадающих пар
        var result = 0
        for (key, count) in rowDict {
            result += count * (colDict[key] ?? 0)
        }
        
        return result
    }
}

let test = Solution()

print(test.equalPairs([[3,2,1],[1,7,6],[2,7,7]]))
