//
//  2563번.swift
//  2차원 배열
//
//  Created by 장지수 on 2023/05/01.
//

import Foundation

let n = Int(readLine()!)!
var result : [[Int]] = Array(repeating: Array(repeating: 0, count: 100), count: 100)
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let x = input[0]
    let y = input[1]
    
    for i in x..<x+10 {
        for j in y..<y+10 {
            result[i][j] = 1
        }
    }
}
print(result.flatMap { $0 }.filter { $0 == 1 }.count)
