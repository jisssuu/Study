//
//  main.swift
//  약수,배수와소수2
//
//  Created by 장지수 on 2023/05/23.
//

import Foundation

// 1934번

//func GCD(a : Int,b : Int ) -> Int {
//    let rem = a % b
//
//    if rem == 0 {
//        return b
//    } else {
//        return GCD(a: b, b: rem)
//    }
//
//}
//
//let n = Int(readLine()!)!
//var result : [Int] = []
//for _ in 0..<n {
//    let input = readLine()!.split(separator: " ").map{Int($0)!}
//
//    let a = input[0]
//    let b = input[1]
//    let res = a * b / GCD(a: a, b: b)
//    result.append(res)
//}
//result.forEach{print($0)}

// 13241번

//func GCD(a:Int,b:Int) -> Int {
//    let rem = a % b
//
//    if rem == 0 {
//        return b
//    } else {
//        return GCD(a: b, b: rem)
//    }
//}
//
//let input = readLine()!.split(separator: " ").map{Int($0)!}
//let a = input[0]
//let b = input[1]
//
//let res = a * b / GCD(a: a, b: b)
//
//print(res)

// 1735번

//func GCD(a:Int,b:Int) -> Int {
//    let rem = a % b
//
//    if rem == 0 {
//        return b
//    } else {
//        return GCD(a: b, b: rem)
//    }
//}
//let a = readLine()!.split(separator: " ").map{Int($0)!}
//let a1 = a[0]
//let a2 = a[1]
//let b = readLine()!.split(separator: " ").map{Int($0)!}
//let b1 = b[0]
//let b2 = b[1]
//
//var result2 = a2 * b2
//
//var result1 = a1 * b2 + b1 * a2
//
//var num = GCD(a: result1, b: result2)
//
//
//print(result1/num,result2/num)

// 2485번

//func GCD(a:Int,b:Int) -> Int {
//    let rem = a % b
//
//    if rem == 0 {
//        return b
//    }
//    else {
//        return GCD(a: b, b: rem)
//    }
//}
//
//let n = Int(readLine()!)!
//var array : [Int] = []
//for _ in 0..<n {
//    let num = Int(readLine()!)!
//    array.append(num)
//}
//var sortArray = array.sorted()
//var mid = 0
//for i in 0..<n-1{
//    mid = GCD(a: mid, b: sortArray[i+1] - sortArray[i])
//}
//var total = (sortArray.max()! - sortArray.min()!) / mid - n + 1
//print(total)

// 4134번
//
//func isPrimeNumber(num: Int) -> Bool {
//    if num < 2 {
//        return false
//    }
//
//    for i in 2..<Int(sqrt(Double(num)) + 1) {
//        if num % i == 0 {
//            return false
//        }
//    }
//    return true
//}
//
//func solution() {
//    var num = Int(readLine()!)!
//    while !isPrimeNumber(num: num) {
//        num += 1
//    }
//    print(num)
//}
//
//let t = Int(readLine()!)!
//for _ in 0..<t { solution() }

// 1929번

//func solution(num:Int) -> Bool {
//    if num == 1 {
//        return false
//    }
//    for i in 2..<Int(sqrt(Double(num)) + 1) {
//        if num % i == 0 {
//            return false
//        }
//    }
//    return true
//}
//
//let input = readLine()!.split(separator: " ").map{Int($0)!}
//let n = input[0]
//let m = input[1]
//var array = Set<Int>()
//
//for i in n...m {
//    if solution(num: i) {
//        print(i)
//    }
//}

// 4948번

//func solution(num:Int) -> Bool {
//    if num == 2 {
//        return true
//    }
//    for i in 2..<Int(sqrt(Double(num)) + 1) {
//        if num % i == 0 {
//            return false
//        }
//    }
//    return true
//}
//var array : [Int] = []
//while true {
//    let num = Int(readLine()!)!
//    var result = 0
//    if num == 0 {
//        break
//    }
//
//    for i in num+1...num*2 {
//        if solution(num: i) {
//            result += 1
//        }
//    }
//    array.append(result)
//}
//array.forEach{print($0)}

// 17103번

//var array = [Bool](repeating: true, count: 1000001)
//array[0] = false
//array[1] = false
//
//for i in 2..<Int(sqrt(Double(array.count)) + 1) {
//    if array[i] {
//        var j = 2
//
//        while i * j <= 1000000 {
//            array[i*j] = false
//            j += 1
//        }
//    }
//}
//let t = Int(readLine()!)!
//var result : [Int] = []
//for _ in 0..<t {
//    let n = Int(readLine()!)!
//    var answer = 0
//
//    for i in 1...n / 2 {
//        if array[i] && array[n - i] {
//            answer += 1
//        }
//    }
//    result.append(answer)
//}
//result.forEach{print($0)}

// 13909번

//let n = Int(readLine()!)!
//var count = 0
//var i = 1
//
//while i * i <= n {
//    count += 1
//    i += 1
//}
//print(count)
