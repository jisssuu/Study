//
//  main.swift
//  스택
//
//  Created by 장지수 on 2023/06/11.
//

import Foundation

// 10773번

//let n = Int(readLine()!)!
//var pos = 0
//var array : [Int] = []
//var sum = 0
//
//func push(num : Int) {
//    array.append(num)
//    pos += 1
//}
//
//func pop() {
//    array.remove(at: pos - 1)
//    pos -= 1
//}
//for _ in 0..<n {
//    let num = Int(readLine()!)!
//
//    if num == 0 {
//        pop()
//    } else {
//        push(num: num)
//    }
//}
//
//for i in array {
//    sum += i
//}
//print(sum)

// 9012번

//let n = Int(readLine()!)!
//for _ in 0..<n {
//    let input = readLine()!
//    var result = 0
//    for i in input {
//        if String(i) == "(" {
//            result += 1
//        }
//        if String(i) == ")" {
//            result -= 1
//        }
//        if result == -1 {
//            break
//        }
//    }
//    if result == 0 {
//        print("YES")
//    } else {
//        print("NO")
//    }
//}

// 4949번


//while true {
//    var array : [Character] = []
//    let str = readLine()!
//    if str == "." {
//        break
//    }
//    else {
//        for i in str {
//            if i == "(" || i == ")" || i == "[" || i == "]" {
//                if i == "]" && array.last == "[" {
//                    array.removeLast()
//                }
//                else if i == ")" && array.last == "(" {
//                    array.removeLast()
//                }
//                else {
//                    array.append(i)
//                }
//            }
//        }
//    }
//    print(array.isEmpty == true ? "yes" : "no")
//}

// 1874번

//let n = Int(readLine()!)!
//var check = true
//var pos = 1
//var result : [String] = []
//var array : [Int] = []
//for _ in 1...n {
//    let num = Int(readLine()!)!
//    while pos <= num{
//        array.append(pos)
//        result.append("+")
//        pos += 1
//    }
//    if array.last == num {
//        array.removeLast()
//        result.append("-")
//    }
//    if array.count != 0 {
//        if array.last! > num {
//            check = false
//        }
//    }
//}
//if check {
//    result.forEach{print($0)}
//} else {
//    print("NO")
//}
