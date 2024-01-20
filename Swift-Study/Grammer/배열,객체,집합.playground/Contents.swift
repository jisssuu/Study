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
