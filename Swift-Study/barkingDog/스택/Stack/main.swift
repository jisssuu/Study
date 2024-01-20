//
//  main.swift
//  스택
//
//  Created by 장지수 on 2023/06/11.
//

import Foundation

// 10828번

//let n = Int(readLine()!)!
//var array : [Int] = []
//var pos = 0
//func push(num:Int) {
//    array.append(num)
//    pos += 1
//}
//func pop() {
//    var result = -1
//    if pos != 0 {
//        result = array[pos-1]
//    }
//    print(result)
//    if result != -1 {
//        array.remove(at: pos-1)
//        pos -= 1
//    }
//}
//func size() {
//    var result = array.count
//    print(result)
//}
//func empty() {
//    if array.count == 0 {
//        print(1)
//    } else {
//        print(0)
//    }
//}
//func top() {
//    var result = -1
//    if pos != 0 {
//        result = array[pos-1]
//    }
//    print(result)
//}
//for i in 0..<n {
//    var input = readLine()!.split(separator: " ").map{String($0)}
//    if input[0] == "push" {
//        var num = Int(input[1])!
//        push(num: num)
//    }
//    if input[0] == "pop" {
//        pop()
//    }
//    if input[0] == "size" {
//        size()
//    }
//    if input[0] == "empty" {
//        empty()
//    }
//    if input[0] == "top" {
//        top()
//    }
//}
