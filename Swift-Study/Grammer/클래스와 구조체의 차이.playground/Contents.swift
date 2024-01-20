
/* 클래스와 구조체의 공통점

 - 값을 저장할 프로퍼티 선언 가능
 - 함수적 기능을 하는 메서드 선언 가능
 - 내부값에 .을 사용하여 접근 가능
 - 생성자를 사용해 초기 상태 설정 가능
 - extension을 사용해 기능 확장 가능
 - Protocol을 채택하여 기능 설정 가능

 */

/* 클래스
 
 - 참조 타입
 - ARC로 메모리를 관리 (Heap에 저장하기에)
 - 상속이 가능
 - 타입 캐스팅을 통해 런타임에서 클래스 인스턴스의 타입 확인 가능
 - deinit을 사용하여 클래스 인스턴스의 메모리 할당 해제 가능
 - 같은 클래스 인스턴스를 여러 개의 변수에 할당한 뒤 값 변경 시 모든 변수에 영향을 줌
 
 */

/* 구조체
 
 - 값 타입
 - 구조체 변수를 새로운 변수에 할당할 때마다 새로운 구조체 할당
 - 즉 같은 구조체의 여러 개의 변수에 할당한 뒤 값을 변경시키더라도 다른 변수에 영향을 주지 않음
 
 */

class SomeClass {
    var count: Int = 0
}

var class1 = SomeClass()
var class2 = class1
var class3 = class1

class3.count = 2
class1.count // class1의 값도 변경이 된 것을 확인 가능

struct SomeStruct {
    var count: Int = 0
}

var struct1 = SomeStruct()
var struct2 = struct1
var struct3 = struct1

struct2.count = 3
struct3.count = 4

struct1.count
struct2.count
struct3.count
// 모든 값이 다르다. 따라서 값이 변경되어도 다른 곳에 영향을 주지 않음.

