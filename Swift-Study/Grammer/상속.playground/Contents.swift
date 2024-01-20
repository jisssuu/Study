
// 상속 : 부모가 자식에게 재산을 물려주는 행위
// override는 재정의 !

class Vehicle {
    var currentSpeed = 0.0
    // final var currentSpeed = 0.0 final를 사용하면 재정의가 불가함.
    var description:String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        print("speaker ON")
    }
}
// Bicycle은 Vehicle 클래스를 상속받아 Vehicle의 모든 기능을 사용 가능
class Bicycle: Vehicle {
    var hasBasket = false
}

var bicycle = Bicycle()
bicycle.currentSpeed
bicycle.currentSpeed = 15.0
bicycle.currentSpeed

class Train : Vehicle {
    override func makeNoise() { // Super 클래스의 함수를 재정의하는 것
        super.makeNoise() // super 키워드를 사용함으로, super 클래스의 함수를 한번 실행함
        print("choo choo")
    }
}

let train = Train()
train.makeNoise()

// 프로퍼티를 오버라이딩하는 방법

class Car : Vehicle {
    var gear = 1
    override var description: String{
        return super.description + "in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 30.0
car.gear = 2
print(car.description)

class AutomaticCar : Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)")
