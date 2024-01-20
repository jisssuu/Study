//
// 10807번
//import Foundation
//
//let count = Int(readLine()!)!
//var array = [Int]()
//let numbers = readLine()!.components(separatedBy: " ")
//let num = Int(readLine()!)!
//var total = 0
//for i in 0..<count {
//    array.append(Int(numbers[i])!)
//}
//for i in 0..<array.count {
//    if num == array[i] {
//        total += 1
//    }
//}
//print(total)
//
// 고차함수 이용 10807번
//
//import Foundation
//
//let count = Int(readLine()!)!
//let array = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//let num = Int(readLine()!)!
//
//print(array.filter{ $0 == num }.count)
//
//10871번
//
//import Foundation
//let input = readLine()!.components(separatedBy: " ")
//let n = Int(input[0])!
//let x = Int(input[1])!
//let array = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//for i in 0..<n {
//    if array[i] < x {
//        print(array[i])
//    }
//}
//
// 10818번
// 시간초과.
//import Foundation
//let n = Int(readLine()!)!
//let array1 = readLine()!.components(separatedBy: " ").map { Int($0)! }
//print(array1.min()!,array1.max()!)
//
//// 정답 :
//let n = Int(readLine()!)!
//let array = readLine()!.split(separator: " ").map { Int($0)! }
//print(array.min()!,array.max()!)
//
// 2562번
//var max = 0
//var index = 0
//for i in 1..<10 {
//    let input = readLine()!
//    if Int(input)! > max {
//        max = Int(input)!
//        index = i
//    }
//}
//print(max)
//print(index)
//
// 10810번
//import Foundation
//let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//var array = [Int]()
//let n = input[0]
//let m = input[1]
//for _ in 0..<n {
//    array.append(0)
//}
//for _ in 0..<m {
//    let input1 = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//    let start = input1[0]
//    let end = input1[1]
//    let num = input1[2]
//    for i in start...end {
//        array[i-1] = num
//    }
//}
//array.forEach{print($0,terminator: " ")}
//
// 10813번
//import Foundation
//let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//let n = input[0]
//let m = input[1]
//var array = [Int](0...n)
//for _ in 0..<m {
//    let input1 = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//    let first = input1[0]
//    let second = input1[1]
//    array.swapAt(first, second)
//}
//array[1...].forEach{ print($0,terminator: " ")}
//
// 5597번
//var array = [Int](0...30)
//for _ in 0..<28 {
//    let input = Int(readLine()!)!
//    array[input] = 100
//}
//for i in 1..<array.count{
//    if array[i] != 100 {
//        print(i)
//    }
//}
//
// 3052번
//var set = Set<Int>()
//for _ in 0..<10 {
//    let num = Int(readLine()!)!
//    set.insert(num%42)
//}
//print(set.count)
//
// 10811번
//import Foundation
//let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//let n = input[0]
//let m = input[1]
//var array = [Int](0...n)
//for _ in 0..<m {
//    let input1 = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//    var start = input1[0]
//    var end = input1[1]
//    array.replaceSubrange(start...end, with: array[start...end].reversed())
//}
//array[1...].forEach{ print($0,terminator: " ") }
//
// 1546번
//import Foundation
//let n = Int(readLine()!)!
//let score = readLine()!.components(separatedBy: " ").map{ Double($0)! }
//let max = score.max()!
//let fakeScore = score.map{ $0/max * 100 }
//var total = 0.0
//for i in 0..<n {
//  total += fakeScore[i]
//}
//print(total/Double(n))
