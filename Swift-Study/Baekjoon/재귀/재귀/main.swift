//
//  main.swift
//  재귀
//
//  Created by 장지수 on 2023/06/16.
//

import Foundation

// 27433번

//func factorial(num : Int) -> Int {
//    if num == 0 {
//        return 1
//    }
//    else {
//        return num * factorial(num: num-1)
//    }
//}
//
//let n = Int(readLine()!)!
//
//let num = factorial(num: n)
//
//print(num)

// 10870번

//func fibonacci(num : Int) -> Int {
//    if num <= 1 {
//        return num
//    } else {
//        return fibonacci(num: num-1) + fibonacci(num: num-2)
//    }
//}
//let n = Int(readLine()!)!
//
//let num = fibonacci(num: n)
//
//print(num)

// 25501번

//func recusion(array : [String], n : Int , m : Int ) -> Int {
//    count += 1
//    if n >= m {
//        return 1
//    } else if array[n] != array[m] {
//        return 0
//    } else {
//        return recusion(array: array, n: n+1, m: m-1)
//    }
//}
//
//let n = Int(readLine()!)!
//var count = 0
//
//for _ in 0..<n {
//    count = 0
//    let input = readLine()!.map{String($0)}
//
//    var result = recusion(array: input, n: 0, m: input.count - 1)
//    print(result, count)
//}

// 24060번

//let input = readLine()!.split(separator:" ").map{Int(String($0))!}
//let N = input[0]
//let K = input[1]
//var numArray = readLine()!.split(separator:" ").map{Int(String($0))!}
//var count = 0
//var answer = -1
//
//func mergeSort(_ array: [Int], _ start: Int, _ end: Int) {
//    if array.count <= 1 { return }
//    if start < end && count < K {
//        let center = (start + end) / 2
//        mergeSort(array, start, center)
//        mergeSort(array, center + 1, end)
//        merge(start, center, end)
//    }
//}
//
//func merge(_ start: Int, _ center: Int, _ end: Int) {
//    var i = start
//    var j = center + 1
//    var t = 0
//    var temp = [Int]()
//
//    while i <= center && j <= end {
//        if numArray[i] <= numArray[j] {
//            temp.append(numArray[i])
//            i += 1
//        } else {
//            temp.append(numArray[j])
//            j += 1
//        }
//    }
//
//    while i <= center {
//        temp.append(numArray[i])
//        i += 1
//    }
//
//    while j <= end {
//        temp.append(numArray[j])
//        j += 1
//    }
//
//    i = start
//    while i <= end {
//        numArray[i] = temp[t]
//        count += 1
//        if count == K {
//            answer = temp[t]
//            break
//        }
//        i += 1
//        t += 1
//    }
//}
//
//mergeSort(numArray, 0, N - 1)
//print(answer)

// 4779번
//func kanto(n : Double) -> String {
//    if n == 0 {
//        return "-"
//    }
//    let line = kanto(n: n - 1)
//    return line + String(repeating: " ", count: Int(pow(3, n - 1))) + line
//}
//while let input = readLine() {
//    let num = Double(input)!
//    let result = kanto(n: num)
//    print(result)
//}

// 2447번


// 11729번

let num = Int(readLine()!)!
let result = pow(2, num) - 1

func move(from: Int, to : Int) {
    print("\(from) \(to)")
}

func hanoi(n : Int, from : Int, by : Int , to : Int) {
    if n == 1 {
        move(from: from, to: to)
    }
    else {
        hanoi(n: n-1, from: from, by: to, to: by)
        move(from: from, to: to)
        hanoi(n: n-1, from: by, by: from, to: to)
    }
}
print(result)
hanoi(n: num, from: 1, by: 2, to: 3)
