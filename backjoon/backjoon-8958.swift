let repeatCount = Int(readLine()!)!
var scoreStringArr: [Character] = []

for _ in 1...repeatCount {
    scoreStringArr = Array(readLine()!)
    var score = 0
    var totalScore = 0

    for char in scoreStringArr {
        if char == "O" {
            score += 1
            totalScore += score
        } else {
            score = 0
        }
    }

    print(totalScore)
}

// 규칙만 확실히 이해하면 어렵지 않은 문제다.