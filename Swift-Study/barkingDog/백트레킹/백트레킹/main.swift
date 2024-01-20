//
//  main.swift
//  백트레킹
//
//  Created by 장지수 on 2023/07/11.
//

import Foundation

// 15649번

//let input = readLine()!.split(separator: " ").map{Int($0)!}
//let n = input[0]
//let m = input[1]
//var array : [Int] = []
//var issue = Array(repeating: false, count: n + 1)
//
//func check(num : Int) {
//    if num == m {
//        for _ in 0..<m {
//            print(array.map{String($0)}.joined(separator: " "))
//            return
//        }
//    }
//    else {
//        for i in 1...n {
//            if !issue[i] {
//                array.append(i)
//                issue[i] = true
//                check(num: num + 1)
//                issue[i] = false
//                array.removeLast()
//            }
//        }
//    }
//}
//
//check(num: 0)

// 15650번

//let input = readLine()!.split(separator: " ").map{Int($0)!}
//let n = input[0]
//let m = input[1]
//var array : [Int] = []
//var issue = Array(repeating: false, count: n + 1)
//
//func check(num : Int) {
//    if num == m {
//        if array.sorted() == array {
//            for _ in 0..<m {
//                print(array.map{String($0)}.joined(separator: " "))
//                return
//            }
//        }
//    }
//    else {
//        for i in 1...n {
//            if !issue[i] {
//                array.append(i)
//                issue[i] = true
//                check(num: num + 1)
//                issue[i] = false
//                array.removeLast()
//            }
//        }
//    }
//}
//
//check(num: 0)
//

// 15651번

//let input = readLine()!.split(separator: " ").map{Int($0)!}
//let n = input[0]
//let m = input[1]
//var array : [Int] = []
//var issue = Array(repeating: false, count: n + 1)
//var result = ""
//
//func check(num : Int) {
//    if num == m {
//        for _ in 0..<m {
//            result += array.map{String($0)}.joined(separator: " ")
//            result += "\n"
//            return
//        }
//
//    }
//    else {
//        for i in 1...n {
//            array.append(i)
//            check(num: num+1)
//            array.removeLast()
//        }
//    }
//}
//
//check(num: 0)
//print(result)

// 15652번

//let input = readLine()!.split(separator: " ").map{Int($0)!}
//let n = input[0]
//let m = input[1]
//var array : [Int] = []
//var issue = Array(repeating: false, count: n + 1)
//var result = ""
//func check(num : Int) {
//    var state = true
//    if num == m {
//        for i in 0..<m {
//            if i > 0, array[i] < array[i - 1]{
//                state = false
//            }
//        }
//        if state {
//            result += "\(array.map{String($0)}.joined(separator: " "))"
//            result += "\n"
//        }
//        return
//    }
//    for i in 1...n {
//        array.append(i)
//        check(num: num+1)
//        array.removeLast()
//    }
//}
//
//check(num: 0)
//print(result)

//let input = readLine()!.split(separator: " ").map { Int($0)! }
//let n = input[0], m = input[1]
//
//func dfs(nums: [Int], index: Int) {
//    if nums.count == m {
//        nums.forEach { print($0, terminator: " ") }
//        print()
//        return
//    }
//    for i in index...n {
//        dfs(nums: nums + [i], index: i)
//    }
//}
//
//dfs(nums: [], index: 1)

// 9663번

//let n = Int(readLine()!)!
//var issue1 = Array(repeating: false, count: n)
//var issue2 = Array(repeating: false, count: 2 * n - 1)
//var issue3 = Array(repeating: false, count: 2 * n - 1)
//var cnt = 0
//func check(num : Int) {
//    if num == n {
//        cnt += 1
//        return
//    }
//    for i in 0..<n {
//        if issue1[i] || issue2[i + num] || issue3[num - i + n - 1] {
//            continue
//        }
//        issue1[i] = true
//        issue2[i+num] = true
//        issue3[num-i+n-1] = true
//        check(num: num + 1)
//        issue1[i] = false
//        issue2[i+num] = false
//        issue3[num-i+n-1] = false
//    }
//}
//check(num: 0)
//print(cnt)

// 1182번

//let input = readLine()!.split(separator: " ").map{Int($0)!}
//let n = input[0]
//let m = input[1]
//let array = readLine()!.split(separator: " ").map{Int($0)!}
//var cnt = 0
//func check ( num : Int, total : Int) {
//    if num == n {
//        if total == m {
//            cnt += 1
//        }
//        return
//    }
//    check(num: num+1, total: total)
//    check(num: num+1, total: total+array[num])
//}
//check(num: 0, total: 0)
//if m == 0 {
//    cnt -= 1
//}
//print(cnt)

// 2580번

// 14888번

//let n = Int(readLine()!)!
//
//let num = readLine()!.split(separator: " ").map{Int($0)!}
//var oper = readLine()!.split(separator: " ").map{Int($0)!}
//var maxValue = Int.min
//var minValue = Int.max
//
//func compare(check : Int, d : Int) {
//    if d == n {
//        maxValue = max(maxValue, check)
//        minValue = min(minValue, check)
//        return
//    }
//    for i in 0..<4 {
//        if oper[i] < 1 {
//            continue
//        }
//        oper[i] -= 1
//        switch i {
//        case 0 : compare(check: check + num[d], d: d + 1)
//        case 1 : compare(check: check - num[d], d: d + 1)
//        case 2 : compare(check: check * num[d], d: d + 1)
//        case 3 : compare(check: check / num[d], d: d + 1)
//        default:
//            break
//        }
//        oper[i] += 1
//    }
//
//}
//compare(check: num[0], d: 1)
//
//print(maxValue)
//print(minValue)

// 14889번

let n = Int(readLine()!)!

var array = Array(repeating: false, count: 100000)
var team1 = 0
var team2 = 0
var score = Array(repeating: Array(repeating: 0, count: n), count: n)
var minValue = Int.max
for i in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    score[i] = input
}

func dfs(depth : Int, start : Int) {
    if depth == n/2 {
        team1 = 0
        team2 = 0
        for i in 0..<n {
            for j in 0..<n {
                if !array[i] && !array[j] {
                    team2 += score[i][j]
                }
                if array[i] && array[j] {
                    team1 += score[i][j]
                }
            }
        }
        minValue = min(minValue, abs(team1 - team2))
        return
    }
    for i in start..<n {
        if !array[i] {
            array[i] = true
            dfs(depth: depth + 1, start: i)
            array[i] = false
        }
    }
}
dfs(depth: 0, start: 0)
print(minValue)
