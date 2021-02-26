let inputNum: String = readLine()!
let firstNum: Int = Int(inputNum)!
var nextNum: Int = firstNum
var count: Int = 0

while true {
    let num1 = nextNum / 10
    let num2 = nextNum % 10

    let sumNum = num1 + num2
    nextNum = (num2 * 10) + (sumNum % 10)

    count += 1
    
    if nextNum == firstNum {
        print(count)
        break
    }
}

// 더하기 사이클의 규칙만 이해하면 쉽게 풀 수 있다. 