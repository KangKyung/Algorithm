// 숫자N을 입력받는다
let endRange = Int(readLine()!)!

// 한수의 개수
var count = 0

// 한수의 개수를 센다
for num in 1...endRange {
    let numbers = Array("\(num)")
    var commonDifference = 10
    var isArithmeticalSequence = true
    
    for (index, _) in numbers.enumerated() {
        // 끝에 도달하면 종료한다
        if index == numbers.count - 1 {
            commonDifference = 10
            break
        }
        
        if commonDifference == 10 {
            commonDifference = getCommonDifference(array: numbers, index: index)
        } else {
            if commonDifference != getCommonDifference(array: numbers, index: index) {
                isArithmeticalSequence = false
                commonDifference = 10
                break
            }
        }
    }
    
    if isArithmeticalSequence {
        count += 1
    }
}

print(count)

// 공차를 구한다
func getCommonDifference(array: [Character], index: Int) -> Int {
    return Int(String(array[index + 1]))! - Int(String(array[index]))!
}

/*
1~9는 항상 아니라고 생각했는데, 항상 맞다는 사실에 놀랐다. (예제 출력에 1이 없었으면 틀렸을 것이다 ..)
공차를 영어로 표현하면 뭐가되는지 몰랐는데, 생각보다 단순한 단어라서 놀랐다.
'끝에 도달하면 종료한다' 저 부분을 좀 더 깔끔하게 고치고싶은데
방법이 딱! 하고 떠오르질 않는다 ... 저건 좀 더 고민을 해봐야 할 부분이다.
*/