//
//  main.swift
//  DP
//
//  Created by 장지수 on 2023/06/01.
//

import Foundation

// 1463번

//let n = Int(readLine()!)!
//
//var array = Array(repeating: 0, count: 1000005)
//
//for i in 2..<array.count {
//    array[i] = array[i-1] + 1
//
//    if i % 2 == 0 {
//        array[i] = min(array[i/2]+1,array[i])
//    }
//    if i % 3 == 0 {
//        array[i] = min(array[i/3] + 1, array[i])
//    }
//}
//
//print(array[n])

// 9095번

//var array = Array(repeating: 0, count: 20)
//var result : [Int] = []
//array[1] = 1
//array[2] = 2
//array[3] = 4
//
//for i in 4..<array.count {
//    array[i] = array[i-1] + array[i-2] + array[i-3]
//}
//let n = Int(readLine()!)!
//
//for _ in 0..<n {
//    let input = Int(readLine()!)!
//    result.append(array[input])
//}
//result.forEach{print($0)}

// 2579번
//
//let n = Int(readLine()!)!
//var stairs = [Int]()
//var dp = Array(repeating: 0, count: n+1)
//
//for _ in 0..<n {
//    let input = Int(readLine()!)!
//    stairs.append(input)
//}
//
//dp[1] = stairs[0]
//if n >= 2 {
//    dp[2] = stairs[0] + stairs[1]
//}
//
//for i in 3...n {
//    dp[i] = max(dp[i-2], dp[i-3] + stairs[i-2]) + stairs[i-1]
//}
//
//print(dp[n])

// 1149번

//let n = Int(readLine()!)!
//var array = Array(repeating: Array(repeating: 0, count: 3), count: n+1)
//var point = Array(repeating: Array(repeating: 0, count: 3), count: n+1)
//for i in 1...n {
//    let input = readLine()!.split(separator: " ").map{Int($0)!}
//    point[i][0] = input[0]
//    point[i][1] = input[1]
//    point[i][2] = input[2]
//}
//array[1][0] = point[1][0]
//array[1][1] = point[1][1]
//array[1][2] = point[1][2]
//
//for i in 2...n {
//    array[i][0] = min(array[i-1][1], array[i-1][2]) + point[i][0]
//    array[i][1] = min(array[i-1][0], array[i-1][2]) + point[i][1]
//    array[i][2] = min(array[i-1][0], array[i-1][1]) + point[i][2]
//}
//var result = min(array[n][0], array[n][1], array[n][2])
//print(result)

// 11726번

//let n = Int(readLine()!)!
//var array = Array(repeating: 0, count: 1001)
//
//array[1] = 1
//array[2] = 2
//
//if n == 1 {
//    print(array[1])
//} else if n == 2{
//    print(array[2])
//} else {
//    for i in 3...n {
//        array[i] = (array[i-1] + array[i-2]) % 10007
//    }
//    print(array[n])
//}

// 11659번

//let input = readLine()!.split(separator: " ").map{Int($0)!}
//let n = input[0]
//let m = input[1]
//var result : [Int] = []
//var array = Array(repeating: 0, count: 100001)
//
//var num = readLine()!.split(separator: " ").map{Int($0)!}
//
//array[1] = num[0]
//
//for i in 2...num.count {
//    array[i] = array[i-1] + num[i-1]
//}
//
//for _ in 0..<m {
//    var input1 = readLine()!.split(separator: " ").map{Int($0)!}
//    var i = input1[0]
//    var j = input1[1]
//    var res = array[j] - array[i-1]
//    result.append(res)
//}
//result.forEach{print($0)}

// 12852번

//let n = Int(readLine()!)!
//
//var array = Array(repeating: 0, count: 1000001)
//var pre = Array(repeating: 0, count: 10000001)
//var result : [Int] = []
//array[1] = 0
//if n == 1 {
//    print(array[1])
//    print(1)
//}
//else {
//    for i in 2...n {
//        array[i] = array[i-1] + 1
//        pre[i] = i - 1
//        if i % 3 == 0 && array[i] > array[i/3] + 1{
//            array[i] = array[i/3] + 1
//            pre[i] = i/3
//        }
//        if i % 2 == 0 && array[i] > array[i/2] + 1{
//            array[i] = array[i/2] + 1
//            pre[i] = i/2
//        }
//    }
//    var res = n
//    while true {
//        result.append(res)
//        if res == 1 {
//            break
//        }
//        res = pre[res]
//    }
//    print(array[n])
//    result.forEach{print($0,terminator: " ")}
//}
