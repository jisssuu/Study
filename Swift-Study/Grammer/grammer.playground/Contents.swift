import UIKit

// 상수 : 변하지 않는 일정한 값
// let 상수명: 데이터타입 = 값
let a: Int = 100
// a = 200 let으로 선언한 상수의 값을 변경할 시 오류 발생

// 변수 : 변할수 있는 값
// var 상수명: 데이터타입 = 값
var b : Int = 200
b = 300 // var로 선언한 변수의 값은 변경이 가능

// 배열

var numbers:[Int] = []
// var numbers: Array<Int> = Array<Int> ()
numbers.append(1)
numbers.append(2)
numbers.append(3)

numbers[0]
numbers[1]

// 배열 사이에 추가
numbers.insert(4, at: 2)

// 배열 내 제거
numbers.remove(at: 2)

// Dictionary

var dic : [String: Int] = ["권태완":1]

// 객체 내 추가
dic["김철수"] = 3
dic["김민지"] = 5

// 객체 내 값 변경
dic["김민지"] = 6

// 객체 내 제거
dic.removeValue(forKey: "권태완")
dic

// Set

// Set는 따로 축약 버전이 없음. 무조건 이런식으로 선언
var set: Set = Set<Int>()

set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30)
set // Set는 순서가 없고, 중복으로 추가가 불가

// Set 내 제거
set.remove(20)

// 함수

// 입력값 a 와 b가 필요하고, return의 타입이 Int인 함수
func sum(a: Int, b : Int) -> Int {
    return a+b
}
sum(a: 5, b: 3)

// 입력값은 필요 없고, return의 타입이 String인 함수
func hello() -> String {
    return "hello"
}
hello()

// 입력값도 필요없고, return도 하지 않는 함수 (return 타입을 생략해도 되고, Void로 지정하면 됨)
func printName(){
}

func greeting(friend: String, me:String = "gunter") {
    print("Hello, \(friend)! I'm \(me)")
}
greeting(friend:"Albert")

func sendMessage(from myName: String, to name: String) -> String {
    return "Hello \(name)! I'm \(myName)"
}
sendMessage(from: "Gunter", to: "Json")
