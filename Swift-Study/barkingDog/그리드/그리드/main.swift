//
//  main.swift
//  그리드
//
//  Created by 장지수 on 2023/07/25.
//

import Foundation

// 11047번

//let input = readLine()!.split(separator: " ").map{Int($0)!}
//let n = input[0]
//var total = input[1]
//var coinArray : [Int] = []
//var result = 0
//for i in 0..<n {
//    let coin = Int(readLine()!)!
//    coinArray.append(coin)
//}
//
//for i in 0..<n {
//    result += total / coinArray[n-1-i]
//    total %= coinArray[n-i-1]
//}
//print(result)

// 1931번

//let n = Int(readLine()!)!
//var array = [[Int]]()
//
//for _ in 0..<n {
//    let input = readLine()!.split(separator: " ").map{Int($0)!}
//    array.append(input)
//}
//func greed(array : [[Int]]) -> Int {
//    var sortArray = array
//    sortArray.sort{ return $0[0] < $1[0]}
//    sortArray.sort{ return $0[1] < $1[1]}
//    var check = 0
//    var time = 0
//    for i in sortArray {
//        let start = i[0]
//        let end = i[1]
//
//        if start >= time {
//            check += 1
//            time = end
//        }
//    }
//    return check
//}
//print(greed(array: array))

// 2217번

//let n = Int(readLine()!)!
//var array = [Int]()
//for i in 0..<n {
//    let input = Int(readLine()!)!
//    array.append(input)
//}
//
//func greed( array: [Int]) -> Int {
//    var sortArray = array
//    sortArray.sort(by: >)
//    var ans = 0
//    for i in 0..<n {
//        ans = max(ans, sortArray[i] * (i+1))
//    }
//    return ans
//}
//print(greed(array: array))


// 1026번

//let n = Int(readLine()!)!
//
//var array1 = readLine()!.split(separator: " ").map{Int($0)!}
//var array2 = readLine()!.split(separator: " ").map{Int($0)!}
//var result = 0
//array1.sort(by: >)
//array2.sort()
//
//for i in 0..<n {
//   result += array1[i] * array2[i]
//}
//print(result)

//11399번

//let n = Int(readLine()!)!
//var re = n
//var input = readLine()!.split(separator: " ").map{Int($0)!}
//var result = 0
//
//input.sort()
//
//for i in 0..<n {
//    result += input[i] * re
//    re -= 1
//}
//print(result)
//

// 1541번

//let input = readLine()!.split(separator: "-")
//var result = 0
//
//for i in input[0].split(separator: "+") {
//    result += Int(i)!
//}
//
//for i in input[1...] {
//    for j in i.split(separator: "+") {
//        result -= Int(j)!
//    }
//}
//print(result)

// 13305번

let n = Int(readLine()!)!
let distance = readLine()!.split(separator: " ").map{Int($0)!}
let price = readLine()!.split(separator: " ").map{Int($0)!}
var result = 0
var minValue = price[0]

for i in 0..<n-1 {
    if minValue > price[i] {
        minValue = price[i]
    }
    result += minValue * distance[i]
}
print(result)
