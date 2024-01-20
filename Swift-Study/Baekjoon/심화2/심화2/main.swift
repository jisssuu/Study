//
//  main.swift
//  심화2
//
//  Created by 장지수 on 2023/06/03.
//

import Foundation

// 1037번

//let n = Int(readLine()!)!
//
//let input = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
//var result = 0
//
//if input.count == 1 {
//    result = input[0] * input[0]
//} else {
//    result = input[0] * input[input.count-1]
//}
//print(result)

// 25192번

//let n = Int(readLine()!)!
//
//var array = Set<String>()
//var num = 0
//var count = 0
//
//for _ in 0..<n {
//    let str = readLine()!
//    if str == "ENTER" {
//        num = 1
//        array = []
//    }
//    else if num == 1 && !array.contains(str){
//        array.insert(str)
//        count += 1
//    }
//}
//print(count)

// 26069번

//let n = Int(readLine()!)!
//var array : [String] = []
//var check = false
//var member : Set<String> = ["ChongChong"]
//
//for _ in 0..<n {
//    let input = readLine()!.split(separator: " ").map{String($0)}
//    if member.contains(input[0]) || member.contains(input[1]){
//        array.append(input[0])
//        array.append(input[1])
//    }
//}
//
//print(member.count)

//let n = Int(readLine()!)!
//var array : [Int] = []
//var sum = 0
//var dict = [Int:Int]()
//
//for _ in 0..<n {
//    let num = Int(readLine()!)!
//    array.append(num)
//    sum += num
//    dict[num,default: 0] += 1
//}
//array.sort()
//
//let avg = Int(round(Double(sum) / Double(n)))
//print(avg)
//let center = array[n/2]
//print(center
//)
//let maxValue = dict.values.max()
//var mode = dict.filter({ $0.value == maxValue }).keys.sorted()
//if mode.count > 1 {
//    print(mode[1])
//} else {
//    print(mode[0])
//}
//let range = array.max()! - array.min()!
//print(range)

// 20920번

//let input = readLine()!.split(separator: " ").map{Int($0)!}
//let n = input[0]
//let m = input[1]
//var dict = [String : Int]()
//
//for _ in 0..<n {
//    let str = readLine()!
//
//    if str.count >= m {
//        if dict[str] == nil {
//            dict[str] = 1
//        } else {
//            dict[str]! += 1
//        }
//    }
//}
//
//var result = dict.sorted{
//    if $0.value == $1.value {
//        if $0.key.count == $1.key.count {
//            return $0.key < $1.key
//        }
//        return $0.key.count > $1.key.count
//    }
//    return $0.value > $1.value
//}.map{$0.key}
//result.forEach{print($0)}

