// 빈 배열 생성
var selfNumbers: [Int] = []
for n in 0...10026 {
    selfNumbers.insert(0, at: n)
}

// 셀프 넘버가 아닌 인덱스에 1넣기
for n in 1...9999 {
    let index = getPlusAllNumber(number: String(n))
    
    if index < 10000 && selfNumbers[index] == 0 {
        selfNumbers[index] = 1
    }
}

// 셀프 넘버 출력
for n in 1...9999 {
    if selfNumbers[n] == 0{
        print("\(n)")
    }
}

// 숫자 전부 더한 합 출력
func getPlusAllNumber(number: String) -> Int {
    let numbers = Array(number)
    var sum = Int(number)!
    
    for n in numbers {
       sum += Int(String(n))!
    }

    return sum
}

/*
처리 속도가 오래걸려서 실패할 줄 알았는데 성공했다 ...
분명히 이 방법보다 더 빠른 방법이 있을거 같은데
내 머리로는 이게 최선인거 같다 .. 😩
*/