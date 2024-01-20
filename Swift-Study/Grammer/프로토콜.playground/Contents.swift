// 프로토콜 : 특정 역할을 하기 위한 메서드, 프로퍼티, 기타 요구사항 등의 청사진


protocol SomeProtocol {
    
}
protocol SomeProtocol2 {
    
}

struct SomeStructure: SomeProtocol, SomeProtocol2 {
    
}

// 클래스에도 protocol을 채택할 수 있는데, super class를 상속하면서 protocol을 채택하기 위해선, super class 먼저 입력 후 protocol 입력

protocol FirstProtocol {
    var name: Int {get set}
    var age: Int{ get }
}

protocol AnotherProtocol {
    static var someTypeProperty:Int { get set }
}

protocol FullyNames {
    var fullName: String { get set }
    func printFullName()
}

struct Person : FullyNames {
    var fullName: String
    func printFullName() {
        print(fullName)
    }
}

protocol SomeProtocol3 {
    func somtTypeMethod()
}

protocol SomeProtocol4 {
    init(someParameter: Int)
}

protocol SomeProtocol5 {
    init()
}

class SomeClass : SomeProtocol5 {
    required init() { // struct 구조체에서는 사용 하지 않음. 클래스에서는 required가 필요. 만약 class 자체가 상속받을 수 없는 Final 클래스면 required를 사용하지 않아도 됨.
        
    }
}
