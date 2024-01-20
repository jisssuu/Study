// 25083번
//print("         ,r'\"7")
//print("r`-_   ,'  ,/")
//print(" \\. \". L_r'")
//print("   `~\\/")
//print("      |")
//print("      |")
//
// 3003번
//
//var array = readLine()!.split(separator: " ").map{ Int($0)! }
//let chess = [1,1,2,2,2,8]
//for i in 0..<array.count {
//    array[i] = chess[i] - array[i]
//}
//array.forEach{print($0,terminator: " ")}
//
// 2444번
//let num = Int(readLine()!)!
//
//for i in 1...num {
//    let star = String(repeating: " ", count: num - i) + String(repeating: "*", count: 2 * i - 1)
//       print(star)
//   }
//
//   for i in 1..<num {
//       let star = String(repeating: " ", count: i) + String(repeating: "*", count: 2 * (num - i) - 1)
//       print(star)
//}
//
// 10812번

//let input = readLine()!.split(separator: " ").map{ Int($0)! }
//var array = [Int](0...input[0])
//for _ in 0..<input[1] {
//    let input1 = readLine()!.split(separator: " ").map{ Int($0)! }
//    var begin = input1[0]
//    var end = input1[1]
//    var mid = input1[2]
//    var changeArray = array[mid...end] + array[begin..<mid]
//    array.replaceSubrange(begin...end, with: changeArray)
//}
//array[1...].forEach{ print($0,terminator: " ") }

// 10988번
//var input = readLine()!.map{String($0)}
//let string = input
//input.reverse()
//let change = input
//if string == change {
//    print(1)
//} else {
//    print(0)
//}

// 1157번
//let string = readLine()!.uppercased()
//var dict : [String:Int] = [:]
//var result : [String] = []
//
//for i in string {
//    if dict[String(i)] == nil {
//        dict[String(i)] = 1 }
//    else {
//        dict[String(i)]! += 1
//    }
//}
//for key in dict.keys {
//    if dict[key] == dict.values.max() {
//        result.append(key)
//    }}
//print(result.count > 1 ? "?" : "\(result[0])")
//
// 4344번
//import Foundation
//let n = Int(readLine()!)!
//
//for _ in 0..<n {
//    let input = readLine()!.split(separator: " ").map{ Double(String($0))! }
//    var avg = 0.0
//    for i in input[1...] {
//        avg += i
//    }
//    avg /= input[0]
//    let high = Double(input[1...].filter { $0 > avg }.count)
//    print(String(format: "%.3f", high / input[0] * 100) + "%")
//}
//
// 2941번
//import Foundation
//var string = readLine()!
//let array = ["c=","c-","dz=","d-","lj","nj","s=","z="]
//
//for i in 0..<array.count {
//    string = string.replacingOccurrences(of: array[i], with: "1")
//}
//print(string.count)
//
// 1316번
//let n = Int(readLine()!)!
//var count = 0
//for _ in 0..<n {
//    let input = readLine()!
//    var array : [Character] = []
//    var result = true
//    for word in input {
//        if !array.contains(word) {
//            array.append(word)
//        } else {
//            if array.last != word {
//               result = false
//            }
//        }
//    }
//    if result {
//        count += 1
//    }
//}
//print(count)
//
// 25206번

//let dict : [String:Double] = ["A+" : 4.5, "A0" : 4.0, "B+" : 3.5, "B0" : 3.0,
//                              "C+" : 2.5, "C0" : 2.0, "D+" : 1.5, "D0" : 1.0, "F" : 0.0]
//var totalScore = 0.0
//var totalGrade = 0.0
//for _ in 0..<20 {
//    let input = readLine()!.split(separator: " ").map{ String($0) }
//    if let score = dict[input[2]] {
//        totalGrade += Double(input[1])! * score
//        totalScore += Double(input[1])!
//    }
//}
//print(totalGrade/totalScore)
