/* assert
 - 특정 조건을 체크하고, 조건이 성립되지 않으면 메세지 출력
 - assert 함수는 디버깅 모드에서만 동작, 주로 디버깅 중 조건의 검증을 위해 사용
 */

/* guard 문
 - 무언가를 검사하여 그 다음에 오는 코드를 실행할지 말지 결정 하는 것
 - guard 문에 주어진 조건문이 거짓일 때 구문이 실행됨.
 
 */

var value = 0
assert(value == 0)

value = 2
// assert(value == 0, "값이 0이 아닙니다.")  에러가 나오면서 문자열 출력

func guardTest(value : Int) {
    guard value == 0 else { return }
    print("안녕하세요")
}

guardTest(value: 0) // 안녕하세요 출력

guardTest(value: 2) // 아무것도 출력이 되지 않음.


func guardTest1(value : Int?) {
    guard let value = value else { return }
    print(value)
}

guardTest1(value: 2) // nil이 아니므로 옵셔녈을 벗긴 값 2 출력
guardTest1(value: nil) // nil이므로 guard문에 걸려 print 불가
