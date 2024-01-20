//1330번
//import Foundation
//
//let input = readLine()!.components(separatedBy: " ")
//
//let A = Int(input[0])!
//let B = Int(input[1])!
//
//if A > B {
//    print(">")
//}
//else if A < B {
//    print("<")
//}
//else if A == B {
//    print("==")
//}
//
// 9498번
//import Foundation
//
//let input = readLine()!
//
//var score = Int(input)!
//
//if score > 89 {
//    print("A")
//} else if score > 79 {
//    print("B")
//} else if score > 69 {
//    print("C")
//} else if score > 59 {
//    print("D")
//} else {
//    print("F")
//}
//
// 2753번
//import Foundation
//
//let input = readLine()!
//
//var year = Int(input)!
//
//if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 {
//    print(1)
//} else {
//    print(0)
//}
//
// 14681번
//let x = Int(readLine()!)!
//let y = Int(readLine()!)!
//
//if x > 0 && y > 0 {
//    print(1)
//} else if x < 0 && y > 0 {
//    print(2)
//} else if x < 0 && y < 0 {
//    print(3)
//} else if x > 0 && y < 0 {
//    print(4)
//} else {
//    print("error")
//}
//
// 2884번
//import Foundation
//
//let input = readLine()!.components(separatedBy: " ")
//
//var hour = Int(input[0])!
//var minute = Int(input[1])!
//
//if minute - 45 < 0 {
//    minute += 15
//    if hour - 1 < 0 {
//        hour = 23
//    } else {
//        hour -= 1
//    }
//} else {
//    minute -= 45
//}
//print(hour, minute)
//
// 2525번
//import Foundation
//
//let input = readLine()!.components(separatedBy: " ")
//let time = Int(readLine()!)!
//var hour = Int(input[0])!
//var minute = Int(input[1])!
//
//minute += time
//
//while true {
//    if minute >= 60 {
//        minute -= 60
//        hour += 1
//        if hour > 23 {
//            hour = 0
//        }
//    }
//    if minute < 60 {
//        break
//    }
//}
//print(hour,minute)
//
//2480번
//import Foundation
//
//let input = readLine()!.components(separatedBy: " ")
//
//var firstDice = Int(input[0])!
//var secondDice = Int(input[1])!
//var thirdDice = Int(input[2])!
//var biggerDice = Int(input.max()!)!
//var price : Int
//
//if firstDice == secondDice && secondDice == thirdDice {
//    price = 10000 + firstDice * 1000
//} else if firstDice == secondDice || firstDice == thirdDice || secondDice == thirdDice {
//    if firstDice == secondDice || firstDice == thirdDice {
//        price = 1000 + firstDice * 100
//    } else {
//        price = 1000 + secondDice * 100
//    }
//} else {
//    price = biggerDice * 100
//}
//print(price)
