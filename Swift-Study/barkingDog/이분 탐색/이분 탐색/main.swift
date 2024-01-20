//
//  main.swift
//  이분 탐색
//
//  Created by 장지수 on 2023/08/11.
//

import Foundation

// 1920번

//let n = Int(readLine()!)!
//let array = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
//
//let m = Int(readLine()!)!
//let array2 = readLine()!.split(separator: " ").map{Int($0)!}
//
//func binary(tar : Int) -> Int {
//    var st = 0
//    var ed = n-1
//
//    while(st <= ed) {
//        var mid = (st+ed)/2
//        if array[mid] < tar {
//            st = mid + 1
//        }
//        else if array[mid] > tar {
//            ed = mid - 1
//        }
//        else {
//            return 1
//        }
//    }
//    return 0
//}
//
//for i in 0..<m{
//    var check = binary(tar: array2[i])
//    print(check)
//}

// 1654번

//let input = readLine()!.split(separator: " ").map{Int($0)!}
//let k = input[0]
//let n = input[1]
//var st = 1
//var ed = 0x7fffffff
//var array = [Int]()
//for _ in 0..<k {
//    let line = Int(readLine()!)!
//    array.append(line)
//}
//
//func solve(x : Int) -> Bool {
//    var cur = 0
//    for i in 0..<k {
//        cur += array[i] / x
//    }
//    return cur>=n
//}
//while st < ed {
//    var mid = (st + ed + 1) / 2
//    if solve(x: mid) {
//        st = mid
//    } else {
//        ed = mid - 1
//    }
//}
//
//print(st)

// 2805번

let input = readLine()!.split(separator: " ").map{Int($0)!}

let n = input[0]
let m = input[1]

let array = readLine()!.split(separator: " ").map{Int($0)!}.sorted()

var st = 0
var ed = array[n-1]

func solve(x : Int) -> Bool {
    var cur = 0
    for i in 0..<n {
        if array[i] > x {
            cur += array[i] - x
        }
        else {
            continue
        }
    }
    return cur >= m
}

while st < ed {
    var mid = (st + ed + 1) / 2
    if solve(x: mid) {
        st = mid
    } else {
        ed = mid - 1
    }
}
print(st)
