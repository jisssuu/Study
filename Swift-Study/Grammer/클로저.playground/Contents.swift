/* 클로저
 - 코드에서 전달 및 사용할 수 있는 독립 기능 블록.
 - 일급 객체의 역할을 할 수 있음
 
 { (매개 변수) -> 리턴 타입 in (클로저 헤드)
    실행구문 (클로저 바디)
 
 }
 */

let hello = { () -> () in
    print("hello")
}

hello()

let hello2 = { (name:String) -> String in
    return "Hello, \(name)"
}
// hello2(name: "Gunter")  일반함수처럼 사용하면 오류 발생
hello2("Gunter") // 따라서, 이와 같이 사용

func doSomething(closure:() -> ()) {
    closure()
}
doSomething(closure: {() -> () in
    print("hello")
})

doSomething() {
    print("hello2")
}
doSomething {
    print("hello3")
}
func doSomething2() -> () -> () {
    return { () -> () in
        print("hello4")
    }
}

doSomething2()()

func doSomething2(success: () -> (), fail: () -> ()) {
    
}
doSomething2 {
    <#code#>
} fail: {
    <#code#>
}

func doSomething3(closure:(Int,Int,Int) -> Int) {
    closure(1,2,3)
}
doSomething3(closure: { (a,b,c) in
    return a+b+c
})
doSomething3(closure: {
    return $0+$1+$2
})
doSomething3(closure: {
    $0+$1+$2
})
doSomething3(){
    $0+$1+$2
}
doSomething3 {
    $0+$1+$2
}
// 길었던 클로저 함수를 간결하게 사용가능. 생략을 잘 외울 것
