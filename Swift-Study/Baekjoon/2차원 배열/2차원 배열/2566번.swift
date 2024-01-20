//
//  2566번.swift
//  2차원 배열
//
//  Created by 장지수 on 2023/04/26.
//
//
//import Foundation
//
//let n = 9
//let m = 9
//var result :[[Int]] = []
//var max = 0
//var index1 = 0
//var index2 = 0
//for _ in 0..<n {
//    result.append(readLine()!.split(separator: " ").map{ Int($0)! })
//}
//for i in 0..<n {
//    for j in 0..<m {
//        if result[i][j] > max {
//            max = result[i][j]
//            index1 = i
//            index2 = j
//        }
//    }
//}
//print(max)
//print(index1+1,index2+1)
