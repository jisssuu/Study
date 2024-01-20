
// if

let age = 20

if age < 19 {
    print("미성년자 입니다.")
}

if age < 19 {
    print("미성년자")
} else {
    print("성인")
}

let animal = "cat"

if animal == "dog" {
    print("강아지")
} else if animal == "cat"{
    print("고양이")
} else {
    print("해당 동물 없음")
}

// switch

let color = "green"

switch color {
case "blue":
    print("파란색")
case "green":
    print("초록색")
case "yellow":
    print("노란색")
default :
    print("해당 색 없음")
}

let temperature = 30

// 비교 패턴에서 범위 연산자를 넣어도 가능
switch temperature {
case -20...9:
    print("겨울")
case 10...14 :
    print("가을")
case 15...25 :
    print("봄")
case 26...35 :
    print("여름")
default:
    print("이상 기후")
}
