//
// 27866번
//let string = readLine()!.map{String($0)}
//let n = Int(readLine()!)!
//let start = string.startIndex
//print(string[string.index(start, offsetBy: n-1)])
//
//
//let string = readLine()!.map{ String($0) }
//print(string.count)
//
// 9086번
//let n = Int(readLine()!)!
//for _ in 0..<n {
//    let string = readLine()!
//    let start = string.first!
//    let end = string.last!
//    print("\(start)\(end)")
//}
//
// 11654번
//let string = readLine()!
//print(Int(UnicodeScalar(string)!.value))
//
// 11720번
//import Foundation
//let n = Int(readLine()!)!
//let num = readLine()!
//var total = 0
//for i in num {
//    total += Int(String(i))!
//}
//print(total)
//
// 10809번
//let str: String = ""
//let number: Int = Int(UnicodeScalar(str)!.value)
//// 위 두 문장을 다음과 같이 표현 가능: let number: Int = Int(UnicodeScalar("A").value)
//print(number)
//97 //122

//let string = readLine()!
//var array = [Int](repeating: -1, count: 26)
//var index = 0
//for i in string.utf8 {
//    if array[Int(i)-97] == -1 {
//        array[Int(i)-97] = index
//        index += 1
//    }
//    else {
//        index += 1
//    }
//}
//array.forEach{print($0,terminator: " ")}
//
// 2675번
//
//import Foundation
//let n = Int(readLine()!)!
//for _ in 0..<n {
//    let input = readLine()!.components(separatedBy: " ")
//    let num = Int(input[0])!
//    let string = input[1]
//
//    for i in string{
//        for _ in 0..<num {
//           print("\(i)",terminator: "")
//        }
//    }
//    print("")
//}
//
// 1152번
//let string = readLine()!.split(separator: " ")
//print(string.count)
//
// 2908번
//let num = readLine()!.split(separator: " ")
//
//let a = Int(String(num[0].reversed()))!
//let b = Int(String(num[1].reversed()))!
//
//if a > b {
//    print(a)
//} else {
//    print(b)
//}
//
// 5622번
//let string = readLine()!
//var result = 0
//for i in string {
//    switch i{
//    case "A","B","C":
//        result += 3
//    case "D","E","F":
//        result += 4
//    case "G","H","I":
//        result += 5
//    case "J","K","L":
//        result += 6
//    case "M","N","O":
//        result += 7
//    case "P","Q","R","S":
//        result += 8
//    case "T","U","V":
//        result += 9
//    case "W","X","Y","Z":
//        result += 10
//    default:
//        result += 0
//    }
//}
//print(result)
//
// 11718번
//while let string = readLine(){
//    print(string)
//}

