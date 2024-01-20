import UIKit

// 1. swift 조건표현

var isDarkModeOn : Bool = true

if isDarkModeOn == true {
    print("true")
}
if isDarkModeOn != false {
    print("true")
}
if isDarkModeOn {
    print("true")
}
if !isDarkModeOn {
    print("")
}

// 2. for .. in 반복문
var myArray : [Int] = [1,2,3,4,5,6,7,8,9]

for item in myArray { // myArray 내부의 숫자 모두 출력
    print(item)
}
for item in myArray where item > 5 { // 5보다 큰 6부터 출력
    print(item)
}
for item in myArray where item % 2 == 0 { // 짝수인 숫자만 출력
    print(item)
}

// 3. enum 표현 방법

enum School {
    case elementary
    case middle
    case high
    // case elementary, middle, high 로 표현 가능
}
let yourSchool = School.elementary
print(yourSchool)

enum Grade : Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.first
print(yourGrade)

enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    
    func get() -> String {
        switch self {
        case .elementary(let name):
            return name
        case .middle(let name):
            return name
        }
    }
}
let yourMiddleSchoolName = SchoolDetail.middle(name: "Geomam")
print(yourMiddleSchoolName) // middle(name: "Geomam") 으로 출력
print(yourMiddleSchoolName.get()) // Geomam 으로 출력

// 4. for 반복문 표현

for i in 0...5 {
    print(i)
}
for i in 0..<5 {
    print(i)
}
for i in 0...5 where i % 2 == 0 {
    print(i)
}

var randomInts:[Int] = []

for _ in 0..<25 { //만약 i와 같은 변수를 지정해주지 않으려면, _ 사용
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}
print(randomInts)

// 5. Optional 변수 언랩핑

var someVariable :Int?

if someVariable == nil {
    someVariable = 90
}
if let otherVariable = someVariable {
    print("값 존재 : \(otherVariable)")
}
else {
    print("값 존재하지 않음")
}
someVariable = nil

let myValue = someVariable ?? 10
print(myValue)

var emptyVariable : Int?


myFunction(parameter: myValue)
myFunction(parameter: emptyVariable)

func myFunction(parameter: Int?) {
    guard let unWrappedParam = parameter else {
        return
    }
    print(unWrappedParam)
}

// 6. Class 와 Struct의 차이
struct YoutuberStruct {
    var name : String
    var subscribersCount : Int
}
var devJeong = YoutuberStruct(name: "jeongDaeRi", subscribersCount: 99999)
var devClone = devJeong

print(devClone.name)
devClone.name = "hoho"

print(devJeong.name)    // devClone은 devJeong의 데이터를 복사하여 가져온 것이므로, devJeong의 값은 변하지 않음.
print(devClone.name)

class Youtuber {
    var name : String
    var subscribersCount : Int
    
    init(name : String , subscribersCount : Int) {
        self.name = name
        self.subscribersCount = subscribersCount
    }
}

var jeongDaeRi = Youtuber(name: "jeongDaeRi", subscribersCount: 9999999)
var me = jeongDaeRi
print(me.name)

me.name = "Jang"
print(me.name)
print(jeongDaeRi.name)      // me는 struct와 달리 값을 변경하면, jeongDaeRi도 변경이 된다.
