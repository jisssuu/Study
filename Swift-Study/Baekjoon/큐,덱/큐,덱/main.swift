//
//  main.swift
//  큐,덱
//
//  Created by 장지수 on 2023/06/14.
//

import Foundation

// 2164번

//let n = Int(readLine()!)!
//var head = 0
//var tail = n - 1
//var array : [Int] = []
//
//for i in 1...n {
//    array.append(i)
//}
//
//while true {
//    if head == tail {
//        break
//    }
//    head += 1
//    var num = array[head]
//    array.append(num)
//    head += 1
//    tail += 1
//}
//print(array[head])

// 11866번

//let input = readLine()!.split(separator: " ").map{Int($0)!}
//let n = input[0]
//let k = input[1]
//var head = 0
//
//
//var array = [Int](1...n)
//var result : [Int] = []
//
//for i in 0..<n {
//    head = (head + k - 1) % array.count
//    var num = array[head]
//    array.remove(at: head)
//    result.append(num)
//}
//print("<\(result.map { String($0) }.joined(separator: ", "))>")
//

// 1021번

//var input = readLine()!.split(separator: " ").map{Int($0)!}
//var number = readLine()!.split(separator: " ").map{Int($0)!}
//let n = input[0]
//let m = input[1]
//var array = [Int](1...n)
//var result = 0
//
//while !number.isEmpty {
//    if array.first! == number.first! {
//        array.removeFirst()
//        number.removeFirst()
//        continue
//    }
//    let startDistance = array.firstIndex(of: number.first!)!
//    let endDistance = array.count - array.firstIndex(of: number.first!)!
//
//    if startDistance < endDistance {
//        array.append(array.removeFirst())
//    } else {
//        array.insert(array.removeLast(), at: 0)
//    }
//    result += 1
//
//}
//print(result)

// 5430번
//
//let n = Int(readLine()!)!
//
//for _ in 0..<n {
//    let str = readLine()!
//    let num = Int(readLine()!)!
//    var array = readLine()!.dropFirst().dropLast().split(separator: ",").map{String($0)}
//    var head = 0
//    var check = false
//    var tail = array.count
//
//    for i in str {
//        if i == "R" {
//            if check {
//                check = false
//            } else {
//                check = true
//            }
//        }
//        if i == "D" {
//            if check {
//                tail -= 1
//            }
//            else {
//                head += 1
//            }
//        }
//        if head > tail {
//            break
//        }
//    }
//    if head > tail {
//        print("error")
//    }
//    else {
//        if check {
//            print("[\(array[head..<tail].reversed().joined(separator: ","))]")
//        } else {
//            print("[\(array[head..<tail].joined(separator: ","))]")
//        }
//    }
//}
//
