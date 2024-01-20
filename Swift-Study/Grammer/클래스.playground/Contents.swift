import UIKit

class Dog {
    var name: String = ""
    var age: Int = 0
    
    init(){ //클래스 구조체 또는 열거형의 인스턴스를 사용하기 위한 설정 과정
        
    }
    
    func introduce() {
        print("name: \(name), age: \(age)")
    }
}

var dog = Dog()
dog.name = "Coco"
dog.age = 3
dog.name
dog.age

dog.introduce()
