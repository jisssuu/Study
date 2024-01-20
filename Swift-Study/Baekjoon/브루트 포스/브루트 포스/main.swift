//
//  main.swift
//  브루트 포스
//
//  Created by 장지수 on 2023/05/07.
//

import Foundation

// 2798번

//let input = readLine()!.split(separator: " ").map{Int($0)!}
//
//let cardCount = input[0]
//let sum = input[1]
//var nowSum = 0
//let cardNum = readLine()!.split(separator: " ").map{Int($0)!}
//for i in 0..<cardCount {
//    for j in i+1..<cardCount {
//        for k in j+1..<cardCount {
//            if cardNum[i] + cardNum[j] + cardNum[k] <= sum {
//                if cardNum[i] + cardNum[j] + cardNum[k] > nowSum {
//                    nowSum = cardNum[i] + cardNum[j] + cardNum[k]
//                }
//            }
//        }
//    }
//}
//print(nowSum)

// 2231번

//let input = Int(readLine()!)!
//var result = 0
//for i in 0...input {
//    var num = i
//    var sum = 0
//    while num != 0 {
//        sum += num%10
//        num /= 10
//    }
//    if i + sum == input {
//        result = i
//        break
//    }
//}
//print(result)

// 19532번
//
//let input = readLine()!.split(separator: " ").map{Int($0)!}
//let a = input[0], b = input[1], c = input[2], d = input[3], e = input[4], f = input[5]
//var result : [Int] = []
//for i in -999...999 {
//    for j in -999...999 {
//        let result1 = a*i + b*j
//        let result2 = d*i + e*j
//
//        if c == result1 && f == result2 {
//            result.append(i)
//            result.append(j)
//        }
//    }
//}
//result.forEach{print($0,terminator: " ")}

// 1018번

//import Foundation
//
//let input = readLine()!.split(separator: " ").map{Int($0)!}
//
//let row = input[0]
//let col = input[1]
//var array :[[String]] = []
//var resultCount = 999
//for _ in 0..<row {
//    array.append(readLine()!.map{String($0)})
//}
//let white =
//[["W","B","W","B","W","B","W","B"],
//["B","W","B","W","B","W","B","W"],
//["W","B","W","B","W","B","W","B"],
//["B","W","B","W","B","W","B","W"],
//["W","B","W","B","W","B","W","B"],
//["B","W","B","W","B","W","B","W"],
//["W","B","W","B","W","B","W","B"],
//["B","W","B","W","B","W","B","W"]]
//
//let black =
//[["B","W","B","W","B","W","B","W"],
//["W","B","W","B","W","B","W","B"],
//["B","W","B","W","B","W","B","W"],
//["W","B","W","B","W","B","W","B"],
//["B","W","B","W","B","W","B","W"],
//["W","B","W","B","W","B","W","B"],
//["B","W","B","W","B","W","B","W"],
//["W","B","W","B","W","B","W","B"]]
//
//func compare(trow: Int,tcol:Int)-> Int{
//    var Wcount = 0
//    var Bcount = 0
//    for i in 0..<8{
//        for j in 0..<8{
//            if white[i][j] != array[trow + i][ tcol + j]{
//                Wcount += 1
//            }
//            if black[i][j] != array[trow + i][ tcol + j]{
//                Bcount += 1
//            }
//        }
//    }
//    if Wcount >= Bcount{
//        return Bcount
//    }else{
//        return Wcount
//    }
//}
//
//
//for i in 0...row-8 {
//    for j in 0...col-8 {
//        resultCount = min(compare(trow: i, tcol: j),resultCount)
//    }
//}
//print(resultCount)

// 1436번

//let input = Int(readLine()!)!
//var num = 666
//var result = 0
//while true {
//    let strNum = String(num)
//    var count = 0
//    for i in strNum {
//        if i == "6" {
//            count += 1
//        } else {
//            count = 0
//        }
//
//        if count == 3 {
//            result += 1
//            break
//        }
//    }
//    if result == input {
//        break
//    } else {
//        num += 1
//    }
//}
//print(num)

// 2839번

//var input = Int(readLine()!)!
//var result = 0
//while input>=3 {
//    if input % 5 == 0 {
//        input -= 5
//        result += 1
//    } else {
//        input -= 3
//        result += 1
//    }
//}
//if input == 0 {
//    print(result)
//} else {
//    print(-1)
//}

