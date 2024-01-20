//
//  main.swift
//  배수와 약수
//
//  Created by 장지수 on 2023/05/04.
//

import Foundation

// 5086번

//while true {
//    let input = readLine()!.split(separator: " ").map{ Int($0)! }
//    let a = input[0]
//    let b = input[1]
//
//    if a == 0 && b == 0 {
//        break;
//    }
//    else {
//        if b % a == 0 {
//            print("factor")
//        }
//        else if a % b == 0 {
//            print("multiple")
//        }
//        else {
//            print("neither")
//        }
//    }
//}

// 2501번
//
//let input = readLine()!.split(separator: " ").map{ Int($0)! }
//var array : [Int] = []
//
//for i in 1...input[0] {
//    if input[0] % i == 0 {
//        array.append(i)
//    }
//}
//if array.count < input[1] {
//    print(0)
//} else {
//    print(array[input[1]-1])
//}

// 9506번
//while true {
//    let input = Int(readLine()!)!
//
//    if input == -1 {
//        break
//    }
//    else {
//        var array : [String] = []
//        var sum = 0
//        var result = "\(input) = "
//        for i in 1..<input {
//            if input % i == 0 {
//                array.append(String(i))
//
//            }
//        }
//        result += array.joined(separator:" + ")
//        for i in array {
//            sum += Int(i)!
//
//        }
//        if sum == input {
//            print(result)
//        } else {
//            print("\(input) is NOT perfect.")
//        }
//    }
//}

// 1978번

//let input = Int(readLine()!)!
//let array = readLine()!.split(separator: " ").map{Int($0)!}
//var checkNum = true
//var check = 0
//
//for i in 0..<array.count {
//    if array[i] == 1 {
//        checkNum = false
//    }
//    else {
//        for j in 2..<array[i] {
//            if array[i] % j == 0 {
//                checkNum = false
//            }
//        }
//    }
//    if checkNum {
//        check += 1
//    }
//    checkNum = true
//}
//
//print("\(check)")

// 2581번

//let n = Int(readLine()!)!
//let m = Int(readLine()!)!
//var checkNum = true
//var result : [Int] = []
//var sum = 0
//for i in n...m {
//
//    if i == 1 {
//        checkNum = false
//    } else {
//        for j in 2..<i {
//            if i % j == 0 {
//                checkNum = false
//            }
//        }
//    }
//    if checkNum {
//        result.append(i)
//    }
//    checkNum = true
//}
//for i in 0..<result.count {
//    sum += result[i]
//}
//if result.count == 0 {
//    print("-1")
//} else {
//    print(sum)
//    print(result[0])
//}

// 11653번

//let input = Int(readLine()!)!
//var num = input
//var k = 2
//var result : [Int] = []
//
//while num > 1 {
//    if num % k == 0 {
//        result.append(k)
//        num /= k
//    }
//    else {
//        k += 1
//    }
//
//}
//result.forEach{print($0,terminator: "\n")}
