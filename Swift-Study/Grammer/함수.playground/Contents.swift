// 함수

// 입력값 a 와 b가 필요하고, return의 타입이 Int인 함수
func sum(a: Int, b : Int) -> Int {
    return a+b
}
sum(a: 5, b: 3)

// 입력값은 필요 없고, return의 타입이 String인 함수
func hello() -> String {
    return "hello"
}
hello()

// 입력값도 필요없고, return도 하지 않는 함수 (return 타입을 생략해도 되고, Void로 지정하면 됨)
func printName(){
}

func greeting(friend: String, me:String = "gunter") {
    print("Hello, \(friend)! I'm \(me)")
}
greeting(friend:"Albert")

func sendMessage(from myName: String, to name: String) -> String {
    return "Hello \(name)! I'm \(myName)"
}
sendMessage(from: "Gunter", to: "Json")

func sendMessage(_ name: String) -> String {
    return "Hello \(name)"
}
sendMessage("권태완")

// 다중 매개변수를 사용하여, 여러명을 동시에 가능
func sendMessage(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)"
}

sendMessage(me: "Gunter", friends: "Json","Albert","Stella")
