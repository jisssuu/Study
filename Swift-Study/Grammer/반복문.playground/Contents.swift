
// for 루프상수 in 순회대상

for i in 1...4 {
    print(i)
}

let array = [1,2,3,4,5]

for i in array {
    print(i)
}

// while

var number = 5

while number < 10 {
    number += 1
}
number

// repeat while 반복문

var x = 6

// repeat while문은 조건을 넣지만 무조건 repeat의 내용이 한번은 실행된다.
repeat {
    x += 2
} while x < 5
print(x)
