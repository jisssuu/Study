// 저장 프로퍼티 ( 프로퍼티를 사용하는 가장 쉬운 방법)

struct Dog {
    var name: String
    let gender: String
}

var dog = Dog(name: "gunter", gender: "Male")
print(dog)

//저장 프로퍼티의 값을 변경
dog.name = "권태완"
// dog.gender = "female" 오류가 발생. let이므로 변경이 불가

let dog2 = Dog(name: "gunter", gender: "Male")
// dog2.name = "권태완" 오류가 발생. dog2를 선언할 때 상수로 선언을 하였으므로, 값 변경이 불가

class Cat {
    var name: String
    let gender : String
    
    init(name:String, gender: String) {
        self.name = name
        self.gender = gender
    }
}

let cat = Cat(name: "json", gender: "male")
cat.name = "gunter" // 값이 잘 변경된다.

// struct 는 value 타입이기에, 상수로 선언하게 되면, 변수로 선언한 것이여도 변경이 불가
// class 는 참조 타입이기에, 상수로 선언하게 되어도, 변수로 선언한 값은 변경이 가능
// 물론 상수로 선언한 gender는 변경 불가

// 계산 프로퍼티는 구조체, 클래스, 열거체 모두 사용 가능

struct Stock {
    var averagePrice : Int
    var quantity : Int
    var purchasePrice: Int {
        get {
            return averagePrice * quantity
        }
        set(newPrice) { // set에 매개변수를 설정하지 않을 경우, newValue로 default값이 설정된다.
            averagePrice = newPrice / quantity
        }
    }
}

var stock = Stock(averagePrice: 2300, quantity: 3) // averagePrice를 2300원, quantity를 3으로 설정함에따라
print(stock)
stock.purchasePrice // averagePrice * quantity 값인 6900이 purchasePrice가 된다.
stock.purchasePrice = 3000 // 하지만 여기서 purchasePrice를 3000원으로 변경을 하게 되면
stock.averagePrice // set에 따라 newPrice가 3000이 되며, 이를 quantity로 나눈 값인 1000이 된다.


// 프로퍼티 옵저버
// 저장, 오버라이딩된 저장, 오버라이딩된 계산 프로퍼티에만 사용 가능

class Account {
    var credit: Int = 0 {
        willSet {   // 변경되기 전 실행됨.
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
        }
        didSet {    // 변경된 후 실행됨.
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
        }
    }
}

var account = Account()
account.credit = 1000

struct SomeStructure {
    static var storedTypeProperty = "Some value"
    
    static var computedTypeProperty: Int {
        return 1
    }
}

SomeStructure.computedTypeProperty
SomeStructure.storedTypeProperty
SomeStructure.storedTypeProperty = "hello"
SomeStructure.storedTypeProperty
