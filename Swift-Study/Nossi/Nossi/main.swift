//
//  main.swift
//  Nossi
//
//  Created by 장지수 on 2023/09/04.
//

import Foundation
//

// 사전테스트 1번

//func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
//    let n = temperatures.count
//    var result = Array(repeating: 0, count: n)
//    var stack: [Int] = []
//
//    for i in 0..<n {
//        while !stack.isEmpty && temperatures[i] > temperatures[stack.last!] {
//            let j = stack.removeLast()
//            result[j] = i - j
//        }
//        stack.append(i)
//    }
//
//    return result
//}


//let input = readLine()!.split(separator: ",").map{Int($0)!}
//
//print(dailyTemperatures(input))

// 사전테스트 2번

//let input = readLine()!.split(separator: ",").map{Int($0)!}.sorted()
//
//func longestConsecutive(_ nums: [Int]) -> Int {
//    let n = nums.count
//    var result = 0
//    var count = 1
//    var check = nums[0]
//
//    for i in 1..<n {
//        if nums[i] == check + 1 {
//            check = nums[i]
//            count += 1
//        }
//        else {
//            check = nums[i]
//            result = max(result, count)
//        }
//        result = max(result, count)
//    }
//    return result
//}
//
//print(longestConsecutive(input))

// TwoSum 반복문(완전 탐색) O(n^2)

//let input = readLine()!.split(separator: ",").map{Int($0)!}
//let target = Int(readLine()!)!
//var sum : [Int] = []
//
//func twoSum(_ nums: [Int], _ target: Int){
//
//    for i in 0..<nums.count{
//        for j in i..<nums.count {
//            if nums[i] + nums[j] == target {
//                sum.append(i)
//                sum.append(j)
//            }
//        }
//    }
//}
//
//twoSum(input, target)
//
//print(sum)

// TwoSum 시간복잡도 낮추기 (정렬) O(nlogn)

//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//    var numArray = [(index :Int,value : Int)]()
//    for (index,num) in nums.enumerated() {
//        numArray.append((index,num))
//    }
//    numArray.sort{$0.value > $1.value}
//    var start = 0
//    var end = numArray.count-1
//
//    while start<end {
//        let sumValue = numArray[start].value + numArray[end].value
//
//        if target == sumValue {
//            return [numArray[start].index,numArray[end].index]
//        }
//        else if target > sumValue {
//            start += 1
//        }
//        else {
//            end -= 1
//        }
//    }
//
//    return []
//}


//Stack(LIFO) - Valid parentheses 문제

//let input = readLine()!
//func isValid(_ s: String) -> Bool {
//        var stack: [Character] = []
//
//        for char in s {
//            if char == "(" || char == "{" || char == "[" {
//                stack.append(char)
//            } else if char == ")" {
//                if stack.isEmpty || stack.popLast() != "(" {
//                    return false
//                }
//            } else if char == "}" {
//                if stack.isEmpty || stack.popLast() != "{" {
//                    return false
//                }
//            } else if char == "]" {
//                if stack.isEmpty || stack.popLast() != "[" {
//                    return false
//                }
//            }
//        }
//        return stack.isEmpty
//}
//print(isValid(input))

// Hash Table - Two sum Swift에서는 Dictionary. O(n)

//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//    var dict = [Int : Int]()
//
//    for (i,num) in nums.enumerated() {
//       var checkValue = target - num
//
//        if let checkIndex = dict[checkValue] {
//            return [checkIndex, i]
//        }
//        dict[num] = i
//    }
//
//    return []
//}

// Hash Table - Longest consecutive sequence

//class Solution {
//    func longestConsecutive(_ nums: [Int]) -> Int {
//        var numSet = Set(nums)
//        var count = 0
//
//        for num in numSet {
//            if !numSet.contains(num - 1) { // 이 조건문이 가장 중요하다. 이 조건문을 통해 연속된 수의 출발점인지 아닌지를 판별 가능!
//                var currentNum = num
//                var currentCount = 1
//
//                while numSet.contains(currentNum + 1) {
//                    currentNum += 1
//                    currentCount += 1
//                }
//
//                count = max(count, currentCount)
//            }
//        }
//
//        return count
//    }
//}


//func solution(_ arr:[Int]) -> [Int] {
//    var minimum = Int.max
//    var result = arr
//    for i in 0..<result.count {
//        minimum = min(minimum, i)
//    }
//    for i in 0..<result.count {
//        if minimum == result[i] {
//            result.remove(at: i)
//        }
//    }
//    if result.count == 0 {
//           result.append(-1)
//    }
//    return result
//}

//import Foundation
//
//func solution(_ t: String, _ p: String) -> Int {
//    var num: [Int] = []
//    var str: [String] = []
//    var len = p.count
//    for i in t {
//        str.append(String(i))
//    }
//    var count = 0
//    for i in 0..<t.count - len {
//        var num1 = ""
//        for j in i..<i + len {
//            num1 += str[j]
//        }
//        if let intValue = Int(num1), let check = Int(p) {
//            if intValue <= check {
//                count += 1
//            }
//        }
//    }
//    return count
//}
//
//print(solution("10203", "15"))

func solution(_ l: Int, _ x: [Int]) -> [Int] {
    let n = x.count
    var heights = Set<Int>([0]) // 초기 높이는 0으로 시작

    for i in 0..<n {
        var newHeights = Set<Int>()

        for h in heights {
            let left = x[i]
            let right = x[i] + l

            if h + l <= left {
                newHeights.insert(h + l)
            }

            if h - l >= 0 {
                newHeights.insert(h - l)
            }

            if h >= left && h <= right {
                newHeights.insert(h)
            }
        }

        heights = newHeights
    }

    return Array(heights).sorted()
}

// 예시
let l = 5
let x = [1, 4, 7, 9]

let result = solution(l, x)
print(result)  // 결과 출력
