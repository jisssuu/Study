//
//  main.swift
//  Deck
//
//  Created by 장지수 on 2023/06/14.
//

import Foundation

// 10866번

let n = Int(readLine()!)!
var array : [Int] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    
    if input[0] == "push_front" {
        var num = Int(input[1])!
        array.insert(num, at: 0)
    }
    if input[0] == "push_back" {
        var num = Int(input[1])!
        array.append(num)
    }
    if input[0] == "pop_front" {
        if array.isEmpty {
            print(-1)
        } else {
            print(array[0])
            array.remove(at: 0)
        }
    }
    if input[0] == "pop_back" {
        if array.isEmpty {
            print(-1)
        } else {
            print(array[array.count-1])
            array.remove(at: array.count-1)
        }
    }
    if input[0] == "size" {
        print(array.count)
    }
    if input[0] == "empty" {
        if array.isEmpty {
            print(1)
        } else {
            print(0)
        }
    }
    if input[0] == "front" {
        if array.isEmpty {
            print(-1)
        } else {
            print(array[0])
        }
    }
    if input[0] == "back" {
        if array.isEmpty {
            print(-1)
        } else {
            print(array[array.count-1])
        }
    }
}
