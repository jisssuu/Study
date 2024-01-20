import UIKit

// struct
// 구조체와 클래스는 앞글자가 대문자로 사용
struct User {
    var nickname : String
    var age : Int
    
    func information() {
        print("\(nickname) \(age)")
    }
}

// 인스턴스를 생성해야 사용이 가능

var user = User(nickname: "gunter", age: 23)

user.nickname
user.nickname = "ablert"
user.nickname

user.information()


