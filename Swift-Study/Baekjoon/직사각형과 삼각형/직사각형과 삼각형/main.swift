//
//  main.swift
//  직사각형과 삼각형
//
//  Created by 장지수 on 2023/05/05.
//

import Foundation

// 27323번

//let a = Int(readLine()!)!
//let b = Int(readLine()!)!
//
//print(a*b)
//

// 1085번
//
//import Foundation
//
//let input = readLine()!.split(separator: " ").map{Int($0)!}
//let x = input[0]
//let y = input[1]
//let w = input[2]
//let h = input[3]
//
//var result : [Int] = []
//result.append(x)
//result.append(y)
//result.append(w-x)
//result.append(h-y)
//
//print(result.min()!)

// 3009번

//let a = readLine()!.split(separator: " ").map{Int($0)!}
//let b = readLine()!.split(separator: " ").map{Int($0)!}
//let c = readLine()!.split(separator: " ").map{Int($0)!}
//var d : [Int] = []
//
//if a[0] == b[0] {
//    d.append(c[0])
//} else if a[0] == c[0] {
//    d.append(b[0])
//} else if b[0] == c[0] {
//    d.append(a[0])
//}
//
//if a[1] == b[1] {
//    d.append(c[1])
//} else if a[1] == c[1] {
//    d.append(b[1])
//} else if b[1] == c[1] {
//    d.append(a[1])
//}
//d.forEach{print($0,terminator: " ")}

// 15894번

//let input = Int(readLine()!)!
//var sum = 0
//sum += 4*input
//print(sum)

// 9063번

//let n = Int(readLine()!)!
//var top = 10001
//var bottom = -10001
//var left1 = -10001
//var right1 = 10001
//var result = 0
//for _ in 0..<n {
//    let input = readLine()!.split(separator: " ").map{Int($0)!}
//    if input[1] < top {
//        top = input[1]
//    }
//    if input[1] > bottom{
//        bottom = input[1]
//    }
//    if input[0] < right1 {
//        right1 = input[0]
//    }
//    if input[0] > left1 {
//        left1 = input[0]
//    }
//}
//
//result = (top - bottom) * (right1 - left1)
//
//print(result)

// 10101번

//let a = Int(readLine()!)!
//let b = Int(readLine()!)!
//let c = Int(readLine()!)!
//let sum = a + b + c
//
//if sum != 180 {
//    print("Error")
//} else {
//    if a == 60 && b == 60 && c == 60 {
//        print("Equilateral")
//    } else {
//        if a == b || b == c || a == c {
//            print("Isosceles")
//        }
//        else {
//            print("Scalene")
//        }
//    }
//}

// 5073번

//while true {
//    let input = readLine()!.split(separator: " ").map{Int($0)!}
//    let a = input[0]
//    let b = input[1]
//    let c = input[2]
//    let max = input.max() ?? 0
//    let sum = input.reduce(0, {$0 + $1})
//    if a == 0 && b == 0 && c == 0 {
//        break
//    }
//    if max >= sum - max {
//        print("Invalid")
//    } else {
//        if a == b && b == c {
//            print("Equilateral ")
//        } else if a == b || b == c || a == c {
//            print("Isosceles")
//        } else {
//            print("Scalene")
//        }
//    }
//}

// 14215번

//let input = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
//var result = input[0] + input[1] + min(input[2], input[0]+input[1] - 1)
//print(result)
