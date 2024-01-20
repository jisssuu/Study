//
//  main.swift
//  정렬
//
//  Created by 장지수 on 2023/05/11.
//

import Foundation

// 2750번

//let n = Int(readLine()!)!
//var set = Set<Int>()
//for _ in 0..<n {
//    let input = Int(readLine()!)!
//
//    set.insert(input)
//}
//
//for i in set.sorted() {
//    print(i)
//}

// 2587번

//import Foundation
//
//var array : [Int] = []
//var total = 0
//for _ in 0..<5 {
//    let input = Int(readLine()!)!
//    total += input
//    array.append(input)
//}
//array.sort()
//print(total/5)
//print(array[2])

// 25305번
//
//let input = readLine()!.split(separator: " ").map{Int($0)!}
//
//let n = input[0]
//let k = input[1]
//var array : [Int] = []
//let input1 = readLine()!.split(separator: " ").map{Int($0)!}
//for i in 0..<n {
//    array.append(input1[i])
//}
//array.sort()
//
//print(array[n-k])

// 2751번

//
//let n = Int(readLine()!)!
//var array : [Int] = []
//for _ in 0..<n {
//    let input = Int(readLine()!)!
//
//    array.append(input)
//}
//array.sort()
//
//for i in array {
//    print(i)
//}

// 10989번

//import Foundation
//
//final class FileIO {
//    private var buffer:[UInt8]
//    private var index: Int
//
//    init(fileHandle: FileHandle = FileHandle.standardInput) {
//        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
//        index = 0
//    }
//
//    @inline(__always) private func read() -> UInt8 {
//        defer { index += 1 }
//
//        return buffer.withUnsafeBufferPointer { $0[index] }
//    }
//
//    @inline(__always) func readInt() -> Int {
//        var sum = 0
//        var now = read()
//        var isPositive = true
//
//        while now == 10
//            || now == 32 { now = read() } // 공백과 줄바꿈 무시
//        if now == 45{ isPositive.toggle(); now = read() } // 음수 처리
//        while now >= 48, now <= 57 {
//            sum = sum * 10 + Int(now-48)
//            now = read()
//        }
//
//        return sum * (isPositive ? 1:-1)
//    }
//
//    @inline(__always) func readString() -> String {
//        var str = ""
//        var now = read()
//
//        while now == 10
//            || now == 32 { now = read() } // 공백과 줄바꿈 무시
//
//        while now != 10
//            && now != 32 && now != 0 {
//                str += String(bytes: [now], encoding: .ascii)!
//                now = read()
//        }
//
//        return str
//    }
//}
//
//let file = FileIO()
//
//let N = file.readInt()
//var arr = [Int](repeating: 0, count: 10001)
//
//
//for _ in 0..<N {
//    let n = file.readInt()
//    arr[n] += 1
//}
//
//var answer = ""
//for i in 1...10000 {
//    answer += String(repeating:"\(i)\n",count:arr[i])
//}
//print(answer)

// 1427번

//import Foundation
//
//let input = readLine()!
//var array : [Int] = []
//for i in input {
//    array.append(Int(String(i))!)
//}
//array.sort(by: >)
//array.forEach{print($0,terminator: "")}

// 11650번
//
//let n = Int(readLine()!)!
//var array : [(Int,Int)] = []
//
//for _ in 0..<n {
//    let input = readLine()!.split(separator:" ").map{Int($0)!}
//
//    array.append((input[0],input[1]))
//}
//
//array.sort(by: {
//    $0.0 == $1.0 ? $0.1 < $1.1 : $0.0 < $1.0
//})
//for i in 0..<array.count {
//    print(array[i].0,array[i].1)
//}

// 11651번

//let n = Int(readLine()!)!
//var array : [(Int,Int)] = []
//
//for _ in 0..<n {
//    let input = readLine()!.split(separator:" ").map{Int($0)!}
//
//    array.append((input[0],input[1]))
//}
//
//array.sort(by: {
//    $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1
//})
//for i in 0..<array.count {
//    print(array[i].0,array[i].1)
//}

// 1181번
//
//let n = Int(readLine()!)!
//
//var array : [String] = []
//
//for _ in 0..<n {
//    let input = readLine()!
//    array.append(input)
//}
//array = Array(Set(array).sorted(by: {
//    $0.count == $1.count ? $0 < $1 : $0.count < $1.count
//}))
//
//for i in 0..<array.count {
//    print(array[i])
//}

// 10814번

//let n = Int(readLine()!)!
//var array : [(Int,String,Int)] = []
//for i in 0..<n {
//    let input = readLine()!.split(separator: " ")
//    array.append((Int(input[0])!,String(input[1]),i))
//}
//
//array.sort(by: {
//    $0.0 == $1.0 ? $0.2 < $1.2 : $0.0 < $1.0
//})
//for i in 0..<array.count {
//    print(array[i].0,array[i].1)
//}

// 18870번

//let n = Int(readLine()!)!
//let input = readLine()!.split(separator: " ").map{Int($0)!}
//var dict = [Int:Int]()
//var count = 0
//
//for i in input.sorted() {
//    if dict[i] == nil {
//        dict[i] = count
//        count += 1
//    }
//}
//
//var str = input.map{String(dict[$0]!)}
//
//print(str.joined(separator: " "))
