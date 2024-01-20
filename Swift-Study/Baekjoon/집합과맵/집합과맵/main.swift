//
//  main.swift
//  집합과맵
//
//  Created by 장지수 on 2023/05/18.
//

import Foundation

// 10815번
//func binary(arr:[Int], target:Int) -> Bool {
//    var start = 0
//    var end = arr.count - 1
//
//    while start <= end {
//        let mid = (start + end) / 2
//
//        if arr[mid] == target {
//            return true
//        } else if arr[mid] < target {
//            start = mid + 1
//        } else {
//            end = mid - 1
//        }
//    }
//    return false
//}
//
//let n = Int(readLine()!)!
//let card = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
//let m = Int(readLine()!)!
//let num = readLine()!.split(separator: " ").map{Int($0)!}
//var array : [String] = []
//
//for i in num {
//    if binary(arr: card, target: i) {
//        array.append("1")
//    } else {
//        array.append("0")
//    }
//}
//print(array.joined(separator: " "))

// 14425번

//let input = readLine()!.split(separator: " ").map{Int($0)!}
//var array : [String] = []
//var count = 0
//for _ in 0..<input[0] {
//    let str = readLine()!
//    array.append(str)
//}
//for _ in 0..<input[1] {
//    let str = readLine()!
//    if array.contains(str) {
//        count += 1
//    }
//}
//
//print(array)

// 7785번

//let n = Int(readLine()!)!
//var person = Set<String>()
//
//for _ in 0..<n {
//    let input = readLine()!.split(separator: " ").map{String($0)}
//    if input[1] == "enter" && !person.contains("\(input[0])") {
//        person.insert(input[0])
//    } else if input[1] == "leave" && person.contains("\(input[0])") {
//        person.remove(input[0])
//    }
//}
//let change = person.sorted(by: >)
//
//change.forEach{print($0)}


// 1620번

//let num = readLine()!.split(separator: " ").map{Int($0)!}
//let n = num[0]
//let m = num[1]
//var pokemonName = [String:Int]()
//var pokemonNum = [Int:String]()
//var result : [String] =  []
//for i in 1...n {
//    let input = readLine()!
//    pokemonName[input] = i
//    pokemonNum[i] = input
//}
//for _ in 1...m {
//    let input = readLine()!
//    let inputType = Int(input) ?? 0
//    if inputType == 0 {
//        result.append( String(pokemonName[input]!))
//    } else {
//        result.append(pokemonNum[inputType]!)
//    }
//}
//result.forEach{print($0)}

// 10816번

//let n = Int(readLine()!)!
//let card = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
//let m = Int(readLine()!)!
//let answer = readLine()!.split(separator: " ").map{Int($0)!}
//var dict = [Int:Int]()
//var result : [Int] = []
//for i in card {
//    if dict[i] != nil {
//        dict[i]! += 1
//    } else {
//        dict[i] = 1
//    }
//}
//
//for i in answer {
//    if dict[i] != nil {
//        result.append(dict[i]!)
//    } else {
//        result.append(0)
//    }
//}
//result.forEach{print($0,terminator: " ")}


// 1764번

//let num = readLine()!.split(separator: " ").map{Int($0)!}
//let n = num[0]
//let m = num[1]
//var noListen = Set<String>()
//var noSee = Set<String>()
//var result = Set<String>()
//
//for _ in 0..<n {
//    let input = readLine()!
//    noListen.insert(input)
//}
//for _ in 0..<m {
//    let input = readLine()!
//    noSee.insert(input)
//}
//result = noListen.intersection(noSee)
//
//
//print(result.count)
//for i in result.sorted() {
//    print(i)
//}

// 1269번

//let num = readLine()!.split(separator: " ").map{Int($0)!}
//let n = num[0]
//let m = num[1]
//
//let a = readLine()!.split(separator: " ").map{Int($0)!}
//let b = readLine()!.split(separator: " ").map{Int($0)!}
//
//var setA = Set<Int>()
//var setB = Set<Int>()
//
//for i in 0..<n{
//    setA.insert(a[i])
//}
//for i in 0..<m {
//    setB.insert(b[i])
//}
//
//var result = (setA.subtracting(setB)).count + (setB.subtracting(setA)).count
//
//print(result)

// 11478번

let input = readLine()!.map{String($0)}
var result = Set<String>()

for i in 0..<input.count {
    var string = ""
    for j in i..<input.count {
        string += String(input[j])
        result.insert(string)
    }
}
print(result.count)
