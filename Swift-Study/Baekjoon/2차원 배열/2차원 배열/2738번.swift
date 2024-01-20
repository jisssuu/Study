//
//  main.swift
//  2차원 배열
//
//  Created by 장지수 on 2023/04/26.
//
//
//import Foundation
//
//let input = readLine()!.split(separator: " ").map{ Int($0)! }
//let n = input[0]
//let m = input[1]
//var A : [[Int]] = []
//var B : [[Int]] = []
//var result : [[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)
//
//for _ in 0..<n {
//    A.append(readLine()!.split(separator: " ").map{ Int($0)! })
//}
//for _ in 0..<n {
//    B.append(readLine()!.split(separator: " ").map{ Int($0)! })
//}
//for i in 0..<n {
//    for j in 0..<m {
//        result[i][j] = A[i][j] + B[i][j]
//    }
//}
//for i in 0..<n {
//    result[i].forEach{print($0,terminator: " ")}
//    print()
//}
