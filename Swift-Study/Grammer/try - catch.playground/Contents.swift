// swift에서는 에러처리에 발생(throwing), 감지(catching), 전파(propagating), 조작(manipulating) 지원
/*
 오류를 처리하는 4가지 방법
 - 함수에서 발생한 오류를 해당 함수를 호출한 코드에 전파
 - do catch 구문으로 처리
 - 옵셔널 값으로 오류를 처리
 - 오류가 발생하지 않을거란 확신으로 해결
*/


enum PhoneError: Error {
    case unknown
    case batteryLow(batteryLevel: Int)
}

//throw PhoneError.batteryLow(batteryLevel: 20) 에러 발생

func checkPhoneBatteryStatus(batteryLevel: Int) throws -> String {
    guard batteryLevel != -1 else { throw PhoneError.unknown }
    guard batteryLevel > 20 else { throw PhoneError.batteryLow(batteryLevel: 20)}
    return "배터리 상태가 정상입니다."
}

do {
    try checkPhoneBatteryStatus(batteryLevel: 20)
} catch PhoneError.unknown {
    print("알 수 없는 오류입니다.")
} catch PhoneError.batteryLow(let baterryLevel) {
    print("배터리 전원 부족 남은 배터리 : \(baterryLevel)%")
} catch {
    print("그 외 오류 발생  \(error)" )
}

// try? 사용

let status = try? checkPhoneBatteryStatus(batteryLevel: 30)
print(status)   // Optional("배터리 상태가 정상입니다.")

let status2 = try! checkPhoneBatteryStatus(batteryLevel: 30)
print(status2) // 배터리 상태가 정상입니다.
// 만약 try!를 사용했지만, 오류가 발생하면 프로그램이 종료된다.
