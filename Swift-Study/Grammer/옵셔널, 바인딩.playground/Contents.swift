// 옵셔널 = nil : 값이 있을수도, 없을수도 있다.

var name : String?

var optionalName : String? = "Gunter"

//Optional을 바인딩하여야 함.
print(optionalName)

// requiedName에는 옵셔널 값이 들어갈 수 없다.
// var requiredName : String = optionalName


// 명시적 해제

var number: Int? = 3
print(number)
// !를 붙여 optional를 강제 바인딩
// 강제로 바인딩을 하는 것이기에 매우 불안
print(number!)

if let result = number {
    print(result)
} else {
    
}

func test() {
    let number: Int? = 5
    guard let result = number else { return }
    print(result)
}

test()

// 묵시적 해제
// 컴파일러가 자동으로 해제

let value: Int? = 6
if value == 6 {
    print("value 는 6")
} else {
    print("value는 6이 아니다.")
}

let string = "12"
var stringToInt: Int! = Int(string)
print(stringToInt + 1)
// !가 붙으면, 묵시적으로 옵셔널이 해제
