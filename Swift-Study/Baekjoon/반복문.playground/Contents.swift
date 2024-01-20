//
// 2739번
//import Foundation
//
//let input = Int(readLine()!)!
//
//for i in 1..<10 {
//    print( "\(input) * \(i) = \(input * i)")
//}
//
//10950번
//import Foundation
//let input = Int(readLine()!)!
//
//var a : Int
//var b : Int
//for _ in 0..<input {
//    let input2 = readLine()!.components(separatedBy: " ")
//    a = Int(input2[0])!
//    b = Int(input2[1])!
//    print( a + b )
//}
//
// 8393번
//let input = Int(readLine()!)!
//var result : Int = 0
//
//for i in 0...input {
//    result += i
//}
//print(result)
//
// 25304번
//import Foundation
//
//let totalPrice = Int(readLine()!)!
//let buyType = Int(readLine()!)!
//var price : Int
//var count : Int
//var buyPrice = 0
//for _ in 0..<buyType {
//    let input = readLine()!.components(separatedBy: " ")
//    price = Int(input[0])!
//    count = Int(input[1])!
//    buyPrice += price * count
//}
//if totalPrice == buyPrice {
//    print("Yes")
//} else {
//    print("No")
//}
//
// 25314번
//import Foundation
//
//let input = Int(readLine()!)!
//let count = input / 4
//var result = ""
//for _ in 0..<count {
//    result += "long "
//}
//result += "int"
//
//print(result)
//
//15552번
// 라이노님이 만드신 FileIO 클래스
//
//import Foundation
//
//final class FileIO {
//    private let buffer:[UInt8]
//    private var index: Int = 0
//    init(fileHandle: FileHandle = FileHandle.standardInput) {
//        buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
//    }
//    @inline(__always) private func read() -> UInt8 {
//        defer { index += 1 }
//        return buffer[index]
//    }
//    @inline(__always) func readInt() -> Int {
//        var sum = 0
//        var now = read()
//        var isPositive = true
//        while now == 10
//                || now == 32 { now = read() } // 공백과 줄바꿈 무시
//        if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
//        while now >= 48, now <= 57 {
//            sum = sum * 10 + Int(now-48)
//            now = read()
//        }
//        return sum * (isPositive ? 1:-1)
//    }
//    @inline(__always) func readString() -> String {
//        var now = read()
//        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
//        let beginIndex = index-1
//        while now != 10, now != 32, now != 0 { now = read() }
//        return String(bytes: Array(buffer[beginIndex..<(index-1)]), encoding: .ascii)!
//    }
//    @inline(__always) func readByteSequenceWithoutSpaceAndLineFeed() -> [UInt8] {
//        var now = read()
//        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
//        let beginIndex = index-1
//        while now != 10, now != 32, now != 0 { now = read() }
//        return Array(buffer[beginIndex..<(index-1)])
//    }
//}
// 15552 정답 코드
// 위 코드의 클래스 부분 + 아래 코드
//
//let fio = FileIO()
//let n = fio.readInt()
//for _ in 0..<n {
//    var a = fio.readInt() + fio.readInt()
//    print(a)
//}
//
// 11021번
//import Foundation
//
//let input = Int(readLine()!)!
//var a = 0
//var b = 0
//for i in 1...input {
//    let input2 = readLine()!.components(separatedBy: " ")
//    a = Int(input2[0])!
//    b = Int(input2[1])!
//
//    print("Case #\(i): \(a+b)")
//}
//
// 11022번
//import Foundation
//
//let input = Int(readLine()!)!
//var a = 0
//var b = 0
//for i in 1...input {
//    let input2 = readLine()!.components(separatedBy: " ")
//    a = Int(input2[0])!
//    b = Int(input2[1])!
//
//    print("Case #\(i): \(a) + \(b) = \(a+b)")
//}
//
// 2438번
//let input = Int(readLine()!)!
//
//var star = ""
//
//for _ in 0..<input {
//    star += "*"
//    print(star)
//}
//
// 2439번
//let input = Int(readLine()!)!
//
//for i in 1...input {
//    var space = ""
//    var star = ""
//    for _ in 0..<input-i {
//        space += " "
//    }
//    for _ in 0..<i {
//        star += "*"
//    }
//    print(space + star)
//}
//
// 10952번
//import Foundation
//while true {
//    let input = readLine()!.components(separatedBy: " ")
//    let a = Int(input[0])!
//    let b = Int(input[1])!
//
//    if a == 0 && b == 0 {
//        break
//    }
//    else {
//        print(a+b)
//    }
//}
// 10951번
//import Foundation
//
//while let input = readLine(){
//    let num = input.components(separatedBy: " ")
//    let a = Int(num[0])!
//    let b = Int(num[1])!
//    print(a+b)
//}

