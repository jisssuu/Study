// 열거형 : 연관성이 있는 값을 모아 놓은 것

enum CompassPoint:String { // 명시값을 가지기 위해선 옆과 같이 사용
    case north = "북"
    case south = "남"
    case east = "동"
    case west = "서"
    // case north, south, east, west 로도 표현 가능
}

var direction = CompassPoint.east
direction = .west  // direction 변수가 CompassPoint 형태인 것을 추론하기에 이름을 명시하지 않고 .을 입력시 자동

// 열거형은 switch 구문과 같이 사용시 다양하게 이용 가능

switch direction {
case .north:
    print(direction.rawValue)
case .south:
    print(direction.rawValue)
case .west:
    print(direction.rawValue)
case .east:
    print(direction.rawValue)
}

// direction.rawValue direction의 원시값을 출력하게 하는 방법

let direction2 = CompassPoint(rawValue: "남") // south 출력

enum PhoneError {
    case unknown
    case batteryLow(String) // 연관값을 주는 방법
}

let error = PhoneError.batteryLow("배터리가 곧 방전됩니다.")
//batteryLow("배터리가 곧 방전됩니다.") 출력이 된다.

switch error {
case .batteryLow(let message):
    print(message)
case .unknown:
    print("알 수 없는 에러입니다.")
}
