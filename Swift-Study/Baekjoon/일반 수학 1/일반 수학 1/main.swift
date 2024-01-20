//
//  main.swift
//  일반 수학 1
//
//  Created by 장지수 on 2023/05/01.
//

import Foundation

// 2745번

//let input = readLine()!.split(separator: " ")
//
//let result = Int(input[0],radix: Int(input[1])!)!
//
//print(result)

// 11005번

//let input = readLine()!.split(separator: " ").map{ Int($0)! }
//
//let result = String(input[0],radix: input[1])
//
//print(result.uppercased())

// 2720번

//let n = Int(readLine()!)!
//
//for _ in 0..<n {
//    var input = Int(readLine()!)!
//    var quarter = input / 25
//    var dime = (input%25)/10
//    var nickel = ((input%25)%10)/5
//    var penny = (((input%25)%10)%5)/1
//    print("\(quarter) \(dime) \(nickel) \(penny)")
//}

// 2903번

//var input = Int(readLine()!)!
//
//var x = 2
//
//while input > 0 {
//    x +=  Int(pow(2, Double(input-1)))
//    input -= 1
//}
//
//print(x*x)

// 2292번
//
//let input = Int(readLine()!)!
//var sum = 1
//var count = 1
//for i in 1...input {
//
//    if input == 1 {
//        print(count)
//        break
//    }
//    if input <= sum {
//        print(count)
//        break
//    }
//    else {
//        sum += 6 * i
//        count += 1
//    }
//}

// 1193번
//var input = Int(readLine()!)!
//var i = 1
//while input > 0 {
//    input -= i
//
//    if input <= 0 {
//        break
//    }
//    i += 1
//}
//if i % 2 == 1 {
//    print("\(-input+1)/\(input + i)")
//} else {
//    print("\(i + input)/\(-input+1)")
//}

// 2869번

//let input = readLine()!.split(separator: " ").map{ Double($0)! }
//
//var va = input[2] - input[1]
//var ba = input[0] - input[1]
//
//var x = ceil((va / ba))
//print("\(Int(x))")

// 10757번

let input = readLine()!.split(separator: " ")

var a : [Int] = []
var b : [Int] = []
var result : [Int] = []

for i in input[0].reversed() {
    a.append(Int(String(i))!)
}
for i in input[1].reversed() {
    a.append(Int(String(i))!)
}

if input[0].count >= input[1].count {
    for i in 0..<input[0].count - input[1].count {
        
    }
}

